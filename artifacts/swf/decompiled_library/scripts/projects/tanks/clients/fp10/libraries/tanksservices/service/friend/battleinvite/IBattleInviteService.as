package projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite
{
   import flash.events.IEventDispatcher;
   import flash.media.Sound;
   
   public interface IBattleInviteService extends IEventDispatcher
   {
      
      function removeInvite(param1:String) : void;
      
      function get receiveBattleInvite() : Boolean;
      
      function getAvailabilityInviteBattle(param1:String) : Boolean;
      
      function playNotificationSound() : void;
      
      function set notificationSound(param1:Sound) : void;
      
      function reject(param1:String) : void;
      
      function accept(param1:String, param2:String, param3:String, param4:Boolean) : void;
      
      function set receiveBattleInvite(param1:Boolean) : void;
      
      function invite(param1:String) : void;
   }
}

