package §static var set§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §dynamic for get§ implements §521423117662311779123423632234§
   {
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §const const finally§:§5214239411239424123423632234§;
      
      public function §dynamic for get§(param1:§5214239411239424123423632234§)
      {
         super();
         this.§const const finally§ = param1;
         §521423131302313143123423632234§.addEventListener("BattleInputLockEvent.INPUT_LOCKED",this.§catch var override§);
         §521423131302313143123423632234§.addEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.§5214234171234184123423632234§);
      }
      
      private function §catch var override§(param1:BattleInputLockEvent) : void
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc2_.§return use function§(this.§const const finally§.§5214233939233952123423632234§(),2);
         _loc2_.§5214237440237453123423632234§(this.§const const finally§.§5214233939233952123423632234§()).§get catch import§(2,true);
      }
      
      public function close() : void
      {
         §521423131302313143123423632234§.removeEventListener("BattleInputLockEvent.INPUT_LOCKED",this.§catch var override§);
         §521423131302313143123423632234§.removeEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.§5214234171234184123423632234§);
         this.§const const finally§ = null;
      }
      
      private function §5214234171234184123423632234§(param1:BattleInputLockEvent) : void
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc2_.§super set static§(this.§const const finally§.§5214233939233952123423632234§(),2);
         _loc2_.§5214237440237453123423632234§(this.§const const finally§.§5214233939233952123423632234§()).§52142390823921123423632234§(2);
      }
   }
}

