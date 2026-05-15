package alternativa.tanks.models.battle.battlefield
{
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §var const get§.§each const set§;
   
   public class FollowCameraControllerLocker
   {
      
      public static var §5214236492236505123423632234§:BattleInputService;
      
      private var §import catch false§:§each const set§;
      
      public function FollowCameraControllerLocker(param1:§each const set§)
      {
         super();
         this.§import catch false§ = param1;
         §5214236492236505123423632234§.addEventListener("BattleInputLockEvent.INPUT_LOCKED",this.a6f9cf12);
         §5214236492236505123423632234§.addEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.b419c4f2);
         if(§5214236492236505123423632234§.isInputLocked())
         {
            param1.§52142397723990123423632234§();
         }
      }
      
      private function a6f9cf12(param1:BattleInputLockEvent) : void
      {
         this.§import catch false§.§52142397723990123423632234§();
      }
      
      public function close() : void
      {
         this.§import catch false§ = null;
         §5214236492236505123423632234§.removeEventListener("BattleInputLockEvent.INPUT_LOCKED",this.a6f9cf12);
         §5214236492236505123423632234§.removeEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.b419c4f2);
      }
      
      private function b419c4f2(param1:BattleInputLockEvent) : void
      {
         this.§import catch false§.§return set while§();
      }
   }
}

