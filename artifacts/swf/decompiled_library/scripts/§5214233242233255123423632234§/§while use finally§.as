package §5214233242233255123423632234§
{
   import §521423140752314088123423632234§.RanksDropDownList;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import §5214238576238589123423632234§.§521423128552312868123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.components.ClanDescriptionInput;
   import alternativa.tanks.models.panel.create.CreateClanServiceEvent;
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import alternativa.tanks.models.service.ClanInfoUpdateEvent;
   import alternativa.tanks.models.service.ClanService;
   import §case catch override§.§5214236909236922123423632234§;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import §super for case§.§get var extends§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237566237579123423632234§;
   import §true switch true§.§do var const§;
   
   public class §while use finally§ extends §get var extends§
   {
      
      public static var §5214239670239683123423632234§:ClanCreateService;
      
      public static var §const for import§:ClanService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §521423140782314091123423632234§:String = "country";
      
      private static const §super finally dynamic§:int = 7829367;
      
      public static const §continue catch extends§:Number = 550;
      
      public static const §return switch if§:Number = 450;
      
      private var §5214236842236855123423632234§:§5214237566237579123423632234§;
      
      private var §5214237181237194123423632234§:§5214237566237579123423632234§;
      
      private var §52142358123594123423632234§:§5214231141231154123423632234§;
      
      private var §5214236250236263123423632234§:§5214236909236922123423632234§;
      
      private var §for set catch§:§5214231141231154123423632234§;
      
      private var §extends package final§:§5214236909236922123423632234§;
      
      private var §static var do§:ClanDescriptionInput;
      
      private var §5214238030238043123423632234§:§5214231141231154123423632234§;
      
      private var §5214236164236177123423632234§:§do var const§;
      
      private var §package package catch§:§521423128552312868123423632234§;
      
      private var §function use finally§:ClanInfoUpdateEvent;
      
      private var §521423118792311892123423632234§:§implements for super§;
      
      public function §while use finally§(param1:§521423128552312868123423632234§, param2:ClanInfoUpdateEvent, param3:§implements for super§)
      {
         super();
         this.§package package catch§ = param1;
         this.§function use finally§ = param2;
         this.§521423118792311892123423632234§ = param3;
         this.init();
         this.resize();
      }
      
      private function §521423102692310282123423632234§(param1:CreateClanServiceEvent) : void
      {
         this.§5214237181237194123423632234§.§break var override§();
         this.§break package§();
      }
      
      override protected function removeEvents() : void
      {
         this.§static var do§.removeEventListener("focusIn",this.§break set set§);
         this.§static var do§.removeEventListener("focusOut",this.§class var in§);
         §5214239670239683123423632234§.removeEventListener("ValidateClanNameEvent.CORRECT_NAME",this.§set const null§);
         §5214239670239683123423632234§.removeEventListener("ValidateClanNameEvent.INCORRECT_NAME",this.§521423126862312699123423632234§);
         §5214239670239683123423632234§.removeEventListener("ValidateClanNameEvent.CORRECT_TAG",this.§521423102692310282123423632234§);
         §5214239670239683123423632234§.removeEventListener("ValidateClanNameEvent.INCORRECT_TAG",this.§override use do§);
      }
      
      private function init() : void
      {
         this.§5214236842236855123423632234§ = new §5214237566237579123423632234§("",true);
         this.§5214236842236855123423632234§.§break use continue§ = this.§return var include§;
         this.§5214236842236855123423632234§.§false set false§ = 30;
         this.§5214236842236855123423632234§.§5214235789235802123423632234§ = "0-9.a-zA-z_\\-*";
         this.§5214236842236855123423632234§.value = this.§in switch set§();
         this.§5214236842236855123423632234§.enable = false;
         this.§5214236842236855123423632234§.§52142339223405123423632234§.textColor = 7829367;
         addChild(this.§5214236842236855123423632234§);
         this.§5214237181237194123423632234§ = new §5214237566237579123423632234§("",true);
         this.§5214237181237194123423632234§.§break use continue§ = this.§5214235428235441123423632234§;
         this.§5214237181237194123423632234§.§false set false§ = 5;
         this.§5214237181237194123423632234§.§5214235789235802123423632234§ = "0-9.a-zA-z_\\-*";
         this.§5214237181237194123423632234§.value = this.§do var include§();
         this.§5214237181237194123423632234§.enable = false;
         this.§5214237181237194123423632234§.§52142339223405123423632234§.textColor = 7829367;
         addChild(this.§5214237181237194123423632234§);
         this.§static var do§ = new ClanDescriptionInput(this.§dynamic const catch§(),§const for import§.maxCharactersDescription);
         this.§static var do§.addEventListener("focusIn",this.§break set set§);
         this.§static var do§.addEventListener("focusOut",this.§class var in§);
         addChild(this.§static var do§);
         this.§5214238030238043123423632234§ = new §5214231141231154123423632234§();
         this.§5214238030238043123423632234§.text = §5214236363236376123423632234§.getText("CLAN_DESCRIPTION_LABEL");
         this.§5214238030238043123423632234§.textColor = 7829367;
         this.§5214238030238043123423632234§.mouseEnabled = false;
         this.§5214238030238043123423632234§.visible = this.§static var do§.text.length == 0;
         this.§52142358123594123423632234§ = new §5214231141231154123423632234§();
         this.§52142358123594123423632234§.text = §5214236363236376123423632234§.getText("CLAN_PROFILE_INVATION_CLAN");
         this.§52142358123594123423632234§.mouseEnabled = false;
         addChild(this.§52142358123594123423632234§);
         this.§5214236250236263123423632234§ = new §5214236909236922123423632234§();
         this.§5214236250236263123423632234§.addItem({
            "gameName":§5214236363236376123423632234§.getText("CLAN_PROFILE_OPEN"),
            "id":0,
            "rang":0
         });
         this.§5214236250236263123423632234§.addItem({
            "gameName":§5214236363236376123423632234§.getText("CLAN_PROFILE_CLOSE"),
            "id":1,
            "rang":0
         });
         this.§5214236250236263123423632234§.§5214234522234535123423632234§(this.§set var final§() ? 0 : 1);
         this.§5214236250236263123423632234§.width = 84;
         this.§5214236250236263123423632234§.height = 75;
         addChild(this.§5214236250236263123423632234§);
         this.§for set catch§ = new §5214231141231154123423632234§();
         this.§for set catch§.text = §5214236363236376123423632234§.getText("CLAN_PROFILE_MIN_RANK");
         this.§for set catch§.mouseEnabled = false;
         addChild(this.§for set catch§);
         this.§extends package final§ = new RanksDropDownList(§const for import§.minRankForCreateClan);
         this.§extends package final§.selectItemByField("rank",this.§finally native§());
         addChild(this.§extends package final§);
         this.§5214236164236177123423632234§ = new §do var const§();
         this.§5214236164236177123423632234§.label = §5214236363236376123423632234§.getText("SETTINGS_BUTTON_SAVE_TEXT");
         this.§5214236164236177123423632234§.addEventListener("click",this.§5214232493232506123423632234§);
         addChild(this.§5214236164236177123423632234§);
         §5214239670239683123423632234§.addEventListener("ValidateClanNameEvent.CORRECT_NAME",this.§set const null§);
         §5214239670239683123423632234§.addEventListener("ValidateClanNameEvent.INCORRECT_NAME",this.§521423126862312699123423632234§);
         §5214239670239683123423632234§.addEventListener("ValidateClanNameEvent.CORRECT_TAG",this.§521423102692310282123423632234§);
         §5214239670239683123423632234§.addEventListener("ValidateClanNameEvent.INCORRECT_TAG",this.§override use do§);
      }
      
      private function §finally native§() : int
      {
         if(this.§function use finally§ == null)
         {
            return this.§package package catch§.§dynamic switch else§();
         }
         return this.§function use finally§.§use for else§;
      }
      
      private function resize() : void
      {
         this.§5214236842236855123423632234§.x = 11;
         this.§5214236842236855123423632234§.y = 11;
         this.§5214236842236855123423632234§.width = 550 - 2 * 11;
         this.§5214237181237194123423632234§.x = 11;
         this.§5214237181237194123423632234§.y = this.§5214236842236855123423632234§.y + this.§5214236842236855123423632234§.height + 7;
         this.§5214237181237194123423632234§.width = 550 - 2 * 11;
         var _loc1_:int = this.§5214237181237194123423632234§.y + this.§5214237181237194123423632234§.height + 7;
         var _loc2_:int = this.§5214237181237194123423632234§.y + this.§5214237181237194123423632234§.height + 7 + 6;
         this.§52142358123594123423632234§.x = 11;
         this.§52142358123594123423632234§.y = _loc2_;
         this.§5214236250236263123423632234§.x = this.§52142358123594123423632234§.x + this.§52142358123594123423632234§.width + 7;
         this.§5214236250236263123423632234§.y = _loc1_;
         this.§for set catch§.x = this.§5214236250236263123423632234§.x + 84 + 7;
         this.§for set catch§.y = _loc2_;
         this.§extends package final§.x = this.§for set catch§.x + this.§for set catch§.width + 7;
         this.§extends package final§.y = _loc1_;
         this.§5214236164236177123423632234§.x = 550 - this.§5214236164236177123423632234§.width >> 1;
         this.§5214236164236177123423632234§.y = 450 - this.§5214236164236177123423632234§.height - 11;
         this.§5214238030238043123423632234§.x = 7;
         this.§5214238030238043123423632234§.y = 7;
         this.§static var do§.x = 11;
         this.§static var do§.y = _loc1_ + 30 + 7;
         this.§static var do§.width = 550 - 2 * 11;
         this.§static var do§.height = 450 - this.§static var do§.y - this.§5214236164236177123423632234§.height - 11 - 7;
      }
      
      private function §dynamic const catch§() : String
      {
         if(this.§function use finally§ == null)
         {
            return this.§package package catch§.§5214239523239536123423632234§();
         }
         return this.§function use finally§.§5214234939234952123423632234§;
      }
      
      override public function get height() : Number
      {
         return 450;
      }
      
      override public function updateActions() : void
      {
         if(!§5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§5214239680239693123423632234§))
         {
            destroy();
         }
      }
      
      private function §set const null§(param1:CreateClanServiceEvent) : void
      {
         this.§5214236842236855123423632234§.§break var override§();
         this.§break package§();
      }
      
      private function §return var include§() : void
      {
         §5214239670239683123423632234§.validateName(this.§5214236842236855123423632234§.value);
      }
      
      private function §break set set§(param1:FocusEvent) : void
      {
         this.§5214238030238043123423632234§.visible = false;
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_EDIT_PROFILE");
      }
      
      private function §break package§() : void
      {
         if((this.§5214236842236855123423632234§.§521423102552310268123423632234§() || !this.§5214236842236855123423632234§.§else package final§()) && (this.§5214237181237194123423632234§.§521423102552310268123423632234§() || !this.§5214237181237194123423632234§.§else package final§()) && !this.§5214236842236855123423632234§.§try use set§ && !this.§5214237181237194123423632234§.§try use set§)
         {
            this.§5214236164236177123423632234§.enabled = true;
         }
         else
         {
            this.§5214236164236177123423632234§.enabled = false;
         }
      }
      
      private function §5214235428235441123423632234§() : void
      {
         §5214239670239683123423632234§.validateTag(this.§5214237181237194123423632234§.value);
      }
      
      private function §class var in§(param1:FocusEvent) : void
      {
         if(this.§static var do§.text.length == 0)
         {
            this.§5214238030238043123423632234§.visible = true;
         }
      }
      
      private function §override use do§(param1:CreateClanServiceEvent) : void
      {
         this.§5214237181237194123423632234§.§super var get§();
         this.§break package§();
      }
      
      private function §do var include§() : String
      {
         if(this.§function use finally§ == null)
         {
            return this.§package package catch§.§do var include§();
         }
         return this.§function use finally§.§native use var§;
      }
      
      private function §set var final§() : Boolean
      {
         if(this.§function use finally§ == null)
         {
            return this.§package package catch§.§break const default§();
         }
         return this.§function use finally§.§else var finally§;
      }
      
      override public function get width() : Number
      {
         return 550;
      }
      
      private function §in switch set§() : String
      {
         if(this.§function use finally§ == null)
         {
            return this.§package package catch§.§in switch set§();
         }
         return this.§function use finally§.clanName;
      }
      
      private function §521423126862312699123423632234§(param1:CreateClanServiceEvent) : void
      {
         this.§5214236842236855123423632234§.§super var get§();
         this.§break package§();
      }
      
      private function §5214232493232506123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:ClanInfoUpdateEvent = new ClanInfoUpdateEvent();
         var _loc3_:int = int(this.§extends package final§.§521423130742313087123423632234§.rank);
         _loc2_.clanName = this.§5214236842236855123423632234§.value;
         _loc2_.§native use var§ = this.§5214237181237194123423632234§.value;
         _loc2_.§else var finally§ = this.§5214236250236263123423632234§.§521423130742313087123423632234§.id == 0;
         _loc2_.§use for else§ = _loc3_;
         _loc2_.§5214234939234952123423632234§ = this.§static var do§.text;
         §const for import§.updateClanInfo(this.§static var do§.text,_loc3_,null,this.§5214236250236263123423632234§.§521423130742313087123423632234§.id == 0);
         this.§521423118792311892123423632234§.§default catch set§(_loc2_);
         destroy();
      }
   }
}

