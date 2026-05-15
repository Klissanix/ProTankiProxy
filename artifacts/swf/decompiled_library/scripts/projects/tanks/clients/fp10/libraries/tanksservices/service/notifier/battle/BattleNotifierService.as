package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle
{
   import flash.events.EventDispatcher;
   import §throw package function§.BattleLinkData;
   
   public class BattleNotifierService extends EventDispatcher implements IBattleNotifierService
   {
      
      public function BattleNotifierService()
      {
         super();
      }
      
      public function leaveBattle(param1:String) : void
      {
         dispatchEvent(new LeaveBattleNotifierServiceEvent("LeaveBattleNotifierServiceEvent.LEAVE_BATTLE",param1));
      }
      
      public function setBattle(param1:Vector.<BattleLinkData>) : void
      {
         dispatchEvent(new SetBattleNotifierServiceEvent("SetBattleNotifierServiceEvent.SET_BATTLE",param1));
      }
   }
}

