class TreasureMapInv extends FiretrucksPickup;

#exec texture import file=textures\i_scroll.pcx name=i_scroll flags=2 mips=off

defaultproperties {
  multiskins(4)=Texture'JopenScroll5'
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_treauremap
}
