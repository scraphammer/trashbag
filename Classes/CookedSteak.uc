class CookedSteak extends FiretrucksPickup;

/**
A perfectly cooked top quality steak blackend on the outside but inedibly raw on the inside.
*/

#exec TEXTURE IMPORT NAME=Jsteak2 FILE=MODELS\steak2.PCX

#exec texture import file=textures\i_cookedsteak.pcx name=i_cookedsteak flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=steak
  pickupViewMesh=steak
  multiSkins(1)=Texture'Jsteak2'
  icon=i_cookedsteak
   pickupMessage="You got a perfectly cooked steak"
   pickupsound=sound'meatslap'
   activateSound=sound'blobdeath'
  oneuse=true
  eventOnUse=CookedSteakEvent
  itemName="Cooked Steak"
  itemArticle="some"
}
