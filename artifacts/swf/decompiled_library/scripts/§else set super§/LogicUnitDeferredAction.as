package §else set super§
{
   import alternativa.tanks.battle.§5214233428233441123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.§dynamic switch break§;
   
   public class LogicUnitDeferredAction extends BattleRunnerProvider implements §5214233428233441123423632234§
   {
      
      private var §for switch implements§:§dynamic switch break§;
      
      private var add:Boolean;
      
      public function LogicUnitDeferredAction(param1:§dynamic switch break§, param2:Boolean)
      {
         super();
         this.§for switch implements§ = param1;
         this.add = param2;
      }
      
      public function execute() : void
      {
         if(this.add)
         {
            getBattleRunner().addLogicUnit(this.§for switch implements§);
         }
         else
         {
            getBattleRunner().removeLogicUnit(this.§for switch implements§);
         }
      }
   }
}

