### usage when building image for arm64/aarch64:
```
podman build --format docker --arch arm64 -t ghcr.io/malteschoen/geometricvof:arm64 .
```
### usage when building image for amd64/x86-64:
```
podman build --format docker   --arch amd64 -t ghcr.io/malteschoen/geometricvof:amd64 .
```
### usage when running container interactively:
```
podman run --user=openfoam -it -v /media/xubuntu/jesus1/github:/shared ghcr.io/malteschoen/geometricvof:arm64
```

/root/OpenFOAM/user-v2512/platforms/linuxARM64GccDPInt32Opt/lib
/home/ubuntu/OpenFOAM/user-v2512/platforms/linuxARM64GccDPInt32Opt/bin/interPlicFoam
/home/openfoam/OpenFOAM/user-v2512/platforms/linuxARM64GccDPInt32Opt/lib /home/openfoam/OpenFOAM/user-v2512/platforms/linuxARM64GccDPInt32Opt/lib

sudo  chmod -R a+rwX ./geometricVofExt/