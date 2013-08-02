class Hamburger expands Health;

#exec MESH IMPORT MESH=Hamburger01 ANIVFILE=MODELS\Hamburger01_a.3d DATAFILE=MODELS\Hamburger01_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=Hamburger01 X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=Hamburger01 SEQ=All       STARTFRAME=0 NUMFRAMES=1
#exec MESH SEQUENCE MESH=Hamburger01 SEQ=hamburger STARTFRAME=0 NUMFRAMES=1

#exec TEXTURE IMPORT NAME=JBBun1 FILE=MODELS\burgerbun.PCX
#exec TEXTURE IMPORT NAME=JBSalad FILE=MODELS\salad.PCX
#exec TEXTURE IMPORT NAME=JBPatty FILE=MODELS\patty.PCX
#exec TEXTURE IMPORT NAME=JBTomato FILE=MODELS\tomatoslice.PCX
#exec TEXTURE IMPORT NAME=JBOnion FILE=MODELS\onionslice.PCX
#exec TEXTURE IMPORT NAME=JBCheese FILE=MODELS\cheeseslice.PCX
#exec TEXTURE IMPORT NAME=JBBun2 FILE=MODELS\burgerbunbottom.PCX

#exec MESHMAP NEW   MESHMAP=Hamburger01 MESH=Hamburger01
#exec MESHMAP SCALE MESHMAP=Hamburger01 X=0.1 Y=0.1 Z=0.2

#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=1 TEXTURE=JBBun1
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=2 TEXTURE=JBSalad
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=3 TEXTURE=JBPatty
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=4 TEXTURE=JBTomato
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=5 TEXTURE=JBOnion
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=6 TEXTURE=JBCheese
#exec MESHMAP SETTEXTURE MESHMAP=Hamburger01 NUM=7 TEXTURE=JBBun2

#exec AUDIO IMPORT FILE="Sounds\burgerbite.wav" NAME="BurgerBite"

defaultproperties {
  DrawType=DT_Mesh
  Mesh=Hamburger01
  PickupViewMesh=Hamburger01
  CollisionHeight=5
  CollisionRadius=6
  bSuperHeal=True
  HealingAmount=10
  DrawScale=1.25
  PickupSound=Sound'BurgerBite'
  PickupMessage="You instantly devoured the tasty hamburger!"
}
