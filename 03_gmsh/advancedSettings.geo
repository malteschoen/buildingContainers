Merge "input.step";

// Collect all surfaces
surfs[] = Surface{:};

// Manually assign physical surfaces
Physical Surface("patch_0") = {surfs[0]};
Physical Surface("patch_1") = {surfs[1]};
Physical Surface("patch_2") = {surfs[2]};
Physical Surface("patch_3") = {surfs[3]};
Physical Surface("patch_4") = {surfs[4]};
Physical Surface("patch_5") = {surfs[5]};
Physical Surface("patch_6") = {surfs[6]};
Physical Surface("patch_7") = {surfs[7]};
Physical Surface("patch_8") = {surfs[8]};
Physical Surface("patch_9") = {surfs[9]};

// Collect all volumes
vols[] = Volume{:};
Physical Volume("fluid") = {vols[]};

Field[1] = MathEval;
Field[1].F = "10";
Background Field = 1;

Mesh.SubdivisionAlgorithm = 2;