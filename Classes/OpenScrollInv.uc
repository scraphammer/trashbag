class OpenScrollInv expands FiretrucksPickup;

/**
An open scroll you can carry around, and maybe use if the mapper set it up right. Reading from this probably makes you seem pretty pretentious.
*/

#exec texture import file=textures\i_openscroll.pcx name=i_openscroll flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_openscroll
}
