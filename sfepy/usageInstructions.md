### take care:  your are required to create a folder named "sfepy" in your home folder and put the problem-description-file (e.g. poisson_short_syntax.py) there
### usage when building image for arm64/aarch64: 
```
podman build --arch arm64 -t ghcr.io/malteschoen/sfepy:arm64 .
```
### usage when building image for amd64/x86-64:
```
podman build --arch amd64 -t ghcr.io/malteschoen/sfepy:amd64 .
```
### usage when running container interactively:
```
podman run -it -v /home/$USER/sfepy:/shared ghcr.io/malteschoen/sfepy /bin/bash
```
### usage when running container hands-off: 
```
podman run -v /home/$USER/sfepy:/shared ghcr.io/malteschoen/sfepy /bin/bash -c "sfepy-run /shared/poisson_short_syntax.py"
```
### usage A when running container interactively under udocker on your phone: 
```
udocker run --name=sfepy --pull=reuse  -v /data/data/com.termux/files/home/github/sfepy-demos:/shared ghcr.io/malteschoen/sfepy /bin/bash
```
### usage B when running container interactively under udocker on your phone: 
'''
udocker run --name=sfepy --pull=reuse  -v /storage/downloads:/shared ghcr.io/malteschoen/sfepy /bin/bash
```
### usage when running container hands-off under udocker: 
```
udocker run --name=sfepy --pull=reuse  -v /scratch:/shared ghcr.io/malteschoen/sfepy /bin/bash
```
### usage when running container interactively under udocker: 
```
udocker run --name=sfepy --pull=reuse  -v /scratch:/shared ghcr.io/malteschoen/sfepy  /bin/bash -c "sfepy-run /shared/poisson_short_syntax.py"
```