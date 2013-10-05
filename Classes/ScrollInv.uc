class ScrollInv expands FiretrucksPickup;

/**
In classic RPGs, examples of "multiple instances of scroll" are usually really bad. Like, they cast a spell and then go away. What spell do they even cast? Who knows? Often they are given unhelpful labels like YUM YUM or THANX MAUD.

Woe upon you if it is an uncursed scroll of genocide and you are confused.
*/

#exec texture import file=textures\i_scroll.pcx name=i_scroll flags=2 mips=off

defaultproperties {
    DrawType=DT_Mesh
    Mesh=scroll
  ambientGlow=40
  icon=i_scroll
}
