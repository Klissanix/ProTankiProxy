package alternativa.tanks.service.clan
{
   import flash.events.IEventDispatcher;
   
   public interface ClanPanelNotificationService extends IEventDispatcher
   {
      
      function set restrictionTimeJoinClanInSec(param1:int) : void;
      
      function numberNotification() : int;
      
      function set clanButtonVisible(param1:Boolean) : void;
      
      function remove() : void;
      
      function add() : void;
      
      function get clanButtonVisible() : Boolean;
      
      function get restrictionTimeJoinClanInSec() : int;
      
      function init(param1:int) : void;
   }
}

