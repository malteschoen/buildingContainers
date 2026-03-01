### usage when building image for arm64/aarch64: 
```
podman build --volume /media/xubuntu/jesus1/shared:/shared --arch arm64 -t ghcr.io/malteschoen/paraview-superbuild:arm64 .
```
### testing
```
podman run -it --volume /media/xubuntu/jesus1/shared:/shared ghcr.io/malteschoen/paraview-superbuild:arm64 /bin/bash
```


Other comments/info:
- You must use ParaView 5.12 or earlier, since web apps [were discontinued](https://kitware.github.io/visualizer/docs/index.html#Run-it-from-ParaView)

Paraview Lite
- supposedly "pvpython -m paraview.apps.lite" (https://kitware.github.io/paraview-lite/index.html)
- might also be "pvpython ./server/pvw-lite.py --content ./dist --data ~ --port 1234" (https://github.com/Kitware/paraview-lite)

Paraview Visualizer
- supposedly  "./bin/pvpython -m paraview.apps.visualizer "(https://kitware.github.io/visualizer/docs/index.html)
