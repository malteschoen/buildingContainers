as of 30th Nov 2025, the following things are held here:

| name | link | what it is |
|---|---|---|
| glance  | ghcr.io/malteschoen/glance:latest | [ParaView Glance](https://github.com/kitware/glance.git) is a browser-based diet version of ParaView |
| paraview-superbuild  | link to container to follow | [ParaView Superbuild](https://gitlab.kitware.com/paraview/paraview-superbuild) allows you to build paraview with odd features like osmesa |
| paraview-visualizer  | link to container to follow | [ParaView Visualizer](https://github.com/Kitware/visualizer) uses a web interface to access paraview - the battleplan is to use a lightweight image (or 24.04 from microfluidica) and copy over the Paraview files. Simple hosting will also need to be provided. | 



Some general hints:
```
//lines below build images in current folder, provided a dockerfile/containerfile exists there
//it his highly recommended to use arm64 and amd64 as tags
podman build -t --arch arm64 [NAME_GOES_HERE]:[TAG_GOES_HERE] .
podman build -t --arch amd64 [NAME_GOES_HERE]:[TAG_GOES_HERE] .

//line below renames/re-tags image - to use GitHub container registry (GHCR) specific naming scheme laid out must be observed
podman tag localhost/[NAME_GOES_HERE]:[TAG_GOES_HERE] ghcr.io/malteschoen/[NAME_GOES_HERE]:[TAG_GOES_HERE]

// line below logs into GHCR using my regular GitHub account using a special personal access token (PAT)
podman login ghcr.io -u malteschoen -p [PERSONAL_ACCESS_TOKEN_GOES_HERE]

// line below pushes image to GHCR
podman push ghcr.io/malteschoen/[NAME_GOES_HERE]:[TAG_GOES_HERE]

// line below creates manifest on GHCR  
podman manifest create ghcr.io/malteschoen/[NAME_GOES_HERE]:latest

// lines below add amd64 and arm64 versions of image to manifest
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest ghcr.io/malteschoen/[NAME_GOES_HERE]:amd64
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest ghcr.io/malteschoen/[NAME_GOES_HERE]:arm64

// line below pushes manifest to GHCR so that both amd and arm version are available from the same link
podman manifest push --all ghcr.io/malteschoen/[NAME_GOES_HERE]:latest docker://ghcr.io/malteschoen/[NAME_GOES_HERE]:latest
```