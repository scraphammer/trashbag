class TreasureMapInv extends FiretrucksPickup;

/**
Fifty paces east, ten paces west, a hundred paces north. Then four paces east again, then you are probably lost on some island in the middle of the Carribean. Great job!
*/

#exec texture import file=textures\i_scroll.pcx name=i_scroll flags=2 mips=off

defaultproperties {
  multiskins(4)=Texture'JopenScroll5'
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_treauremap
}
