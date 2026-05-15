package alternativa.tanks.service.clan
{
   import flash.events.IEventDispatcher;
   
   public interface ClanFriendsService extends IEventDispatcher
   {
      
      function set clanMembers(param1:Vector.<String>) : void;
      
      function get clanMembers() : Vector.<String>;
   }
}

