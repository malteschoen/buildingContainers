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