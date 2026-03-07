### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/medusa:arm64 .
```

### usage when building image for amd64/x86-64:
```
podman build --arch amd64 -t ghcr.io/malteschoen/medusa:amd64 .
```

### usage A when running container interactively:
```
podman run -it ghcr.io/malteschoen/medusa /bin/bash
```

