#!/usr/bin/env bash
# --------------------------------------------------------------
# Install Docker in ROOTLESS mode (no sudo/root required) so the
# jasmin-picnic3 toolchain image can be built and run on a machine
# where you only have a regular user account (e.g. bench-mpi-8700K).
#
# This wraps Docker's own official rootless installer
# (https://get.docker.com/rootless) and adds the prerequisite checks
# up front, because on a locked-down machine the install can silently
# depend on things only an admin can set up:
#   - newuidmap / newgidmap (from the "uidmap" package) must already
#     be installed - these need root to install if missing.
#   - your user needs an entry in /etc/subuid and /etc/subgid (a
#     range of UIDs/GIDs delegated to you) - also normally requires
#     root/an admin to add, UNLESS your account already has one
#     (common on Ubuntu: adduser assigns these automatically when the
#     account is created, so this is often already fine without
#     anyone doing anything extra).
#   - to keep the rootless docker daemon running after you log out,
#     `loginctl enable-linger $USER` needs to have been run - again
#     usually admin-only, but frequently already enabled by default.
#
# This script does NOT require root itself. If a prerequisite is
# genuinely missing and needs root, it will tell you exactly what to
# ask your admin to run - it won't silently fail partway through.
#
# Usage:
#   ./install-docker-rootless.sh          # install + prerequisite report
#   ./install-docker-rootless.sh check    # only run the prerequisite check
# --------------------------------------------------------------
set -euo pipefail

log()  { printf '>>> %s\n' "$*"; }
warn() { printf '!!! %s\n' "$*" >&2; }

if command -v docker >/dev/null 2>&1 && docker info >/dev/null 2>&1; then
	log "docker is already installed and working here - nothing to do."
	docker version
	exit 0
fi

log "Checking rootless-Docker prerequisites (no root needed for this check)..."

missing=0

if ! command -v newuidmap >/dev/null 2>&1 || ! command -v newgidmap >/dev/null 2>&1; then
	warn "newuidmap/newgidmap not found (from the 'uidmap' package)."
	warn "  -> ask an admin to run:  sudo apt-get install -y uidmap    (Debian/Ubuntu)"
	warn "                       or: sudo yum install -y shadow-utils  (RHEL/CentOS/Fedora)"
	missing=1
fi

if ! grep -q "^$(id -un):" /etc/subuid 2>/dev/null; then
	warn "No /etc/subuid entry for user '$(id -un)'."
	warn "  -> ask an admin to run: sudo usermod --add-subuids 200000-265535 $(id -un)"
	missing=1
fi

if ! grep -q "^$(id -un):" /etc/subgid 2>/dev/null; then
	warn "No /etc/subgid entry for user '$(id -un)'."
	warn "  -> ask an admin to run: sudo usermod --add-subgids 200000-265535 $(id -un)"
	missing=1
fi

if [ "$missing" -eq 1 ]; then
	warn ""
	warn "One or more prerequisites above need an admin to set up once."
	warn "Nothing here can be worked around from a plain user account -"
	warn "these are kernel-level UID/GID delegation requirements, not a"
	warn "Docker limitation. Send the exact commands above to whoever"
	warn "has sudo on this machine, then re-run this script."
	if [ "${1:-}" = "check" ]; then
		exit 1
	fi
	warn ""
	warn "Continuing with the install anyway - dockerd-rootless-setuptool.sh"
	warn "will do its own, more thorough check next and may refuse to start."
fi

if [ "${1:-}" = "check" ]; then
	log "All prerequisites look OK."
	exit 0
fi

log "Installing Docker (rootless mode) via https://get.docker.com/rootless ..."
curl -fsSL https://get.docker.com/rootless | sh

log "Rootless Docker installed. Add this to your ~/.bashrc (or ~/.profile),"
log "then open a new shell (or 'source ~/.bashrc') before running any"
log "'make' target that touches Docker:"
echo ""
echo '    export PATH=$HOME/bin:$PATH'
echo '    export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock'
echo ""
log "Then start the rootless daemon (systemd user service, survives login):"
echo ""
echo '    systemctl --user enable docker'
echo '    systemctl --user start docker'
echo '    loginctl enable-linger '"$(id -un)"'   # keeps it running after logout - needs an admin if this errors'
echo ""
log "Verify with: docker info    (should succeed with no sudo)"
log "Once that works, every 'make' target in this artifact's Makefile"
log "(compile-*, ct-*, check, docker-build, ...) works exactly as-is -"
log "the docker CLI is identical in rootless mode, only the daemon"
log "connection differs, via DOCKER_HOST above."
