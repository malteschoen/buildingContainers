### take care:  your are required to create a folder named "gmsh" in your home folder and put your input files (e.g. step files) there

### usage when building image for arm64/aarch64:
```
podman build --arch arm64 -t ghcr.io/malteschoen/gmsh:arm64 .
```
### usage when building image for amd64/x86-64:
```
podman build --arch amd64 -t ghcr.io/malteschoen/gmsh:amd64 .
```
### usage when running container interactively:
```
podman run -it -v /home/$USER/gmsh:/shared ghcr.io/malteschoen/gmsh /bin/bash
```
### usage when running container hands-off: 
'''
podman run -v /home/$USER/gmsh:/shared ghcr.io/malteschoen/gmsh /bin/bash -c "gmsh -3 -format msh2 -o output.msh settings.geo
'''
### usage A when running container interactively under udocker on your phone:
```
udocker run --name=gmsh --pull=reuse  -v /data/data/com.termux/files/home/github/:/shared ghcr.io/malteschoen/gmsh /bin/bash
```
### usage B when running container interactively under udocker on your phone:
```
udocker run --name=gmsh --pull=reuse  -v /storage/downloads:/shared ghcr.io/malteschoen/gmsh /bin/bash
```
### usage when running container interactively under udocker:
```
udocker run --name=gmsh --pull=reuse  -v /scratch:/shared ghcr.io/malteschoen/gmsh /bin/bash
```
### usage when running container hands-off under udocker:
```
udocker run --name=gmsh --pull=reuse  -v /scratch:/shared ghcr.io/malteschoen/gmsh  /bin/bash -c "gmsh -3 -format msh2 -o output.msh settings.geo"
```

### cabinet of oddities
```
gmsh input.unv -3 -setnumber Mesh.SubdivisionAlgorithm 2 -format msh2 -o model_hex.mshee
```