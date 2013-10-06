class GoldCoins expands FiretrucksPickup;

/**
Originally when the gold coins were minted they were backed by "the pewter standard" which ensured the coins could be exchanged for pewter tankards on a 1-for-1 basis. In time though many more gold coins were produced than actual tankards, so the Tankard is now a fiat currency.
<br/><br/>
Over time a strict dictator also forced the people to abandon the moniker of "Tankards" (or "Tankz", in some seedier districts) in favor of something more generic and less off-putting like "Gold Coins." The fun-police were even dispaced to ensure that this new ruling was enforced. However, in the hearts and minds of the people they will always be Tankards.
*/

#exec MESH IMPORT MESH=coin1 ANIVFILE=MODELS\coin1_a.3d DATAFILE=MODELS\coin1_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin5 ANIVFILE=MODELS\coin5_a.3d DATAFILE=MODELS\coin5_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin10 ANIVFILE=MODELS\coin10_a.3d DATAFILE=MODELS\coin10_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin20 ANIVFILE=MODELS\coin20_a.3d DATAFILE=MODELS\coin20_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin50 ANIVFILE=MODELS\coin50_a.3d DATAFILE=MODELS\coin50_d.3d X=0 Y=0 Z=0
#exec MESH IMPORT MESH=coin100 ANIVFILE=MODELS\coin100_a.3d DATAFILE=MODELS\coin100_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin1 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin5 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin10 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin20 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin50 X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=coin100 X=0 Y=0 Z=-202

#exec MESH SEQUENCE MESH=coin1 SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin1 SEQ=COIN1 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin5 SEQ=All   STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin5 SEQ=COIN5 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin10 SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin10 SEQ=COIN10 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin20 SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin20 SEQ=COIN20 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin50 SEQ=All    STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin50 SEQ=COIN50 STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin100 SEQ=All     STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=coin100 SEQ=COIN100 STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=Jcointex1 FILE=MODELS\coin11.PCX
#exec TEXTURE IMPORT NAME=Jcointex2 FILE=MODELS\coin1001.PCX
#exec TEXTURE IMPORT NAME=Jtreasure1 FILE=MODELS\treasure1.PCX

#exec MESHMAP NEW   MESHMAP=coin1 MESH=coin1
#exec MESHMAP SCALE MESHMAP=coin1 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin5 MESH=coin5
#exec MESHMAP SCALE MESHMAP=coin5 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin10 MESH=coin10
#exec MESHMAP SCALE MESHMAP=coin10 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin20 MESH=coin20
#exec MESHMAP SCALE MESHMAP=coin20 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin50 MESH=coin50
#exec MESHMAP SCALE MESHMAP=coin50 X=0.05 Y=0.05 Z=0.1
#exec MESHMAP NEW   MESHMAP=coin100 MESH=coin100
#exec MESHMAP SCALE MESHMAP=coin100 X=0.05 Y=0.05 Z=0.1

#exec MESHMAP SETTEXTURE MESHMAP=coin1 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin5 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin10 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin20 NUM=1 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin50 NUM=1 TEXTURE=Jtreasure1
#exec MESHMAP SETTEXTURE MESHMAP=coin50 NUM=2 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=1 TEXTURE=Jcointex2
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=2 TEXTURE=Jcointex1
#exec MESHMAP SETTEXTURE MESHMAP=coin100 NUM=3 TEXTURE=Jtreasure1

#exec TEXTURE IMPORT NAME=i_tankards FILE=TEXTURES\i_tankards.pcx flags=2 mips=off

var() int amount; //The amount of coins in this pile.

function bool handlePickupQuery(Inventory i) {
  if (i == none) return false;
  if (i.class == class) {
    if (bCanHaveMultipleCopies) {
      amount += GoldCoins(i).amount;
      setCoins();
      log(numCopies $ " " $ amount $ " " $ Pickup(i).numCopies);
      Pawn(owner).clientMessage(i.pickupMessage, 'pickup');
      i.playSound(i.pickupSound,,2.0);
      i.setReSpawn();
    } else if (bDisplayableInv) {
      if (charge < i.charge) charge = i.charge;
      Pawn(owner).clientMessage(i.pickupMessage, 'pickup');
      i.playSound(i.pickupSound,,2.0);
      i.setReSpawn();
    }
    return true;
  }
  if (inventory == none) return false;
  return inventory.handlePickupQuery(i);
}

function setCoins() {
  if (amount < 1) amount = 1;
  numCopies = amount - 1;
  if (amount == 1) {
    mesh=Mesh'coin1';
    pickupViewMesh=Mesh'coin1';
  } else if (amount <= 20) {
    mesh=Mesh'coin5';
    pickupViewMesh=Mesh'coin5';
  } else if (amount <= 40) {
    mesh=Mesh'coin10';
    pickupViewMesh=Mesh'coin10';
  } else if (amount <= 80) {
    mesh=Mesh'coin20';
    pickupViewMesh=Mesh'coin20';
  } else if (amount <= 150) {
    mesh=Mesh'coin50';
    pickupViewMesh=Mesh'coin50';
  } else {
    mesh=Mesh'coin100';
    pickupViewMesh=Mesh'coin100';
  }
}

function postBeginPlay() {
  super.postBeginPlay();
  setCoins();
}

event drawEditorSelection(Canvas c) {
  setCoins();
}

defaultproperties {
  DrawType=DT_Mesh
  Mesh=coin1
  pickupViewMesh=coin1
  bEditorSelectRender=true
  oneuse=false
  eventOnUse=GoldCoinsEvent
  itemName="Gold"
  itemArticle="some"
  pickupMessage="Snagged some gold"
  icon=Texture'i_tankards'
  amount=1
  pickupsound=sound'coinpick'
  activateSound=sound'shell2'
}
