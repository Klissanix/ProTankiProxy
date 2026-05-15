package projects.tanks.clients.fp10.libraries.tanksservices.service.battle
{
   import flash.events.EventDispatcher;
   
   public class BattleInfoService extends EventDispatcher implements IBattleInfoService
   {
      
      private var §5214235730235743123423632234§:String;
      
      private var §class package use§:String;
      
      private var §true package import§:int;
      
      private var §for catch extends§:int;
      
      private var §static for function§:Boolean;
      
      private var §5214233325233338123423632234§:Boolean;
      
      private var §var set continue§:Boolean;
      
      private var §5214233645233658123423632234§:Boolean;
      
      public function BattleInfoService()
      {
         super();
      }
      
      public function battleLoad() : void
      {
         dispatchEvent(new BattleInfoServiceEvent("BattleInfoServiceEvent.BATTLE_LOAD"));
      }
      
      public function battleRestart() : void
      {
         dispatchEvent(new BattleInfoServiceEvent("BattleInfoServiceEvent.BATTLE_RESTART"));
      }
      
      public function get currentSelectionBattleId() : String
      {
         return this.§class package use§;
      }
      
      public function resetCurrentSelectionBattleId() : void
      {
         this.§class package use§ = null;
         dispatchEvent(new BattleInfoServiceEvent("BattleInfoServiceEvent.RESET_SELECTION_BATTLE"));
      }
      
      public function set battleActive(param1:Boolean) : void
      {
         this.§var set continue§ = param1;
      }
      
      public function setCurrentSelectionBattle(param1:String, param2:int, param3:int) : void
      {
         this.§class package use§ = param1;
         this.§true package import§ = param2;
         this.§for catch extends§ = param3;
         dispatchEvent(new BattleInfoServiceEvent("BattleInfoServiceEvent.SELECTION_BATTLE"));
      }
      
      public function hasCurrentBattleId() : Boolean
      {
         return this.§5214235730235743123423632234§ != null;
      }
      
      public function hasCurrentSelectionBattleId() : Boolean
      {
         return this.§class package use§ != null;
      }
      
      public function set currentBattleId(param1:String) : void
      {
         this.§5214235730235743123423632234§ = param1;
      }
      
      public function set spectator(param1:Boolean) : void
      {
         this.§static for function§ = param1;
      }
      
      public function get spectator() : Boolean
      {
         return this.§static for function§;
      }
      
      public function isSpectatorMode() : Boolean
      {
         return this.§static for function§;
      }
      
      public function isInBattle() : Boolean
      {
         return this.§5214233645233658123423632234§;
      }
      
      public function resetCurrentBattle() : void
      {
         this.§static for function§ = false;
         this.§5214235730235743123423632234§ = null;
         if(this.§class package use§ != null)
         {
         }
         dispatchEvent(new BattleInfoServiceEvent("BattleInfoServiceEvent.BATTLE_UNLOAD"));
      }
      
      public function set reArmorEnabled(param1:Boolean) : void
      {
         this.§5214233325233338123423632234§ = param1;
      }
      
      public function setInBattle(param1:Boolean) : void
      {
         this.§5214233645233658123423632234§ = param1;
      }
      
      public function get currentBattleId() : String
      {
         return this.§5214235730235743123423632234§;
      }
      
      public function availableRank(param1:int) : Boolean
      {
         if(this.hasCurrentSelectionBattleId())
         {
            return param1 >= this.§true package import§ && param1 <= this.§for catch extends§;
         }
         return false;
      }
      
      public function get reArmorEnabled() : Boolean
      {
         return this.§5214233325233338123423632234§;
      }
      
      public function get battleActive() : Boolean
      {
         return this.§var set continue§;
      }
   }
}

