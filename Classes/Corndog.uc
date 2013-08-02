class corndog extends Health;

#exec MESH IMPORT MESH=corndog ANIVFILE=MODELS\corndog_a.3d DATAFILE=MODELS\corndog_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=corndog X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=corndog SEQ=All     STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=corndog SEQ=CORNDOG STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jcorndog1 FILE=MODELS\corndog1.PCX GROUP=Skins DETAIL=dirty
#exec textyre import name=if_i_see_that_corndog_one_more_time file=models\corndog2.pcx

#exec MESHMAP NEW   MESHMAP=corndog MESH=corndog
#exec MESHMAP SCALE MESHMAP=corndog X=0.1 Y=0.1 Z=0.2

#exec MESHMAP SETTEXTURE MESHMAP=corndog NUM=1 TEXTURE=Jcorndog1

defaultproperties {
    DrawType=DT_Mesh
    Mesh=corndog
    pickupViewMesh=corndog
    collisionHeight=5
    collisionRadius=6
    healingAmount=15
    pickupSound=Sound'BurgerBite'
    pickupMessage="You instantly devoured the succulent corndogs!"
}
