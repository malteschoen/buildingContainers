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
```
podman run -v /home/$USER/gmsh:/shared ghcr.io/malteschoen/gmsh /bin/bash -c "gmsh -3 -format msh2 -o output.msh settings.geo
```
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
### SNIPPETS
number_of_short_sides = #short_sides[];
...
For i In {0:number_of_short_sides - 1}
...

https://scicomp.stackexchange.com/questions/42017/gmsh-what-is-the-right-syntax-to-iterate-over-a-list-of-numbers-with-a-for-loop

// Loop through each surface and create a physical surface for it
For i In {1: SurfaceCount}
    Physical Surface("Patch_" + Str(i)) = {i};
EndFor

kinda works

For i In {0:1} 
  Transfinite Curve(short_sides[i]) = short_side_divisions;
EndFor