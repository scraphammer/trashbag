class Steak expands FiretrucksPickup;

/**
An uncomfortably large T-Bone steak. It's red color is intended to be evocative of juicy freshness. It isn't super marbled or anything, but it still looks like it might be tasty if cooked right. Just make sure it is cooked fully because the variety of tapeworms found in improperly cooked beef can grow to be as long as the human intestines, if not longer.
In the Dungeons of Doom a steak like this would be completely unsafe to eat after just thirty turns. While the length of a turn is not specified, conditions in the dungeons must be quite extreme for meats to spoil so quickly. You need not worry though, as there are not documented cases of the mysterious "You feel deathly sick." illness on Na Pali.
*/

#exec MESH IMPORT MESH=steak ANIVFILE=MODELS\steak_a.3d DATAFILE=MODELS\steak_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=steak X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=steak SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=steak SEQ=STEAK STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jsteak1 FILE=MODELS\steak1.PCX

#exec MESHMAP NEW   MESHMAP=steak MESH=steak
#exec MESHMAP SCALE MESHMAP=steak X=0.02 Y=0.02 Z=0.04

#exec MESHMAP SETTEXTURE MESHMAP=steak NUM=1 TEXTURE=Jsteak1

#exec texture import file=textures\i_steak.pcx name=i_steak flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=steak
  pickupViewMesh=steak
  icon=i_steak
}
