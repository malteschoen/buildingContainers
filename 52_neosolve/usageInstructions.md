### usage when building image for arm64/aarch64: 
```
podman build --volume "$PWD":/shared --arch arm64 -t ghcr.io/malteschoen/neosolve:arm64 .
```
### usage when building image for amd64/x86_64: 
```
podman build  --volume $PWD":/shared --arch amd64 -t ghcr.io/malteschoen/neosolve:amd64 .
```

### testing
```
podman run -it --volume $PWD":/shared ghcr.io/malteschoen/neosolve:latest /bin/bash
```
