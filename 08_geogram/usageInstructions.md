### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/geogram:arm64 .
```
### usage when building image for amd64/x86_64: 
```
podman build --arch amd64 -t ghcr.io/malteschoen/geogram:amd64 .
```

### testing
```
podman run -it --volume /home/xubuntu/github:/shared ghcr.io/malteschoen/geogram:latest /bin/bash
```
