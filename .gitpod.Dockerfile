FROM rust:1.74

# LLVM + Z3 依赖
RUN apt update && \
    apt install -y --no-install-recommends \
    build-essential \
    clang \
    cmake \
    python3 \
    git \
    curl \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    llvm-dev \
    libclang-dev && \
    rustup component add rust-src rust-analyzer

# 可选：预安装 cargo-watch（用于自动编译）
RUN cargo install cargo-watch
