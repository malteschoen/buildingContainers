### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/felupe:arm64 .
```

### usage when building image for amd64/x86-64:
```
podman build --arch amd64 -t ghcr.io/malteschoen/felupe:amd64 .
```

### usage A when running container interactively:
```
podman run -it -v /home/$USER/felupe:/shared ghcr.io/malteschoen/felupe /bin/bash
```

### usage B when running container interactively:
```
podman run -it -v /media/xubuntu/jesus1/github:/shared ghcr.io/malteschoen/felupe /bin/bash
```

### usage A when running container interactively under udocker on your phone: 
```
udocker run --name=felupe --pull=reuse  -v /data/data/com.termux/files/home/github/felupe-demos:/shared ghcr.io/malteschoen/felupe /bin/bash
```

### usage B when running container interactively under udocker on your phone: 
'''
udocker run --name=felupe --pull=reuse  -v /storage/downloads:/shared ghcr.io/malteschoen/felupe /bin/bash
```