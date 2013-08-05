// BoozeDeco2. Hello Scrag!
class BoozeDeco2 expands Decoration;

#exec MESH IMPORT MESH=BoozeDeco2 ANIVFILE=MODELS\BoozeDeco2_a.3d DATAFILE=MODELS\BoozeDeco2_d.3d X=0 Y=0 Z=0 unmirror=1
#exec MESH ORIGIN MESH=BoozeDeco2 X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=BoozeDeco2 SEQ=All                STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=BoozeDeco2 SEQ=GutRottingGoodness STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=JBooze1 FILE=MODELS\JBooze1.PCX
#exec TEXTURE IMPORT NAME=JBooze2 FILE=MODELS\JBooze2.PCX

#exec MESHMAP NEW   MESHMAP=BoozeDeco2 MESH=BoozeDeco2
#exec MESHMAP SCALE MESHMAP=BoozeDeco2 X=0.05 Y=0.05 Z=0.1

#exec MESHMAP SETTEXTURE MESHMAP=BoozeDeco2 NUM=1 TEXTURE=JBooze1
#exec MESHMAP SETTEXTURE MESHMAP=BoozeDeco2 NUM=2 TEXTURE=JBooze2

defaultproperties {
  DrawType=DT_Mesh
  Mesh=BoozeDeco2
  Texture=JBooze2
  LODBias=8
  CollisionHeight=26
  CollisionRadius=10
  bBlockPlayers=True
  bBlockActors=True
  bCollideActors=True
  bCollideWorld=True
  Physics=PHYS_Falling
}
