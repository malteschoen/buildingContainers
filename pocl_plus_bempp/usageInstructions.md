### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/pocl_plus_bempp:arm64 .
```
### testing
```
podman run -it --volume /media/xubuntu/jesus1/github:/shared ghcr.io/malteschoen/pocl_plus_bempp:arm64 /bin/bash
```
