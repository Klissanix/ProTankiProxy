package §static switch in§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233176233189123423632234§.StartExternalEntranceEvent;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.service.IExternalEntranceService;
   import §extends package get§.§5214231794231807123423632234§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §function switch true§.§do var do§;
   import §null package if§.§try finally catch§;
   import §true switch true§.§5214231141231154123423632234§;
   import §while for extends§.§5214237820237833123423632234§;
   
   public class §with switch each§ extends Sprite implements §5214235988236001123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §include package default§:IExternalEntranceService;
      
      [Inject]
      public var §finally var function§:§try finally catch§;
      
      private var §5214231075231088123423632234§:§do var do§;
      
      private var §5214232433232446123423632234§:§native for dynamic§;
      
      private var §dynamic get§:§5214237820237833123423632234§;
      
      private const §while use final§:int = 25;
      
      private const §5214232549232562123423632234§:int = 380;
      
      private var §521423131512313164123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §var include§:Sprite;
      
      private var §catch for native§:Bitmap;
      
      private var §521423116852311698123423632234§:Boolean;
      
      private var §else const break§:Boolean;
      
      private var §5214237832237845123423632234§:Boolean;
      
      private var §super try§:String = "";
      
      private var §521423137292313742123423632234§:String = "";
      
      private var §class var with§:String = "";
      
      private var §5214237409237422123423632234§:String;
      
      public function §with switch each§(param1:Boolean, param2:Boolean, param3:§include catch with§, param4:Boolean = true, param5:String = "", param6:String = "", param7:String = "", param8:String = "")
      {
         super();
         this.§else const break§ = param1;
         this.§521423116852311698123423632234§ = param2;
         var _loc9_:§include catch with§ = param3;
         if((_loc9_.§else for include§ & 1) != 0)
         {
            this.§catch for native§ = new Bitmap(param3.data);
         }
         else
         {
            param3.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
         }
         this.§5214237832237845123423632234§ = param4;
         this.§super try§ = param5;
         this.§521423137292313742123423632234§ = param6;
         this.§class var with§ = param7;
         this.§5214237409237422123423632234§ = param8;
      }
      
      public function get §5214238974238987123423632234§() : String
      {
         return this.§dynamic get§ != null ? this.§dynamic get§.§5214238974238987123423632234§ : "";
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         §521423106972310710123423632234§(new Bitmap(param1.data));
      }
      
      public function get §class if§() : String
      {
         return this.§dynamic get§ != null ? this.§dynamic get§.§class if§ : "";
      }
      
      [PostConstruct]
      public function §use const continue§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 25;
         if(this.§5214237832237845123423632234§)
         {
            this.§521423131512313164123423632234§ = new §5214231141231154123423632234§();
            this.§521423131512313164123423632234§.x = 25;
            this.§521423131512313164123423632234§.multiline = true;
            this.§521423131512313164123423632234§.wordWrap = true;
            this.§521423131512313164123423632234§.htmlText = §5214236363236376123423632234§.getText("STRING_REGISTER_FORM_TO_LOGIN_PAGE_TEXT");
            this.§521423131512313164123423632234§.width = 330;
            this.§521423131512313164123423632234§.y = _loc1_;
            this.§521423131512313164123423632234§.addEventListener("click",this.§5214231162231175123423632234§);
            _loc1_ += this.§521423131512313164123423632234§.height - 3;
            _loc1_ += 25;
         }
         this.§var include§ = new Sprite();
         addChild(this.§var include§);
         this.§5214232433232446123423632234§ = new §native for dynamic§(380,_loc1_);
         if(this.§521423131512313164123423632234§)
         {
            this.§5214232433232446123423632234§.addChild(this.§521423131512313164123423632234§);
         }
         this.§dynamic get§ = this.§finally var function§.§5214231940231953123423632234§(§5214237820237833123423632234§);
         this.§dynamic get§.§5214238974238987123423632234§ = this.§super try§;
         this.§dynamic get§.§521423104532310466123423632234§ = this.§521423137292313742123423632234§;
         this.§dynamic get§.§class if§ = this.§class var with§;
         this.§dynamic get§.§break final§ = this.§5214237409237422123423632234§;
         this.§5214232433232446123423632234§.addChild(this.§dynamic get§);
         this.§5214232433232446123423632234§.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.§5214232433232446123423632234§.§extends catch default§ = §native set dynamic§.§521423105022310515123423632234§;
         this.§dynamic get§.§521423137012313714123423632234§(this.§521423116852311698123423632234§,this.§else const break§);
         if(this.§5214237832237845123423632234§)
         {
            this.§dynamic get§.y = this.§521423131512313164123423632234§.y + this.§521423131512313164123423632234§.height - 3;
         }
         this.§5214232433232446123423632234§.height = this.§dynamic get§.y + this.§dynamic get§.height + 25;
         if(§include package default§.vkontakteEnabled || §include package default§.facebookEnabled)
         {
            this.§5214231075231088123423632234§ = new §do var do§(380 - 20,85,§5214236363236376123423632234§.getText("STRING_REGISTER_FORM_REGISTER_VIA"));
            addChild(this.§5214231075231088123423632234§);
            this.§5214231075231088123423632234§.y = this.§5214232433232446123423632234§.y + this.§5214232433232446123423632234§.height - 15;
            this.§5214231075231088123423632234§.x = this.§5214232433232446123423632234§.x + (380 - this.§5214231075231088123423632234§.width) / 2;
            if(§include package default§.vkontakteEnabled)
            {
               this.§5214231075231088123423632234§.§return use try§.addEventListener("click",this.§5214233630233643123423632234§);
            }
            if(§include package default§.facebookEnabled)
            {
               this.§5214231075231088123423632234§.§super package include§.addEventListener("click",this.§throw package while§);
            }
            if(§include package default§.googleEnabled)
            {
               this.§5214231075231088123423632234§.§5214236628236641123423632234§.addEventListener("click",this.§521423102812310294123423632234§);
            }
         }
         addChild(this.§5214232433232446123423632234§);
         addEventListener("addedToStage",this.§switch override§);
      }
      
      public function §521423106972310710123423632234§(param1:Bitmap) : void
      {
         if(this.§var include§.numChildren == 0)
         {
            this.§catch for native§ = param1;
            this.§var include§.addChild(param1);
            this.§while var case§(null);
         }
      }
      
      private function §throw package while§(param1:MouseEvent) : void
      {
         dispatchEvent(new StartExternalEntranceEvent("StartExternalEntranceEvent.START_REGISTRATION","facebook",this.§5214232482232495123423632234§));
      }
      
      public function get §5214232482232495123423632234§() : Boolean
      {
         return this.§dynamic get§.§5214232482232495123423632234§;
      }
      
      public function get §break final§() : String
      {
         return this.§dynamic get§ != null ? this.§dynamic get§.§break final§ : "";
      }
      
      public function get §52142310723120123423632234§() : String
      {
         return this.§dynamic get§.§52142310723120123423632234§;
      }
      
      private function §5214233630233643123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new StartExternalEntranceEvent("StartExternalEntranceEvent.START_REGISTRATION","vkontakte",this.§5214232482232495123423632234§));
      }
      
      private function §5214231162231175123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new NavigationEvent("NavigationEvent.GO_TO_LOGIN_FORM"));
      }
      
      private function §521423102812310294123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new StartExternalEntranceEvent("StartExternalEntranceEvent.START_REGISTRATION","google",this.§5214232482232495123423632234§));
      }
      
      private function §while var case§(param1:Event) : void
      {
         this.x = int((stage.stageWidth / Display.§521423132512313264123423632234§ - 380) / 2);
         this.y = int((stage.stageHeight / Display.§521423132512313264123423632234§ - this.§5214232433232446123423632234§.height) / 2);
         if(this.§catch for native§)
         {
            graphics.clear();
            graphics.beginFill(0);
            graphics.drawRect(-this.x,-this.y,stage.stageWidth / Display.§521423132512313264123423632234§,stage.stageHeight / Display.§521423132512313264123423632234§);
            graphics.endFill();
            this.§catch for native§.x = 380 - this.§catch for native§.width >> 1;
            this.§catch for native§.y = -(stage.stageHeight / Display.§521423132512313264123423632234§ - this.§5214232433232446123423632234§.height >> 1);
         }
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§while var case§);
         if(this.§5214231075231088123423632234§ != null)
         {
            if(§include package default§.facebookEnabled)
            {
               this.§5214231075231088123423632234§.§super package include§.removeEventListener("click",this.§throw package while§);
            }
            if(§include package default§.vkontakteEnabled)
            {
               this.§5214231075231088123423632234§.§return use try§.removeEventListener("click",this.§5214233630233643123423632234§);
            }
            if(§include package default§.googleEnabled)
            {
               this.§5214231075231088123423632234§.§5214236628236641123423632234§.removeEventListener("click",this.§521423102812310294123423632234§);
            }
         }
      }
      
      public function get §521423104532310466123423632234§() : String
      {
         return this.§dynamic get§ != null ? this.§dynamic get§.§521423104532310466123423632234§ : "";
      }
      
      private function §switch override§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§switch override§);
         addEventListener("removedFromStage",this.§continue use each§);
         stage.addEventListener("resize",this.§while var case§);
         this.§while var case§(null);
         if(this.§catch for native§)
         {
            this.§521423106972310710123423632234§(this.§catch for native§);
         }
         dispatchEvent(new §5214231794231807123423632234§());
      }
   }
}

