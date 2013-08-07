class Tankards expands FiretrucksPickup;

/**
Originally when the gold coins were minted they were backed by "the pewter standard" which ensured the coins could be exchanged for pewter tankards on a 1-for-1 basis. In time though many more gold coins were produced than actual tankards, so the Tankard is now a fiat currency.
*/

#exec MESH IMPORT MESH=coin1 ANIVFILE=MODELS\coin1_a.3d DATAFILE=MODELS\coin1_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin5 ANIVFILE=MODELS\coin5_a.3d DATAFILE=MODELS\coin5_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin10 ANIVFILE=MODELS\coin10_a.3d DATAFILE=MODELS\coin10_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin20 ANIVFILE=MODELS\coin20_a.3d DATAFILE=MODELS\coin20_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin100 ANIVFILE=MODELS\coin100_a.3d DATAFILE=MODELS\coin100_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin1 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin5 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin10 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin20 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin100 X=0 Y=0 Z=-202

#exec MESH SEQUENCE MESH=coin1 SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin1 SEQ=COIN1 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin5 SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin5 SEQ=COIN5 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin10 SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin10 SEQ=COIN10 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin20 SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin20 SEQ=COIN20 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin100 SEQ=All     STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin100 SEQ=COIN100 STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jcointex1 FILE=MODELS\coin11.PCX
#exec TEXTURE IMPORT NAME=Jcointex2 FILE=MODELS\coin1001.PCX
#exec TEXTURE IMPORT NAME=Jtreasure1 FILE=MODELS\treasure1.PCX // treasure

#exec MESHMAP NEW   MESHMAP=coin1 MESH=coin1
#exec MESHMAP SCALE MESHMAP=coin1 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin5 MESH=coin5
#exec MESHMAP SCALE MESHMAP=coin5 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin10 MESH=coin10
#exec MESHMAP SCALE MESHMAP=coin10 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin20 MESH=coin20
#exec MESHMAP SCALE MESHMAP=coin20 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin100 MESH=coin100
#exec MESHMAP SCALE MESHMAP=coin100 X=0.05 Y=0.05 Z=0.1

#exec MESHMAP SETTEXTURE MESHMAP=coin1 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin5 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin10 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin20 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=1 TEXTURE=Jcointex2
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=2 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=3 TEXTURE=Jtreasure1

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=coin100
}

var() int amount; //The amount of coins in this pile.

function postBeginPlay() {
  super.postBeginPlay();
  if (amount < 1) amount = 1;
  numCopies = amount;
  if (amount == 1) {
    mesh=Mesh'coin1';
    pickupViewMesh=Mesh'coin1';
    //change icon once I get them made
  } else if (amount <= 5) {
    mesh=Mesh'coin5';
    pickupViewMesh=Mesh'coin5';
    //change icon once I get them made
  } else if (amount <= 10) {
    mesh=Mesh'coin10';
    pickupViewMesh=Mesh'coin10';
    //change icon once I get them made
  } else if (amount <= 30){
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
  } else if (amount < 100){
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
  } else {
    mesh=Mesh'coin100';
    pickupViewMesh=Mesh'coin100';
  }
}
/*
function tick(float delta) {
  super.tick(delta);
  if (amount < 1) amount = 1;
  numCopies = amount;
  if (amount == 1) {
    mesh=Mesh'coin1';
    pickupViewMesh=Mesh'coin1';
    //change icon once I get them made
  } else if (amount <= 5) {
    mesh=Mesh'coin5';
    pickupViewMesh=Mesh'coin5';
    //change icon once I get them made
  } else if (amount <= 10) {
    mesh=Mesh'coin10';
    pickupViewMesh=Mesh'coin10';
    //change icon once I get them made
  } else {
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
    //change icon once I get them made
  }
}*/

event drawEditorSelection(Canvas c) {
  if (amount < 1) amount = 1;
  numCopies = amount;
  if (amount == 1) {
    mesh=Mesh'coin1';
    pickupViewMesh=Mesh'coin1';
    //change icon once I get them made
  } else if (amount <= 5) {
    mesh=Mesh'coin5';
    pickupViewMesh=Mesh'coin5';
    //change icon once I get them made
  } else if (amount <= 10) {
    mesh=Mesh'coin10';
    pickupViewMesh=Mesh'coin10';
    //change icon once I get them made
  } else if (amount <= 30){
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
  } else if (amount < 100){
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
  } else {
    mesh=Mesh'coin100';
    pickupViewMesh=Mesh'coin100';
  }
}

defaultproperties {
    DrawType=DT_Mesh
    Mesh=coin1
    pickupViewMesh=coin1
  bEditorSelectRender=true
  oneuse=false
  eventOnUse=TankardsEvent
  itemName="Tankards"
  itemArticle="some"
  pickupMessage="Snagged some cash"
  amount
}
