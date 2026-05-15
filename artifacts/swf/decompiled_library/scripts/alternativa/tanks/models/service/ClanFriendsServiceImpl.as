package alternativa.tanks.models.service
{
   import alternativa.tanks.service.clan.ClanFriendsService;
   import flash.events.EventDispatcher;
   
   public class ClanFriendsServiceImpl extends EventDispatcher implements ClanFriendsService
   {
      
      private var §5214232203232216123423632234§:Vector.<String>;
      
      public function ClanFriendsServiceImpl()
      {
         super();
      }
      
      public function get clanMembers() : Vector.<String>
      {
         return this.§5214232203232216123423632234§;
      }
      
      public function set clanMembers(param1:Vector.<String>) : void
      {
         this.§5214232203232216123423632234§ = param1;
      }
   }
}

