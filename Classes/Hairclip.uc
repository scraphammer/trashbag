class Hairclip expands Decoration;

/**
A super cute hair clip with a triangular decoration. It doesn't just keep your hair out of your face; it is a fasion accesory!
*/

#exec MESH IMPORT MESH=hairclip ANIVFILE=MODELS\hairclip_a.3d DATAFILE=MODELS\hairclip_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=hairclip X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=hairclip SEQ=All      STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=hairclip SEQ=HAIRCLIP STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jhairclip1 FILE=MODELS\hairclip1.PCX FLAGS=2

#exec MESHMAP NEW   MESHMAP=hairclip MESH=hairclip
#exec MESHMAP SCALE MESHMAP=hairclip X=0.005 Y=0.005 Z=0.01

#exec MESHMAP SETTEXTURE MESHMAP=hairclip NUM=1 TEXTURE=Jhairclip1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=hairclip
  ambientGlow=32
}
