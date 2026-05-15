package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle
{
   import flash.events.IEventDispatcher;
   import §throw package function§.BattleLinkData;
   
   public interface IBattleNotifierService extends IEventDispatcher
   {
      
      function leaveBattle(param1:String) : void;
      
      function setBattle(param1:Vector.<BattleLinkData>) : void;
   }
}

