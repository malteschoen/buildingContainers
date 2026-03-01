### take care:  your are required to create a folder named "gmsh_plus_sfepy" in your home folder and put all your files there
### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/gmsh_plus_sfepy:arm64 .
```
### usage when building image for amd64/x86-64:
```
podman build --arch amd64 -t ghcr.io/malteschoen/gmsh_plus_sfepy:amd64 .
```