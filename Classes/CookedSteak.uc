class CookedSteak extends FiretrucksPickup;

#exec TEXTURE IMPORT NAME=Jsteak2 FILE=MODELS\steak2.PCX

defaultproperties {
    DrawType=DT_Mesh
    Mesh=steak
  pickupViewMesh=steak
  multiSkins(1)=Texture'Jsteak2'
  icon=if_i_see_that_corndog_one_more_time
}
