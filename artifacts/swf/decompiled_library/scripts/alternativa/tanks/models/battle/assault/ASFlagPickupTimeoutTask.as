package alternativa.tanks.models.battle.assault
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   
   public class ASFlagPickupTimeoutTask implements §dynamic switch break§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var callback:§52142381823831123423632234§;
      
      private var §5214233979233992123423632234§:int;
      
      private var §5214234292234305123423632234§:int;
      
      public function ASFlagPickupTimeoutTask(param1:int, param2:§52142381823831123423632234§, param3:int)
      {
         super();
         this.§5214234292234305123423632234§ = param1;
         this.callback = param2;
         this.§5214233979233992123423632234§ = param3;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(param1 >= this.§5214233979233992123423632234§)
         {
            §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
            this.callback.onPickupTimeoutPassed(this.§5214234292234305123423632234§);
         }
      }
   }
}

