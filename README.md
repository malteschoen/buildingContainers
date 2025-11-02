as of 30th Oct 2025, the following things are held here:

| name | link | what it is |
|---|---|---|
| glance  | ghcr.io/malteschoen/glance:latest | [ParaView Glance](https://github.com/kitware/glance.git) is a browser-based diet version of ParaView |


Some general hints:

- podman build -t [NAME_GOES_HERE]:[TAG_GOES_HERE] .
- podman tag localhost/[NAME_GOES_HERE]:[TAG_GOES_HERE] ghcr.io/malteschoen/[NAME_GOES_HERE]:[TAG_GOES_HERE]
- podman login ghcr.io -u malteschoen -p [ACCESS_TOKEN_GOES_HERE]
- podman push ghcr.io/malteschoen/[NAME_GOES_HERE]:[TAG_GOES_HERE]