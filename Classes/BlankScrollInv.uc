class BlankScrollInv extends FiretrucksPickup;

/**
Ever wanted to carry a blank scroll around with you? Now you can!
*/

#exec texture import file=textures\i_blankscroll.pcx name=i_blankscroll flags=2 mips=off

defaultproperties {
  multiskins(4)=Texture'JopenScroll2'
    DrawType=DT_Mesh
    Mesh=openscroll
  AmbientGlow=75
  icon=i_blankscroll
    pickupViewMesh=openscroll
   pickupsound=sound'flipbook1'
   pickupMessage="You got a blank scroll"
   activateSound=sound'flipbook2'
  oneuse=false
  eventOnUse=BlankScrollInvEvent
  itemName="Blank Scroll"
  itemArticle="a"
}
