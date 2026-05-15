package §if catch null§
{
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteEnableEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import §return package with§.§52142324623259123423632234§;
   import §return package with§.§null use static§;
   
   public class NotificationEnabledModel extends §null use static§ implements §52142324623259123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public function NotificationEnabledModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         §5214233439233452123423632234§.receiveBattleInvite = §switch var switch§().§true use dynamic§;
         §5214233439233452123423632234§.addEventListener("BattleInviteEnableEvent.UPDATE",this.d642c869);
      }
      
      public function objectUnloaded() : void
      {
         §5214233439233452123423632234§.removeEventListener("BattleInviteEnableEvent.UPDATE",this.d642c869);
      }
      
      private function d642c869(param1:BattleInviteEnableEvent) : void
      {
         §521423120492312062123423632234§.§521423122082312221123423632234§(param1.enable);
      }
   }
}

