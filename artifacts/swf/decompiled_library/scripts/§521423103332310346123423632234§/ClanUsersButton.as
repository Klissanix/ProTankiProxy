package §521423103332310346123423632234§
{
   import §5214233242233255123423632234§.§5214233364233377123423632234§;
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.models.service.ClanService;
   import flash.display.Bitmap;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.RestrictionJoinClanEvent;
   
   public class ClanUsersButton extends §5214233364233377123423632234§ implements §521423138122313825123423632234§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §521423120212312034123423632234§:Class = §c42h146_png$da11891e81bf803c8b02716950136901-776867355§;
      
      private var §521423110882311101123423632234§:Bitmap = new §521423120212312034123423632234§() as Bitmap;
      
      public function ClanUsersButton()
      {
         super();
         addChild(this.§521423110882311101123423632234§);
         this.§521423110882311101123423632234§.y = -6;
         §5214234066234079123423632234§.addEventListener("RestrictionJoinClanEvent.UPDATE",this.d112670d);
      }
      
      private function d112670d(param1:RestrictionJoinClanEvent) : void
      {
         this.updateNotifications();
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.§521423110882311101123423632234§.x = width - 10;
      }
      
      override public function set enable(param1:Boolean) : void
      {
         super.enable = param1;
         this.updateNotifications();
      }
      
      public function updateNotifications() : void
      {
         this.§521423110882311101123423632234§.visible = ClanNotificationsManager.acceptedAndIncomingCount() > 0 && this.enable;
      }
   }
}

