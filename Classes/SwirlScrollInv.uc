class SwirlScrollInv extends FiretrucksPickup;

#exec texture import file=textures\i_swirlscroll.pcx name=i_swirlscroll flags=2 mips=off

defaultproperties {
  multiskins(4)=Texture'JopenScroll4'
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_swirlscroll
}
