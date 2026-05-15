package §5214233242233255123423632234§
{
   import §521423103332310346123423632234§.ClanButtonActionListener;
   import §521423103332310346123423632234§.ClanIncomingRequestsButton;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import §final use false§.§5214232479232492123423632234§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanFunctionsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import §set switch use§.§521423130152313028123423632234§;
   
   public class §continue package switch§ extends DiscreteSprite
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §break use do§:IAlertService;
      
      public static var §const for import§:ClanService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §static package var§:ClanFunctionsService;
      
      public static var §521423112062311219123423632234§:ClanMembersDataService;
      
      private static var §5214232625232638123423632234§:String;
      
      private static var §if const catch§:String;
      
      private static const §5214236332236345123423632234§:int = 11;
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private static const §if throw§:int = 30;
      
      private var §5214231895231908123423632234§:§include return§;
      
      private var §5214234013234026123423632234§:§native for dynamic§;
      
      private var §521423110602311073123423632234§:§521423130152313028123423632234§;
      
      private var §final const final§:ClanButtonActionListener;
      
      private var §return set do§:ClanIncomingRequestsButton;
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      private var §override for finally§:§521423120252312038123423632234§;
      
      public function §continue package switch§(param1:§521423120252312038123423632234§)
      {
         super();
         this.§override for finally§ = param1;
         this.§5214234013234026123423632234§ = new §native for dynamic§();
         addChild(this.§5214234013234026123423632234§);
         this.§5214231895231908123423632234§ = new §include return§(this.§5214237851237864123423632234§,this.§do finally set§,4278985229);
         this.§5214231895231908123423632234§.§5214238301238314123423632234§ = true;
         this.§5214234013234026123423632234§.addChild(this.§5214231895231908123423632234§);
         var _loc2_:§5214232479232492123423632234§ = §5214232479232492123423632234§(param1.adapt(§5214232479232492123423632234§));
         this.§521423110602311073123423632234§ = new §521423130152313028123423632234§();
         var _loc4_:Vector.<Object> = new Vector.<Object>();
         for each(var _loc3_ in _loc2_.§5214239662239675123423632234§())
         {
            _loc4_[_loc4_.length] = §521423112062311219123423632234§.getClanMemberData(_loc3_);
         }
         this.§521423110602311073123423632234§.§5214233993234006123423632234§(_loc4_);
         this.§521423110602311073123423632234§.addEventListener("ClanMembersListEvent.REMOVE_USER",this.§5214233826233839123423632234§);
         this.§5214231895231908123423632234§.addChild(this.§521423110602311073123423632234§);
         this.§final const final§ = new ClanButtonActionListener(§5214238194238207123423632234§.§throw for try§);
         this.§return set do§ = new ClanIncomingRequestsButton(this.§final const final§,this);
         this.§final const final§.width = 120;
         this.§return set do§.width = 120;
         §521423125692312582123423632234§.§5214232598232611123423632234§(this.§final const final§);
         this.§final const final§.label = §5214236363236376123423632234§.getText("CLAN_INVITE");
         this.§final const final§.updateActions();
         this.§final const final§.addEventListener("click",this.§null const true§);
         addChild(this.§final const final§);
         §521423125692312582123423632234§.§5214232598232611123423632234§(this.§return set do§);
         ClanNotificationsManager.addIncomingIndicatorListener(this.§return set do§);
         this.§return set do§.label = §5214236363236376123423632234§.getText("CLAN_INCOMING");
         this.§return set do§.updateActions();
         this.§return set do§.updateNotifications();
         this.§return set do§.addEventListener("click",this.§while use case§);
         addChild(this.§return set do§);
         addEventListener("addedToStage",this.§521423123832312396123423632234§);
      }
      
      private static function §try catch null§() : String
      {
         if(§5214232625232638123423632234§ == null)
         {
            §5214232625232638123423632234§ = §while for package§.getCurrentUserId();
         }
         return §5214232625232638123423632234§;
      }
      
      public function §52142316723180123423632234§() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_ALERT_CLAN_FULL"));
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §super catch use§(param1:String) : void
      {
         this.§521423110602311073123423632234§.§super catch use§(§521423112062311219123423632234§.getClanMemberData(param1));
      }
      
      private function §set use function§(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§set use function§);
         if(param1.typeButton == §5214236363236376123423632234§.getText("FRIENDS_YES"))
         {
            §static package var§.leave();
         }
      }
      
      private function §each const case§(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§each const case§);
         if(param1.typeButton == §5214236363236376123423632234§.getText("FRIENDS_YES") && §if const catch§ != null)
         {
            §static package var§.exclude(§if const catch§);
            §if const catch§ = null;
         }
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§5214234013234026123423632234§.y = 120 + 11 - 3;
         this.§5214234013234026123423632234§.width = this.width;
         this.§5214234013234026123423632234§.height = this.height - this.§5214234013234026123423632234§.y;
         this.§5214231895231908123423632234§.x = 11;
         this.§5214231895231908123423632234§.y = 11;
         var _loc2_:int = this.§5214234013234026123423632234§.width - 2 * 11;
         this.§5214231895231908123423632234§.width = _loc2_;
         this.§5214231895231908123423632234§.height = this.§5214234013234026123423632234§.height - 2 * 11 - 7 - 30;
         this.§521423110602311073123423632234§.x = 3;
         this.§521423110602311073123423632234§.y = 3;
         this.§521423110602311073123423632234§.width = _loc2_ - 6;
         this.§521423110602311073123423632234§.height = this.§5214231895231908123423632234§.height - 4;
         this.§return set do§.x = this.width - this.§return set do§.width - 11;
         this.§return set do§.y = this.height - this.§final const final§.height - 11 - 1;
         this.§final const final§.x = (this.§return set do§.visible ? this.§return set do§.x : this.width - 11) - 7 - this.§final const final§.width;
         this.§final const final§.y = this.§return set do§.y;
      }
      
      public function §default catch super§(param1:String) : void
      {
         this.§521423110602311073123423632234§.§default catch super§(param1);
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
      
      private function §while use case§(param1:MouseEvent) : void
      {
         new §import const while§(this.§override for finally§);
      }
      
      private function §null const true§(param1:MouseEvent) : void
      {
         new §const finally var§(this.§override for finally§);
      }
      
      private function §521423123832312396123423632234§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§521423123832312396123423632234§);
         addEventListener("removedFromStage",this.§521423109452310958123423632234§);
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§();
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      private function §5214233826233839123423632234§(param1:ClanMembersListEvent) : void
      {
         if(param1.userId == §try catch null§())
         {
            §break use do§.showAlert(§5214236363236376123423632234§.getText("CLAN_ALERT_LEAVE_CLAN"),Vector.<String>([§5214236363236376123423632234§.getText("FRIENDS_YES"),§5214236363236376123423632234§.getText("FRIENDS_CANCEL_BUTTON_TEXT")]));
            §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§set use function§);
         }
         else
         {
            §break use do§.showAlert(§5214236363236376123423632234§.getText("CLAN_ALERT_REMOVE_PLAYER").replace("%USERNAME%",param1.§const var§),Vector.<String>([§5214236363236376123423632234§.getText("FRIENDS_YES"),§5214236363236376123423632234§.getText("FRIENDS_CANCEL_BUTTON_TEXT")]));
            §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§each const case§);
            §if const catch§ = param1.userId;
         }
      }
      
      private function §521423109452310958123423632234§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§521423109452310958123423632234§);
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
         addEventListener("addedToStage",this.§521423123832312396123423632234§);
      }
   }
}

