### usage when building image for arm64/aarch64: 
```
podman build --volume "$PWD":/shared --arch arm64 -t ghcr.io/malteschoen/dune3d:arm64 .
```
### usage when building image for amd64/x86_64: 
```
podman build  --volume $PWD":/shared --arch amd64 -t ghcr.io/malteschoen/dune3d:amd64 .
```

### testing
```
podman run -it --volume $PWD":/shared ghcr.io/malteschoen/dune3d:latest /bin/bash
```
### required installs on NOBLE host system
```
sudo apt install uuid-dev libepoxy-dev libgtkmm-4.0-dev libcairomm-1.16-dev libocct-foundation-7.6t64  libocct-modeling-data-7.6t64 libocct-modeling-algorithms-7.6t64 libocct-ocaf-7.6t64
```