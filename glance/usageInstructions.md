### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/glance:arm64 .
```
###usage when building image for amd64/x86-64: 
```
podman build --arch amd64 -t ghcr.io/malteschoen/glance:amd64 .
```
### usage when running container:
```
podman run -d -p 8080:8080 ghcr.io/malteschoen/glance:arm64
```