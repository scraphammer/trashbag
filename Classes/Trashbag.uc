class Trashbag extends Decoration;

#exec obj load file=detail.utx

#exec MESH IMPORT MESH=trashbag ANIVFILE=MODELS\trashbag_a.3d DATAFILE=MODELS\trashbag_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=trashbag X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=trashbag SEQ=All      STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=trashbag SEQ=TRASHBAG STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jtrashbag1 FILE=MODELS\trashbag1.PCX detail=rock1

#exec MESHMAP NEW   MESHMAP=trashbag MESH=trashbag
#exec MESHMAP SCALE MESHMAP=trashbag X=0.03 Y=0.03 Z=0.06

#exec MESHMAP SETTEXTURE MESHMAP=trashbag NUM=1 TEXTURE=Jtrashbag1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=trashbag
}
