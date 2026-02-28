### usage when building image for arm64/aarch64: 
```
podman build --volume /media/xubuntu/jesus1/shared:/shared --arch arm64 -t ghcr.io/malteschoen/pvw-visualizer:arm64 .
```
### testing
```
podman run -it --volume /media/xubuntu/jesus1/shared:/shared ghcr.io/malteschoen/pvw-visualizer:arm64 /bin/bash
```