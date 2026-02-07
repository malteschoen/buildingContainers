//SetFactory("OpenCASCADE");

// Import STEP file
Merge "input.step";
Coherence;

// Collect all surfaces
surfs[] = Surface{:};

// Create physical surfaces with indexed names
For i In {0:#surfs[]-1}
  // Physical Surface names must be literal strings in Gmsh
  Physical Surface(StrCat("patch_", i)) = {surfs[i]};
EndFor

// Collect all volumes
vols[] = Volume{:};
Physical Volume("fluid") = {vols[]};
