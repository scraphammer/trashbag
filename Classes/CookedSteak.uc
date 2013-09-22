class CookedSteak extends FiretrucksPickup;

#exec TEXTURE IMPORT NAME=Jsteak2 FILE=MODELS\steak2.PCX

#exec texture import file=textures\i_cookedsteak.pcx name=i_cookedsteak flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=steak
  pickupViewMesh=steak
  multiSkins(1)=Texture'Jsteak2'
  icon=i_cookedsteak
}
