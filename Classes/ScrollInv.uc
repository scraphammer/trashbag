class ScrollInv expands FiretrucksPickup;

#exec texture import file=textures\i_scroll.pcx name=i_scroll flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=scroll
  ambientGlow=40
  icon=i_scroll
}
