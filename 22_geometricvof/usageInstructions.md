### usage when building image for arm64/aarch64:
```
podman build --format docker  --volume /media/xubuntu/jesus1/podman/offloaded:/offloaded --arch arm64 -t ghcr.io/malteschoen/geometricvof:arm64 .
```
### usage when building image for amd64/x86-64:
```
podman build --format docker   --arch amd64 -t ghcr.io/malteschoen/geometricvof:amd64 .
```
### usage when running container interactively:
```
podman run --user=ubuntu -it -v /media/xubuntu/jesus1/github:/shared ghcr.io/malteschoen/geometricvof:arm64
```


#/home/ubuntu/OpenFOAM/user-v2512/platforms/linuxARM64GccDPInt32Opt/bin/interPlicFoam
