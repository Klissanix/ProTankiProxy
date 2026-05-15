package alternativa.tanks.service.battlecreate
{
   import flash.events.EventDispatcher;
   
   public class BattleCreateFormService extends EventDispatcher implements IBattleCreateFormService
   {
      
      private var §in const package§:Boolean;
      
      private var §in var include§:Boolean;
      
      public function BattleCreateFormService()
      {
         super();
      }
      
      public function set hasProAbonement(param1:Boolean) : void
      {
         this.§in var include§ = param1;
      }
      
      public function set battleCreationDisabled(param1:Boolean) : void
      {
         this.§in const package§ = param1;
      }
      
      public function showForm() : void
      {
         dispatchEvent(new BattleCreateFormServiceEvent("BattleCreateFormServiceEvent.SHOW_FORM"));
      }
      
      public function get hasProAbonement() : Boolean
      {
         return this.§in var include§;
      }
      
      public function hideForm() : void
      {
         dispatchEvent(new BattleCreateFormServiceEvent("BattleCreateFormServiceEvent.HIDE_FORM"));
      }
      
      public function get battleCreationDisabled() : Boolean
      {
         return this.§in const package§;
      }
   }
}

