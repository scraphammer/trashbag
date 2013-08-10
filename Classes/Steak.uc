class Steak expands FiretrucksPickup;

#exec MESH IMPORT MESH=steak ANIVFILE=MODELS\steak_a.3d DATAFILE=MODELS\steak_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=steak X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=steak SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=steak SEQ=STEAK STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jsteak1 FILE=MODELS\steak1.PCX

#exec MESHMAP NEW   MESHMAP=steak MESH=steak
#exec MESHMAP SCALE MESHMAP=steak X=0.02 Y=0.02 Z=0.04

#exec MESHMAP SETTEXTURE MESHMAP=steak NUM=1 TEXTURE=Jsteak1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=steak
  pickupViewMesh=steak
  icon=if_i_see_that_corndog_one_more_time
}
