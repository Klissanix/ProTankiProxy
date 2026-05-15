package §5214233242233255123423632234§
{
   import §521423103332310346123423632234§.ClanUsersButton;
   import §5214232607232620123423632234§.§521423133912313404123423632234§;
   import §5214232607232620123423632234§.§native set finally§;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanInfoUpdateEvent;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import §continue switch package§.§var use true§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §function const try§.§set const for§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §null set native§ extends §native set finally§
   {
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §const for import§:ClanService;
      
      public static var §5214233864233877123423632234§:CommandService;
      
      private static const §if throw§:int = 30;
      
      private static const §5214236332236345123423632234§:int = 11;
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private var §override for finally§:§521423120252312038123423632234§;
      
      private var §return package static§:§521423133912313404123423632234§ = new §521423133912313404123423632234§();
      
      private var §521423100322310045123423632234§:§continue package switch§;
      
      private var §continue switch in§:ClanUsersButton;
      
      private var §else use dynamic§:§5214239106239119123423632234§;
      
      private var §get use implements§:§implements for super§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var §case catch§:§52142376523778123423632234§;
      
      public function §null set native§(param1:§521423120252312038123423632234§)
      {
         §5214232433232446123423632234§ = §var use true§.§set for static§("CLAN_HEADER_CLAN");
         this.§override for finally§ = param1;
         addChild(§5214232433232446123423632234§);
         this.init();
         super();
         var _temp_3:* = this;
         var _loc2_:Model = Model;
         _temp_3.§case catch§ = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.space;
      }
      
      private function init() : void
      {
         §5214232433232446123423632234§.addChild(this.§return package static§);
         this.§else use dynamic§ = new §5214239106239119123423632234§(this.§override for finally§);
         §5214232433232446123423632234§.addChild(this.§else use dynamic§);
         this.§521423100322310045123423632234§ = new §continue package switch§(this.§override for finally§);
         this.§get use implements§ = new §implements for super§(this.§override for finally§);
         this.§return package static§.§5214238661238674123423632234§(§5214236363236376123423632234§.getText("CLAN_BUTTON_PROFILE"),this.§get use implements§,§5214233364233377123423632234§);
         this.§continue switch in§ = ClanUsersButton(this.§return package static§.§5214238661238674123423632234§(§5214236363236376123423632234§.getText("CLAN_MEMBERS"),this.§521423100322310045123423632234§,ClanUsersButton));
         ClanNotificationsManager.addAcceptedIndicatorListener(this.§continue switch in§);
         ClanNotificationsManager.addIncomingIndicatorListener(this.§continue switch in§);
         addEventListener("ClanInfoUpdateEvent.UPDATE",this.§do break§);
         this.§continue switch in§.updateNotifications();
         this.§return package static§.§5214236239236252123423632234§(0);
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         this.closeButton.addEventListener("click",this.§521423122312312244123423632234§);
         §5214232433232446123423632234§.addChild(this.closeButton);
         this.§52142326923282123423632234§();
      }
      
      override public function §52142326923282123423632234§(param1:Event = null) : void
      {
         super.§52142326923282123423632234§(param1);
         §5214232433232446123423632234§.height = 30 + 2 * 11 + 7 + this.§else use dynamic§.height;
         this.§else use dynamic§.x = 11;
         this.§else use dynamic§.y = 7 + 11 + 30;
         this.§else use dynamic§.width = width - 2 * 11;
         this.§return package static§.width = width;
         this.§return package static§.height = height;
         this.closeButton.y = height - 42;
         this.closeButton.x = width / 2 - this.closeButton.width / 2;
         this.§return package static§.§52142326923282123423632234§();
      }
      
      private function §521423122312312244123423632234§(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<§521423120252312038123423632234§> = this.§case catch§.objects;
         var _loc2_:int = int(_loc3_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc3_[_loc4_].hasModel(§set const for§))
            {
               this.§case catch§.destroyObject(_loc3_[_loc4_].id);
               break;
            }
            _loc4_++;
         }
      }
      
      public function §521423136072313620123423632234§(param1:String) : void
      {
         §const for import§.clanMembers.push(param1);
         this.§521423100322310045123423632234§.§super catch use§(param1);
         this.§else use dynamic§.§null const static§();
         this.§get use implements§.§null const static§();
      }
      
      private function §do break§(param1:ClanInfoUpdateEvent) : void
      {
         this.§get use implements§.§with use var§(param1);
         this.§else use dynamic§.§521423104552310468123423632234§(param1.§5214231550231563123423632234§);
      }
      
      public function §52142316723180123423632234§() : void
      {
         this.§521423100322310045123423632234§.§52142316723180123423632234§();
      }
      
      public function §5214237054237067123423632234§(param1:String) : void
      {
         var _loc2_:int = §const for import§.clanMembers.indexOf(param1);
         if(_loc2_ >= 0)
         {
            §const for import§.clanMembers.splice(_loc2_,1);
            this.§521423100322310045123423632234§.§default catch super§(param1);
            this.§else use dynamic§.§use set with§();
            this.§get use implements§.§use set with§();
         }
      }
      
      override public function destroy() : void
      {
         ClanNotificationsManager.clearListeners();
         ClanUserNotificationsManager.resetManager();
         §5214236221236234123423632234§.§continue catch each§();
         §521423125692312582123423632234§.§continue catch each§();
         if(§5214232433232446123423632234§ != null)
         {
            §5214232433232446123423632234§.removeChild(this.§return package static§);
            this.§return package static§.destroy();
            this.§return package static§ = null;
         }
         super.destroy();
      }
   }
}

