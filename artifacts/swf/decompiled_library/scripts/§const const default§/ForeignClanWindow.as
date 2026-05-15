package §const const default§
{
   import §521423108422310855123423632234§.§52142386123874123423632234§;
   import §521423133592313372123423632234§.DateFormatter;
   import §521423138062313819123423632234§.§if set class§;
   import §5214233087233100123423632234§.§throw for true§;
   import §5214233242233255123423632234§.§in catch dynamic§;
   import §5214233242233255123423632234§.§throw package import§;
   import §5214233785233798123423632234§.§include return§;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.foreignclan.ForeignClanService;
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §set switch use§.§521423130152313028123423632234§;
   import §super for case§.§get var extends§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§do var const§;
   import §try const default§.§5214234011234024123423632234§;
   import utils.TimeFormatter;
   
   public class ForeignClanWindow extends §get var extends§
   {
      
      public static var §5214239670239683123423632234§:ClanCreateService;
      
      public static var §true switch package§:IUserPropertiesService;
      
      public static var §5214238647238660123423632234§:ForeignClanService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const WIDTH:Number = 900;
      
      public static const §return switch if§:Number = 500;
      
      private static const §521423128532312866123423632234§:int = 231;
      
      private static const §521423127772312790123423632234§:Class = §c2g92b7_png$bc903ad4a578d5c46773c941e48ccf41-1176160889§;
      
      private static const §5214233856233869123423632234§:Class = S3ce3a8_png$3aeb2d4d6c2fffc456454d746427be91377809409;
      
      private static const §5214238770238783123423632234§:Class = D7egh74_png$8f4a193169eda132f349e9adc8b73c981532332761;
      
      private static const §521423120372312050123423632234§:Class = §a5e7982_png$ab59a6707a3f96f65408804ab2effd8e-1799205282§;
      
      private static const §false switch extends§:Class = §f2c85g5_png$287a04e0b5548f56c94984499c7c8fab-323279285§;
      
      private var §5214231480231493123423632234§:Bitmap = new §521423127772312790123423632234§();
      
      private var §return const set§:§include return§;
      
      private var §true include§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §get var with§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §static package switch§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §52142391623929123423632234§:§5214234011234024123423632234§;
      
      private var §5214232100232113123423632234§:§5214231141231154123423632234§;
      
      private var §final use each§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §5214234137234150123423632234§:§in catch dynamic§;
      
      private var §false var override§:§in catch dynamic§;
      
      private var §5214238949238962123423632234§:§in catch dynamic§;
      
      private var §native package else§:§in catch dynamic§;
      
      private var §true const final§:§in catch dynamic§;
      
      private var description:§throw package import§;
      
      private var §5214231895231908123423632234§:§include return§;
      
      private var list:§521423130152313028123423632234§;
      
      private var §521423116842311697123423632234§:uint = 0;
      
      private var §521423138672313880123423632234§:int = 0;
      
      private var §throw switch§:§52142386123874123423632234§;
      
      private var sendRequestButton:§do var const§ = new §do var const§();
      
      public function ForeignClanWindow(param1:§52142386123874123423632234§)
      {
         super();
         this.§throw switch§ = param1;
         this.a16ac10c(param1);
         this.f48008a3(param1);
         this.initDescription(param1);
         this.b1f85036(param1);
      }
      
      private function onJoinClan(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.onJoinClan);
         §5214238647238660123423632234§.destroyWindow();
      }
      
      override public function get height() : Number
      {
         return 500;
      }
      
      public function getKD(param1:§if set class§) : Number
      {
         var _loc3_:Number = param1.deaths;
         var _loc2_:Number = param1.kills;
         if(_loc3_ == 0)
         {
            return _loc2_;
         }
         return _loc2_ / _loc3_;
      }
      
      private function f352c863(param1:MouseEvent) : void
      {
         §5214238647238660123423632234§.sendRequest();
         this.sendRequestButton.removeEventListener("click",this.f352c863);
         this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_REMOVE_REQUEST_TO_CLAN");
         this.sendRequestButton.addEventListener("click",this.d1e12daa);
      }
      
      public function joinClan(param1:String) : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_JOINED_CLAN"));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.onJoinClan);
      }
      
      public function clanBlocked(param1:String) : void
      {
         §break use do§.showOkAlert(param1);
         this.sendRequestButton.visible = false;
      }
      
      private function c1a030e3(param1:MouseEvent) : void
      {
         §5214238647238660123423632234§.acceptRequest();
         this.sendRequestButton.enabled = false;
      }
      
      override public function destroy() : void
      {
         if(this.§521423116842311697123423632234§ > 0)
         {
            clearInterval(this.§521423116842311697123423632234§);
         }
         §5214238647238660123423632234§.resetWindow();
         super.destroy();
      }
      
      private function d608accb() : void
      {
         --this.§521423138672313880123423632234§;
         if(this.§521423138672313880123423632234§ <= 0)
         {
            clearInterval(this.§521423116842311697123423632234§);
            this.§521423116842311697123423632234§ = 0;
            this.§521423138672313880123423632234§ = 0;
            this.f140fd7(this.§throw switch§);
         }
         else if(this.§throw switch§.§break const default§)
         {
            this.sendRequestButton.label = TimeFormatter.format(this.§521423138672313880123423632234§);
         }
      }
      
      private function f48008a3(param1:§52142386123874123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         for each(var _loc3_ in param1.§else use while§)
         {
            _loc2_ += _loc3_.kills;
            _loc4_ += _loc3_.deaths;
         }
         this.§5214234137234150123423632234§ = new §in catch dynamic§(new §false switch extends§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_PLAYERS_IN_CLAN"),param1.§else use while§.length.toString());
         this.§false var override§ = new §in catch dynamic§(new §5214238770238783123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_TANKS_DESTROYED"),_loc2_.toString());
         this.§5214238949238962123423632234§ = new §in catch dynamic§(new §5214233856233869123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_TANKS_LOST"),_loc4_.toString());
         this.§native package else§ = new §in catch dynamic§(new §521423120372312050123423632234§() as Bitmap,§5214236363236376123423632234§.getText("CLAN_KILL_DEATH_RATION"),"");
         if(_loc4_ == 0)
         {
            this.§native package else§.§break var const§("0.00");
         }
         else
         {
            this.§native package else§.§break var const§((_loc2_ / _loc4_).toFixed(2));
         }
         this.§true const final§ = new §in catch dynamic§(new Bitmap(new §throw for true§(255,58,58)),§5214236363236376123423632234§.getText("достижения ??"),"-");
         this.§return const set§.addChild(this.§5214234137234150123423632234§);
         this.§return const set§.addChild(this.§false var override§);
         this.§return const set§.addChild(this.§5214238949238962123423632234§);
         this.§return const set§.addChild(this.§native package else§);
         this.§return const set§.addChild(this.§true const final§);
         this.§5214234137234150123423632234§.x = 11 - 1;
         this.§false var override§.x = this.§5214234137234150123423632234§.x + this.§5214234137234150123423632234§.width + 11;
         this.§5214238949238962123423632234§.x = this.§false var override§.x + this.§false var override§.width + 11;
         this.§native package else§.x = this.§5214238949238962123423632234§.x + this.§5214238949238962123423632234§.width + 11;
         this.§true const final§.x = this.§native package else§.x + this.§native package else§.width + 11;
         this.§5214234137234150123423632234§.y = this.§5214231480231493123423632234§.y + this.§5214231480231493123423632234§.height + 11;
         this.§false var override§.y = this.§5214234137234150123423632234§.y;
         this.§5214238949238962123423632234§.y = this.§5214234137234150123423632234§.y;
         this.§native package else§.y = this.§5214234137234150123423632234§.y;
         this.§true const final§.y = this.§5214234137234150123423632234§.y;
      }
      
      private function c170d996(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.onJoinClan);
         this.destroy();
      }
      
      private function b1f85036(param1:§52142386123874123423632234§) : void
      {
         var _loc2_:Object = null;
         this.§5214231895231908123423632234§ = new §include return§(this.width - 2 * 11,this.height - 231 - this.description.height - closeButton.height - 3 * 11 - 2 * 7,4278985229);
         this.§5214231895231908123423632234§.§5214238301238314123423632234§ = true;
         this.§5214231895231908123423632234§.x = 11;
         this.§5214231895231908123423632234§.y = this.description.y + this.description.height + 7;
         addChild(this.§5214231895231908123423632234§);
         this.list = new §521423130152313028123423632234§();
         var _loc4_:Vector.<Object> = new Vector.<Object>();
         for each(var _loc3_ in param1.§else use while§)
         {
            _loc2_ = {};
            _loc2_.score = _loc3_.score.toString();
            _loc2_.permission = _loc3_.§default for package§;
            _loc2_.kills = _loc3_.kills.toString();
            _loc2_.deaths = _loc3_.deaths.toString();
            _loc2_.kd = this.getKD(_loc3_).toFixed(2);
            _loc2_.date = _loc3_.§import switch set§;
            _loc2_.lastOnlineDate = _loc3_.§5214234268234281123423632234§;
            _loc2_.id = _loc3_.§each use get§;
            _loc2_.currentUserId = §true switch package§.userId;
            _loc2_.currentUserPermission = §5214234734234747123423632234§.§override const const§;
            _loc2_.isNew = false;
            _loc4_[_loc4_.length] = _loc2_;
         }
         this.list.§5214233993234006123423632234§(_loc4_);
         this.list.x = 3;
         this.list.y = 3;
         this.list.width = this.§5214231895231908123423632234§.width - 6;
         this.list.height = this.§5214231895231908123423632234§.height - 4;
         this.§5214231895231908123423632234§.addChild(this.list);
      }
      
      private function d1e12daa(param1:MouseEvent) : void
      {
         §5214238647238660123423632234§.revokeRequest();
         this.sendRequestButton.removeEventListener("click",this.d1e12daa);
         this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_SEND_REQUEST");
         this.sendRequestButton.addEventListener("click",this.f352c863);
      }
      
      public function initRestrictionTime() : void
      {
         this.§521423138672313880123423632234§ = §5214234066234079123423632234§.restrictionTime;
         if(this.§521423138672313880123423632234§ > 0 && this.§521423116842311697123423632234§ == 0)
         {
            this.d608accb();
            this.§521423116842311697123423632234§ = setInterval(this.d608accb,1000);
         }
      }
      
      private function f140fd7(param1:§52142386123874123423632234§) : void
      {
         var _loc2_:int = §5214234066234079123423632234§.restrictionTime;
         if(param1.§set finally function§)
         {
            this.sendRequestButton.visible = false;
            return;
         }
         if(param1.§5214236305236318123423632234§)
         {
            this.sendRequestButton.visible = false;
            return;
         }
         if(param1.§5214237841237854123423632234§ > §true switch package§.rank)
         {
            this.sendRequestButton.visible = false;
         }
         if(!param1.§break const default§)
         {
            this.sendRequestButton.enabled = false;
            this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_NOT_RECRUITING");
            return;
         }
         if(_loc2_ > 0)
         {
            this.sendRequestButton.enabled = false;
            this.initRestrictionTime();
            return;
         }
         this.sendRequestButton.enabled = true;
         if(param1.§5214239908239921123423632234§)
         {
            this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_ACCEPT_REQUEST");
            this.sendRequestButton.addEventListener("click",this.c1a030e3);
            return;
         }
         if(param1.§include package switch§)
         {
            this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_REMOVE_REQUEST_TO_CLAN");
            this.sendRequestButton.addEventListener("click",this.d1e12daa);
            return;
         }
         this.sendRequestButton.label = §5214236363236376123423632234§.getText("CLAN_SEND_REQUEST");
         this.sendRequestButton.addEventListener("click",this.f352c863);
      }
      
      private function d162251b(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.onJoinClan);
         this.destroy();
      }
      
      public function alreadyInIncoming() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_ALREADY_INVITED_PLAYER"));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.c170d996);
      }
      
      public function showAlertSmallRank() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_RANK_LOW_TO_SEND_REQUEST"));
         this.sendRequestButton.visible = false;
      }
      
      private function a16ac10c(param1:§52142386123874123423632234§) : void
      {
         this.§return const set§ = new §include return§(900 - 2 * 11,231,4278985229);
         this.§return const set§.§5214238301238314123423632234§ = true;
         addChild(this.§return const set§);
         this.§true include§.bold = true;
         this.§true include§.§521423102842310297123423632234§ = 16;
         this.§true include§.text = param1.§extends set case§;
         this.§52142391623929123423632234§ = new §5214234011234024123423632234§(param1.§super for for§,false);
         this.§get var with§.text = "[" + param1.§with set false§ + "]";
         this.§final use each§.text = §5214236363236376123423632234§.getText("CLAN_CREATION_DATE_WITH_COLON") + " " + DateFormatter.formatDateToLocalized(new Date(param1.§var var static§));
         this.§5214232100232113123423632234§ = new §5214231141231154123423632234§();
         this.§5214232100232113123423632234§.text = §5214236363236376123423632234§.getText("CLAN_FOUNDER_WITH_COLON");
         this.§static package switch§.text = §5214236363236376123423632234§.getText("CLAN_TAG_WITH_COLON");
         this.§get var with§.color = 5898034;
         this.f140fd7(param1);
         this.§return const set§.addChild(this.§5214231480231493123423632234§);
         this.§return const set§.addChild(this.§true include§);
         this.§return const set§.addChild(this.§5214232100232113123423632234§);
         this.§return const set§.addChild(this.§52142391623929123423632234§);
         this.§return const set§.addChild(this.§static package switch§);
         this.§return const set§.addChild(this.§get var with§);
         this.§return const set§.addChild(this.§final use each§);
         this.§return const set§.addChild(this.sendRequestButton);
         this.§return const set§.x = 11;
         this.§return const set§.y = 11;
         this.§5214231480231493123423632234§.x = 11;
         this.§5214231480231493123423632234§.y = 11;
         this.§true include§.mouseEnabled = false;
         this.§true include§.color = 16777215;
         this.§true include§.x = this.§5214231480231493123423632234§.x + this.§5214231480231493123423632234§.width + 11;
         this.§true include§.y = 11;
         this.§5214232100232113123423632234§.x = this.§true include§.x;
         this.§5214232100232113123423632234§.y = this.§true include§.y + this.§true include§.height;
         this.§52142391623929123423632234§.mouseEnabled = false;
         this.§52142391623929123423632234§.x = this.§5214232100232113123423632234§.x + this.§5214232100232113123423632234§.width;
         this.§52142391623929123423632234§.y = this.§5214232100232113123423632234§.y;
         this.§final use each§.mouseEnabled = false;
         this.§final use each§.x = this.§5214232100232113123423632234§.x;
         this.§final use each§.y = this.§5214232100232113123423632234§.y + this.§5214232100232113123423632234§.height + 5;
         this.§static package switch§.x = this.§final use each§.x;
         this.§static package switch§.y = this.§final use each§.y + this.§final use each§.height + 5;
         this.§get var with§.mouseEnabled = false;
         this.§get var with§.x = this.§static package switch§.x + this.§static package switch§.width;
         this.§get var with§.y = this.§static package switch§.y;
         this.sendRequestButton.width = 160;
         this.sendRequestButton.x = this.§return const set§.width - this.sendRequestButton.width - 11;
         this.sendRequestButton.y = 11;
      }
      
      public function alreadyInClanOutgoing() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_REQUEST_IS_ALREADY_SENT"));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.d162251b);
      }
      
      public function initDescription(param1:§52142386123874123423632234§) : void
      {
         var _loc2_:String = param1.§var catch import§;
         if(param1.§5214236305236318123423632234§)
         {
            _loc2_ = param1.§521423114802311493123423632234§;
         }
         this.description = new §throw package import§(_loc2_);
         addChild(this.description);
         this.description.x = 11;
         this.description.y = this.§return const set§.y + 231 + 7;
         this.description.width = this.width - 2 * 11;
         this.description.height = 80;
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_CLAN");
      }
      
      override public function get width() : Number
      {
         return 900;
      }
      
      override protected function removeEvents() : void
      {
         this.sendRequestButton.removeEventListener("click",this.f352c863);
         this.sendRequestButton.removeEventListener("click",this.c1a030e3);
         this.sendRequestButton.removeEventListener("click",this.d1e12daa);
         super.removeEvents();
      }
   }
}

