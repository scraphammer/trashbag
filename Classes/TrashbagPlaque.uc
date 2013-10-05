class TrashbagPlaque expands Decoration;

/**
A decorative plaque to commemorate your successes, or failures, if you so desire.
*/

#exec MESH IMPORT MESH=plaque2a ANIVFILE=MODELS\plaque2a_a.3d DATAFILE=MODELS\plaque2a_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=plaque2a X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=plaque2a SEQ=All      STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=plaque2a SEQ=PLAQUE2A STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jplaque2a1 FILE=MODELS\plaque2a1.PCX

#exec MESHMAP NEW   MESHMAP=plaque2a MESH=plaque2a
#exec MESHMAP SCALE MESHMAP=plaque2a X=.2 Y=.2 Z=.4

#exec MESHMAP SETTEXTURE MESHMAP=plaque2a NUM=1 TEXTURE=Jplaque2a1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=plaque2a
}
