class TrashbagWeapon extends Weapon abstract;

var Rotator swayRot;
var() float swayCoefficient;
var() float vertCoefficient;
var() float cutoff;
var() float yawClamp;

event tick (float delta) {
  local float co;
  local Rotator swayPlayerRot;
  super.tick(delta);
  if (owner == none || Pawn(owner) == none) return;

  co = fClamp(delta * swayCoefficient, 0, 1);

  swayPlayerRot = Pawn(owner).viewRotation;
  if (swayPlayerRot.pitch > 18000) {
    swayPlayerRot.pitch = -(65536 - swayPlayerRot.pitch);
  }

  //yaw
  if (abs(swayPlayerRot.yaw - swayRot.yaw) < cutoff) swayRot.yaw = swayPlayerRot.yaw;
  else swayRot.yaw += (swayPlayerRot.yaw - swayRot.yaw) *
                      fClamp(delta * swayCoefficient, 0, 1);

  swayRot.yaw = fClamp(swayRot.yaw, swayPlayerRot.yaw - yawClamp,
                       swayPlayerRot.yaw + yawClamp);


  //pitch
  if (abs(swayPlayerRot.pitch - swayRot.pitch) < cutoff) swayRot.pitch = swayPlayerRot.pitch;
  else swayRot.pitch += (swayPlayerRot.pitch - swayRot.pitch) *
                        fClamp(delta * vertCoefficient, 0, 1);

  //roll
  swayRot.roll = swayPlayerRot.roll; 
}

simulated event RenderOverlays(Canvas c) {
  local bool bPlayerOwner;
  local int Hand;
  local rotator NewRot;
       
  if(bHideWeapon || (Owner == None)) return;
       
  if(PlayerPawn(Owner) != None) {
     bPlayerOwner = true;
     Hand = PlayerPawn(Owner).Handedness;
  }
  if((Level.NetMode == NM_Client) && bPlayerOwner && (Hand == 2)) {
     bHideWeapon = true;
     return;
  }
  if (!bPlayerOwner || (PlayerPawn(Owner).Player == None)) {
    PlayerPawn(Owner).WalkBob = vect(0,0,0);
  }
  newRot = swayRot;
  SetLocation(owner.location + CalcWeaponOffset());
  if (Hand == 0) newRot.Roll = -2 * Default.Rotation.Roll;
  else newRot.Roll = Default.Rotation.Roll * Hand;
  setRotation(newRot);
  C.DrawActor(self, false);
}

simulated final function vector CalcWeaponOffset() {
  local vector DrawOffset, WeaponBob;
  local Pawn PawnOwner;
     
  PawnOwner = Pawn(Owner);
  DrawOffset = ((0.01 * PlayerViewOffset) >> swayRot);
       
  if ((Level.NetMode == NM_DedicatedServer) || 
      ((Level.NetMode == NM_ListenServer) &&
      (Owner.RemoteRole == ROLE_AutonomousProxy))) {
    DrawOffset += (PawnOwner.BaseEyeHeight * vect(0,0,1));
  } else {      
    DrawOffset += (PawnOwner.EyeHeight * vect(0,0,1));
    WeaponBob = BobDamping * PawnOwner.WalkBob;
    WeaponBob.Z = (0.45 + 0.55 * BobDamping) * PawnOwner.WalkBob.Z;
    DrawOffset += WeaponBob;
  }
  return DrawOffset;
}

defaultproperties {
  swayCoefficient=10
  vertCoefficient=20
  cutoff=1
  yawClamp=4096
}

