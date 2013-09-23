class TranslatorJournal extends Journal;

//UISystem=Class'ClassicJournalUI'
//message sound TransA3
defaultproperties {
  firstEntry="prisoner-bash-8.49$ man translator"
  firstEntryText="TRANSLATOR(1)#nNAME#n       translator - Standard translator.#nSYNOPSIS#n        translator [file]#nDESCRIPTION#n        You can use next weapon and previous weapon to scroll back to previous messages."
  pickupMessage="You picked up some crappy old turd. Oh wait, it is the translator."
  mesh=Mesh'translatormesh'
  pickupViewMesh=Mesh'UnrealShare.translatormesh'
  icon=Texture'UnrealShare.Icons.I_Tran'
  pickupSound=Sound'UnrealShare.Pickups.GenPickSnd'
  UISystem=Class'TranslatorJournalUI'
  newMessageSound=Sound'UnrealShare.TransA3'
  oldMessageSound=Sound'UnrealShare.TransA3'
}
