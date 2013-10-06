class Trashbag extends Decoration;

/**
A cheap plastic trashbag, filled and then tied at the top. What is inside? Oh, just your hopes and dreams.
*/

#exec AUDIO IMPORT FILE="Sounds\book.wav" NAME="flipbook1" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\book2.wav" NAME="flipbook2" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\coinpick.wav" NAME="coinpick" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\metpick.wav" NAME="metpick" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\switch.wav" NAME="t_switch" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\whack.wav" NAME="t_whack" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\step1.wav" NAME="t_hard1" GROUP="Footstep"
#exec AUDIO IMPORT FILE="Sounds\step2.wav" NAME="t_hard2" GROUP="Footstep"
#exec AUDIO IMPORT FILE="Sounds\step3.wav" NAME="t_hard3" GROUP="Footstep"
#exec AUDIO IMPORT FILE="Sounds\land1.wav" NAME="t_hardL" GROUP="Footstep"
#exec AUDIO IMPORT FILE="Sounds\land2.wav" NAME="t_metL" GROUP="Footstep"
#exec AUDIO IMPORT FILE="Sounds\ahoy_sailor.wav" NAME="ahoy_sailor" GROUP="Misc"
#exec AUDIO IMPORT FILE="Sounds\meatslap.wav" NAME="meatslap" GROUP="Misc"

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
