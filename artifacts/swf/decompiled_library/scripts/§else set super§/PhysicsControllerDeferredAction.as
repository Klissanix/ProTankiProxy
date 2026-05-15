package §else set super§
{
   import alternativa.tanks.battle.§521423117892311802123423632234§;
   import alternativa.tanks.battle.§5214233428233441123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   
   public class PhysicsControllerDeferredAction extends BattleRunnerProvider implements §5214233428233441123423632234§
   {
      
      private var controller:§521423117892311802123423632234§;
      
      private var add:Boolean;
      
      public function PhysicsControllerDeferredAction(param1:§521423117892311802123423632234§, param2:Boolean)
      {
         super();
         this.controller = param1;
         this.add = param2;
      }
      
      public function execute() : void
      {
         if(this.add)
         {
            getBattleRunner().addPhysicsController(this.controller);
         }
         else
         {
            getBattleRunner().removePhysicsController(this.controller);
         }
      }
   }
}

