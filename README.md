# Quickstarts on a boring standard linux machine
## GLANCE
```
podman run -d -p 8080:8080 ghcr.io/malteschoen/glance
```
## SFEPY
```
//preparations - getting the demo-problem-description-file to your sfepy-folder
mkdir /home/$USER/sfepy
wget https://sfepy.org/doc-devel/_downloads/3cd1878c07bae0901512d51fed780b36/poisson_short_syntax.py
//run interactively (meaning you gotta type in "sfepy-run poisson_short_syntax.py" next)
podman run -it -v /home/$USER/sfepy:/shared ghcr.io/malteschoen/sfepy /bin/bash
```
## GMSH
```
//preparations -
mkdir /home/$USER/gmsh
//run interactively (meaning you gotta type in "gmesh input.step -check" next)
podman run -v /home/$USER/gmsh:/shared ghcr.io/malteschoen/gmsh /bin/bash
```
# List of contents:

| name | link | what it is |
|---|---|---|
| glance | [glance](ghcr.io/malteschoen/glance:latest) | [ParaView Glance](https://github.com/kitware/glance.git) is a browser-based diet version of ParaView |
| paraview-superbuild  | link to container to follow | [ParaView Superbuild](https://gitlab.kitware.com/paraview/paraview-superbuild) allows you to build paraview with odd features like osmesa |
| paraview-visualizer  | link to container to follow | [ParaView Visualizer](https://github.com/Kitware/visualizer) uses a web interface to access paraview - the battleplan is to use a lightweight image (or 24.04 from microfluidica) and copy over the Paraview files. Simple hosting (apache?) will also need to be provided. | 
| sfepy | [sfepy](ghcr.io/malteschoen/sfepy:latest) | [sfepy](https://sfepy.org/doc-devel/index.html) is an user-friendly modular FEM toolbox in python - sadly, their container doesn't play nice with udocker, so I had to make my own | 
| gmsh | [gmsh](ghcr.io/malteschoen/gmsh:latest) | [gmsh](https://gmsh.info/) is a baller software for automatable generation of (mostly tet)  mesh - sadly, no recent arm64 container is offered, so I had to make my own | 
| gmsh_plus_sfepy | [gmsh_plus_sfepy](ghcr.io/malteschoen/gmsh_plus_sfepy:latest) | [gmsh](https://gmsh.info/) and [sfepy](https://sfepy.org/doc-devel/index.html) in the same container. Not efficient, not smart, but convenient. | 



# Some general hints:
```
//if needed, use this as  well
podman build --network slirp4netns -t

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

//short primer on manifests
//- can only be created, never edited
//- can only reference objects on 'their own platform' (so you must push onto it first)

// line below creates manifest on GHCR  
podman manifest create ghcr.io/malteschoen/[NAME_GOES_HERE]:latest

// lines below add amd64 and arm64 versions of image (2nd entry each) to manifest (first entry gives name in manifest)
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest ghcr.io/malteschoen/[NAME_GOES_HERE]:amd64
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest ghcr.io/malteschoen/[NAME_GOES_HERE]:arm64

// should for some reason the above fail, you can use this to make clear that a remote or local image is meant
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest docker://ghcr.io/malteschoen/[NAME_GOES_HERE]:arm64
podman manifest add ghcr.io/malteschoen/[NAME_GOES_HERE]:latest containers-storage://ghcr.io/malteschoen/[NAME_GOES_HERE]:arm64


// line below pushes manifest to GHCR so that both amd and arm version are available from the same link
podman manifest push --all ghcr.io/malteschoen/[NAME_GOES_HERE]:latest docker://ghcr.io/malteschoen/[NAME_GOES_HERE]:latest
```