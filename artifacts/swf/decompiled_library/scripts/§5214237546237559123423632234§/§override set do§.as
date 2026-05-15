package §5214237546237559123423632234§
{
   import alternativa.tanks.service.clan.ClanPanelNotificationService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §true switch true§.§set const while§;
   
   public class §override set do§ extends §set const while§
   {
      
      public static var §521423108572310870123423632234§:ClanPanelNotificationService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private static var §521423103532310366123423632234§:Class = §c42h146_png$da11891e81bf803c8b02716950136901-776867355§;
      
      private static var §5214237050237063123423632234§:BitmapData = Bitmap(new §521423103532310366123423632234§()).bitmapData;
      
      private var §521423110882311101123423632234§:Bitmap = new Bitmap(§5214237050237063123423632234§);
      
      public function §override set do§()
      {
         super();
         §521423108572310870123423632234§.addEventListener("ClanPanelNotificationEvent.UPDATE",this.§521423120402312053123423632234§);
         §521423108572310870123423632234§.addEventListener("RestrictionJoinClanEvent.UPDATE",this.§521423120402312053123423632234§);
         this.§521423110882311101123423632234§.x = 9;
         this.§521423110882311101123423632234§.y = -4;
         addChild(this.§521423110882311101123423632234§);
         this.§521423120402312053123423632234§();
      }
      
      public function §521423120402312053123423632234§(param1:Event = null) : void
      {
         if(enable)
         {
            this.§521423110882311101123423632234§.visible = §521423108572310870123423632234§.numberNotification() > 0;
         }
         else
         {
            this.§521423110882311101123423632234§.visible = false;
         }
      }
      
      override public function set enable(param1:Boolean) : void
      {
         if(§continue for final§.getCurrentState() == LayoutState.CLAN && !§5214234066234079123423632234§.selfClan)
         {
            param1 = true;
         }
         super.enable = param1;
         this.§521423120402312053123423632234§();
      }
   }
}

