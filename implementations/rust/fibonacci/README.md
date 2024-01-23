# Rust native

```bash
# build release
cargo build --release

# run service
./target/release/fibonacci
```

# Docker

```bash
# creating debian bookworm based image
./buildImage.sh debian

# running image
 docker run --rm -p 5000:5000 fibonacci_rust_debian
```