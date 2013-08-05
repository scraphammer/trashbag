class Scroll expands Decoration;

#exec MESH IMPORT MESH=scroll ANIVFILE=MODELS\scroll_a.3d DATAFILE=MODELS\scroll_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=scroll X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=scroll SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=scroll SEQ=SCROLL STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jscroll1 FILE=MODELS\scroll1.PCX

#exec MESHMAP NEW   MESHMAP=scroll MESH=scroll
#exec MESHMAP SCALE MESHMAP=scroll X=0.01 Y=0.01 Z=0.02

#exec MESHMAP SETTEXTURE MESHMAP=scroll NUM=1 TEXTURE=Jscroll1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=scroll
}
