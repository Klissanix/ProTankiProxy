package §else set super§
{
   import alternativa.tanks.battle.§5214232465232478123423632234§;
   import alternativa.tanks.battle.§5214233428233441123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   
   public class RemovePostPhysicsController extends BattleRunnerProvider implements §5214233428233441123423632234§
   {
      
      private var controller:§5214232465232478123423632234§;
      
      public function RemovePostPhysicsController(param1:§5214232465232478123423632234§)
      {
         super();
         this.controller = param1;
      }
      
      public function execute() : void
      {
         getBattleRunner().removePostPhysicsController(this.controller);
      }
   }
}

