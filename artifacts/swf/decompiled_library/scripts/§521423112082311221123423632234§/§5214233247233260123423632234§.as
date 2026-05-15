package §521423112082311221123423632234§
{
   import §5214231792231805123423632234§.LabelNewIndicator;
   import §5214231792231805123423632234§.NewCandidateIndicator;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §super for import§.§5214236680236693123423632234§;
   import §super for import§.§5214238310238323123423632234§;
   import §super for import§.§implements switch extends§;
   
   public class §5214233247233260123423632234§ extends §implements switch extends§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var §package set for§:LabelNewIndicator;
      
      private var §each use get§:String;
      
      public function §5214233247233260123423632234§(param1:String)
      {
         super();
         this.§each use get§ = param1;
         §default finally finally§ = §5214233788233801123423632234§(param1);
         addChild(§default finally finally§);
         §while in§ = new §5214236680236693123423632234§();
         addChild(§while in§);
         §while in§.visible = false;
         §5214235990236003123423632234§ = new §5214238310238323123423632234§();
         addChild(§5214235990236003123423632234§);
         §5214235990236003123423632234§.visible = false;
         §while in§.addEventListener("click",this.§continue var var§,false,0,true);
         §5214235990236003123423632234§.addEventListener("click",this.§final use for§,false,0,true);
         this.§package set for§ = this.§include switch extends§();
         ClanNotificationsManager.addIncomingIndicatorListener(this.§package set for§);
         this.§package set for§.updateNotifications();
         addChild(this.§package set for§);
         this.§52142326923282123423632234§();
      }
      
      private function §final use for§(param1:MouseEvent) : void
      {
         dispatchEvent(new ClanMembersListEvent("ClanMembersListEvent.ACCEPTED_USER",§521423107212310734123423632234§.§each use get§,§521423107212310734123423632234§.uid,true,true));
      }
      
      private function §continue var var§(param1:MouseEvent) : void
      {
         ClanNotificationsManager.removeIncomingNotification(§521423107212310734123423632234§.§each use get§);
         dispatchEvent(new ClanMembersListEvent("ClanMembersListEvent.REJECT_USER",§521423107212310734123423632234§.§each use get§,§521423107212310734123423632234§.uid,true,true));
      }
      
      override protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         §default finally finally§.x = 10;
         §default finally finally§.y = 1;
         §default finally finally§.width = width - 2 * 10;
         §while in§.x = width - §while in§.width - 6;
         §while in§.y = 1;
         §5214235990236003123423632234§.x = §while in§.x - §5214235990236003123423632234§.width - 2;
         §5214235990236003123423632234§.y = 1;
         this.§package set for§.x = width - this.§package set for§.width - 8;
         §extends for return§();
      }
      
      private function §include switch extends§() : NewCandidateIndicator
      {
         var _loc1_:NewCandidateIndicator = new NewCandidateIndicator(this.§each use get§);
         _loc1_.autoSize = "left";
         _loc1_.align = "left";
         _loc1_.color = 5898034;
         _loc1_.text = §5214236363236376123423632234§.getText("FRIENDS_NEW");
         _loc1_.mouseEnabled = false;
         return _loc1_;
      }
   }
}

