class HairclipInv extends FiretrucksPickup;

/**
A version of the hairclip that you can carry around. Why aren't you wearing it though?
*/

#exec texture import file=textures\i_hairclip.pcx name=i_hairclip flags=2 mips=off

defaultproperties {
    Mesh=hairclip
  ambientGlow=32
  icon=Texture'i_hairclip'
}
