class SwirlScrollInv extends FiretrucksPickup;

/**
Entranced by the swirling pattern, your mind unburdens itself with thoughts and reason as you reach for the scroll. Holding the swirling pattern before your eyes, you feel as if it speaks to you. It tells you things you might have ignored, but you mind is empty now, and you are so willing to listen and obey. You understand that these truths that the scroll has so slowly weaved into your tired and willing mind have always been the truth, and that you just could never accept it. The gentle words tell you of yourself, and your desires...
<br/><br/>
Two hours later you awaken from your trance, though your attention is drawn to the handle on the door across the room with its sensual curves and the sun-kissed brass, and you are filled with an intense longing to polish that wonderful door handle.
*/

#exec texture import file=textures\i_swirlscroll.pcx name=i_swirlscroll flags=2 mips=off

defaultproperties {
  multiskins(4)=Texture'JopenScroll4'
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_swirlscroll
    pickupViewMesh=openscroll
   pickupsound=sound'flipbook1'
   pickupMessage="You got a scroll with a swirl pattern on it"
   activateSound=sound'flipbook2'
  oneuse=false
  eventOnUse=SwirlScrollInvEvent
  itemName="Swirl Scroll"
  itemArticle="a"
}
