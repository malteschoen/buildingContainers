### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/compatomizfoam:arm64 .
```

### usage when building image for amd64/x86_64: 
```
podman build --arch amd64 -t ghcr.io/malteschoen/compatomizfoam:amd64 .
```

### testing on arm64/aarch64: 
```
podman run -it --volume /media/xubuntu/jesus1/shared:/shared ghcr.io/malteschoen/compatomizfoam:arm64
```

### testing on amd64/x86_64: 
```
podman run -it --volume /media/xubuntu/jesus1/shared:/shared ghcr.io/malteschoen/compatomizfoam:amd64
```