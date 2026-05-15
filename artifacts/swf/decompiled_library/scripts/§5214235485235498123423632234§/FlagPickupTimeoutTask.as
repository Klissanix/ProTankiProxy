package §5214235485235498123423632234§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   
   public class FlagPickupTimeoutTask implements §dynamic switch break§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var callback:§true var finally§;
      
      private var §5214233979233992123423632234§:int;
      
      public function FlagPickupTimeoutTask(param1:§true var finally§, param2:int)
      {
         super();
         this.callback = param1;
         this.§5214233979233992123423632234§ = param2;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(param1 >= this.§5214233979233992123423632234§)
         {
            §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
            this.callback.onPickupTimeoutPassed();
         }
      }
   }
}

