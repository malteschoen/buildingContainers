### usage when building image for arm64/aarch64: 
```
podman build --volume "$PWD":/shared --arch arm64 -t ghcr.io/malteschoen/termux:arm64 .
```
### usage when building image for amd64/x86_64: 
```
podman build  --volume $PWD":/shared --arch amd64 -t ghcr.io/malteschoen/termux:amd64 .
```

### testing
```
podman run -it --volume $PWD":/shared ghcr.io/malteschoen/termux:latest
```
