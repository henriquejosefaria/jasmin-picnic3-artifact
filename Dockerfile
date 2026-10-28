####################################################################
# JASMIN-PICNIC3 toolchain image
#
# Builds, from source, everything needed to compile the Jasmin code
# in code/ and check the EasyCrypt proofs in proof/:
#   - jasminc / jasmin-ct   (built from the exact commit vendored
#                            directly at proof/jasmin-compiler - plain
#                            files, not a submodule - so the compiler
#                            version matches the eclib theories the
#                            proofs already reference)
#   - easycrypt             (latest release, via opam)
#   - z3                    (SMT solver configured in
#                            proof/easycrypt.project)
#
# Build (always force amd64: the picnic3 code is x86-64/AVX2, and
# jasminc emits AVX2 assembly regardless of host arch, so running
# this under emulation on Apple Silicon is fine for compiling):
#
#   docker build --platform linux/amd64 --tag jasmin-picnic3 .
#
# Run, with the live repo bind-mounted so edits show up without
# rebuilding the image:
#
#   docker run --platform linux/amd64 -it \
#       -v "$PWD":/usr/src/JASMIN-PICNIC3 \
#       jasmin-picnic3 bash
####################################################################

FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# --------------------------------------------------------------
# System packages needed to: run opam, build jasmin-compiler's
# OCaml dependencies (zarith, apron, conf-ppl, camlidl), and give
# Why3/EasyCrypt a working SMT solver.
# --------------------------------------------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    opam \
    git \
    m4 \
    unzip \
    bubblewrap \
    pkg-config \
    build-essential \
    autoconf \
    rsync \
    python3 \
    ca-certificates \
    curl \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    libppl-dev \
    zlib1g-dev \
    libpcre2-dev \
    libsqlite3-dev \
    libssl-dev \
    libffi-dev \
    z3 \
 && rm -rf /var/lib/apt/lists/*

# --------------------------------------------------------------
# opam: bare init (no compiler yet), then an *empty* switch so the
# solver can pick one OCaml version that satisfies both jasmin's
# and easycrypt's constraints at once, once we ask for both.
# --disable-sandboxing: bwrap sandboxing tends to fail under Docker.
# --------------------------------------------------------------
RUN opam init --bare --disable-sandboxing -y
RUN opam switch create jasmin-ec --empty -y

# Route every subsequent RUN through this switch's environment.
SHELL ["opam", "exec", "--", "/bin/bash", "-c"]

WORKDIR /usr/src

# --------------------------------------------------------------
# Jasmin: build from the exact commit vendored directly in this repo
# (proof/jasmin-compiler - plain committed files, not a git submodule,
# so this Dockerfile builds with nothing but a git clone, no
# `git submodule update` step required), NOT from the public opam
# package, so jasminc/jasmin-ct match the eclib theories
# proof/easycrypt.project points at.
# --------------------------------------------------------------
COPY proof/jasmin-compiler /usr/src/jasmin-compiler
RUN opam pin -yn add jasmin /usr/src/jasmin-compiler

# --------------------------------------------------------------
# EasyCrypt: latest release from GitHub via opam.
# --------------------------------------------------------------
RUN opam pin -yn add easycrypt https://github.com/EasyCrypt/easycrypt.git

# Install both together so opam's solver chooses one OCaml version
# that satisfies both sets of constraints.
# --no-depexts: we already installed the required system libraries
# via apt-get above; skip opam's own (occasionally unreliable under
# Docker) detection of what's present on the system.
RUN opam install -y --no-depexts jasmin easycrypt

# Point Why3 (EasyCrypt's SMT backend) at the provers installed
# above (z3 via apt).
RUN easycrypt why3config

# Make jasminc/jasmin-ct/easycrypt available in *any* shell (not just
# the opam-exec-wrapped RUN steps above), so plain `docker run ... bash`
# sessions work without needing `eval $(opam env)` first.
ENV PATH="/root/.opam/jasmin-ec/bin:${PATH}"

WORKDIR /usr/src/JASMIN-PICNIC3
