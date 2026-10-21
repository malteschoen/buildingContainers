### usage when building image for arm64/aarch64: 
```
podman build --format docker --volume "$PWD":/shared --arch arm64 -t ghcr.io/malteschoen/termux:arm64 .
```
### usage when building image for amd64/x86_64: 
```
TBD
```

### testing
```
podman run -it --volume "$PWD":/shared ghcr.io/malteschoen/termux:latest
```
