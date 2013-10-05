class OpenScroll expands Decoration;

/**
A scroll looks nice rolled up, but you can't read it like that.
*/

#exec MESH IMPORT MESH=openscroll ANIVFILE=MODELS\openscroll_a.3d DATAFILE=MODELS\openscroll_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=openscroll X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=openscroll SEQ=All        STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=openscroll SEQ=OPENSCROLL STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jscroll1 FILE=MODELS\scroll1.PCX
#exec TEXTURE IMPORT NAME=Jopenscroll1 FILE=MODELS\openscroll1.PCX
#exec TEXTURE IMPORT NAME=Jopenscroll2 FILE=MODELS\openscroll2.PCX
#exec TEXTURE IMPORT NAME=Jopenscroll3 FILE=MODELS\openscroll3.PCX
#exec TEXTURE IMPORT NAME=Jopenscroll4 FILE=MODELS\openscroll4.PCX
#exec TEXTURE IMPORT NAME=Jopenscroll5 FILE=MODELS\openscroll5.PCX

#exec MESHMAP NEW   MESHMAP=openscroll MESH=openscroll
#exec MESHMAP SCALE MESHMAP=openscroll X=0.016 Y=0.016 Z=0.032

#exec MESHMAP SETTEXTURE MESHMAP=openscroll NUM=1 TEXTURE=Jscroll1
#exec MESHMAP SETTEXTURE MESHMAP=openscroll NUM=2 TEXTURE=Jopenscroll1
#exec MESHMAP SETTEXTURE MESHMAP=openscroll NUM=3 TEXTURE=Jopenscroll2
#exec MESHMAP SETTEXTURE MESHMAP=openscroll NUM=4 TEXTURE=Jopenscroll3

defaultproperties {
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
}
