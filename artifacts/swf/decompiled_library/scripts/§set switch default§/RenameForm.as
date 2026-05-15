package §set switch default§
{
   import §5214233785233798123423632234§.§521423131042313117123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §5214235638235651123423632234§.§52142313623149123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import §continue switch package§.§var use true§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §for package catch§.PlaceholderInputText;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.flash.commons.services.validate.ValidateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class RenameForm extends DialogWindow
   {
      
      private static const §5214239958239971123423632234§:int = 6;
      
      private static const §case set dynamic§:int = 500;
      
      private static const §521423124302312443123423632234§:int = 50;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214231693231706123423632234§:UidCheckService;
      
      public static var §class for finally§:PasswordService;
      
      public static var §52142345123464123423632234§:IValidateService;
      
      protected static const §implements package extends§:int = 335;
      
      protected static const §function continue§:int = 11;
      
      protected static const §break override§:int = 5;
      
      private static var §5214237716237729123423632234§:Class = e1hded_png$7b03c7a6571abfb3a873dc6a3288aa62435221479;
      
      private static var §521423118342311847123423632234§:BitmapData = Bitmap(new §5214237716237729123423632234§()).bitmapData;
      
      protected var window:§var use true§;
      
      private var §5214235021235034123423632234§:PlaceholderInputText;
      
      private var §break switch true§:§521423131042313117123423632234§;
      
      private var §5214239598239611123423632234§:uint;
      
      private var §if use catch§:String;
      
      private var §5214237787237800123423632234§:Boolean;
      
      private var §use for continue§:PlaceholderInputText;
      
      private var §try for try§:§521423131042313117123423632234§;
      
      private var §else for return§:uint;
      
      private var password:String;
      
      private var §521423115872311600123423632234§:Boolean;
      
      private var §521423116662311679123423632234§:§5214237085237098123423632234§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var §5214233274233287123423632234§:§include return§;
      
      private var §52142390023913123423632234§:§include return§;
      
      private var §return finally package§:Boolean;
      
      public function RenameForm(param1:Boolean)
      {
         super();
         this.§return finally package§ = param1;
         this.daf500f();
         this.e6565fff();
         this.d54b544b();
         this.b60a5504();
         if(param1)
         {
            this.e6c4e0b3();
         }
         this.f6873910();
         this.f6dc6032();
         this.window.height = this.§521423116662311679123423632234§.y + this.§521423116662311679123423632234§.height + 11;
      }
      
      public function show() : void
      {
         §5214239382239395123423632234§.addDialog(this);
      }
      
      private function b68de9b8(param1:§52142313623149123423632234§) : void
      {
         this.§5214237787237800123423632234§ = param1 == §52142313623149123423632234§.§else catch import§;
         this.§5214235021235034123423632234§.§in use set§ = this.§5214237787237800123423632234§;
         if(this.§5214237787237800123423632234§)
         {
            this.§break switch true§.§try set class§();
         }
         else
         {
            this.§break switch true§.§5214235877235890123423632234§();
         }
         this.b4fc393();
      }
      
      public function close() : void
      {
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function d20a5e40(param1:Boolean) : void
      {
         this.§521423115872311600123423632234§ = param1;
         if(this.§521423115872311600123423632234§)
         {
            this.§try for try§.§try set class§();
         }
         else
         {
            this.§try for try§.§5214235877235890123423632234§();
         }
         this.§use for continue§.§in use set§ = this.§521423115872311600123423632234§;
         this.b4fc393();
      }
      
      private function a1e9e6f8(param1:PlaceholderInputText) : §521423131042313117123423632234§
      {
         var _loc2_:§521423131042313117123423632234§ = new §521423131042313117123423632234§();
         _loc2_.§5214232307232320123423632234§();
         _loc2_.y = int((param1.height - _loc2_.height) / 2) + 2;
         _loc2_.x = param1.width - _loc2_.width - 6;
         return _loc2_;
      }
      
      private function b60a5504() : void
      {
         this.§5214235021235034123423632234§ = this.a762e5c6(§5214236363236376123423632234§.getText("RENAME_FORM_NEW_UID_INPUT"),this.d3394b19(this.§52142390023913123423632234§));
         this.§5214235021235034123423632234§.§in use set§ = true;
         this.§5214235021235034123423632234§.§false set false§ = §5214231693231706123423632234§.getMaxLength();
         this.§5214235021235034123423632234§.addEventListener("change",this.b6495305);
         this.§break switch true§ = this.a1e9e6f8(this.§5214235021235034123423632234§);
         this.window.addChild(this.§5214235021235034123423632234§);
         this.§5214235021235034123423632234§.addChild(this.§break switch true§);
      }
      
      public function getPassword() : String
      {
         return this.§use for continue§.value;
      }
      
      private function e6c4e0b3() : void
      {
         this.§use for continue§ = this.a762e5c6(§5214236363236376123423632234§.getText("RENAME_FORM_CURRENT_PASSWORD_INPUT"),this.d3394b19(this.§5214235021235034123423632234§));
         this.§use for continue§.hidden = true;
         this.§use for continue§.§false set false§ = 50;
         this.§use for continue§.addEventListener("change",this.d61c3f7d);
         this.§try for try§ = this.a1e9e6f8(this.§use for continue§);
         this.window.addChild(this.§use for continue§);
         this.§use for continue§.addChild(this.§try for try§);
      }
      
      private function d54b544b() : void
      {
         this.§52142390023913123423632234§ = new §include return§(0,0,4278985229);
         this.§52142390023913123423632234§.x = 11;
         this.§52142390023913123423632234§.width = 335 - 11 * 2;
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.wordWrap = true;
         _loc1_.multiline = true;
         _loc1_.htmlText = §5214236363236376123423632234§.getText("RENAME_FORM_INSTRUCTION");
         _loc1_.§521423102842310297123423632234§ = 12;
         _loc1_.x = 11;
         _loc1_.y = 11;
         _loc1_.width = 335 - 11 * 4;
         this.§52142390023913123423632234§.addChild(_loc1_);
         this.§52142390023913123423632234§.height = _loc1_.height + 11 * 2;
         this.§52142390023913123423632234§.y = this.d3394b19(this.§5214233274233287123423632234§);
         this.window.addChild(this.§52142390023913123423632234§);
      }
      
      public function dispose() : void
      {
         this.§521423116662311679123423632234§.removeEventListener("click",this.d511deff);
         this.closeButton.removeEventListener("click",this.e4eb0370);
         this.§5214235021235034123423632234§.removeEventListener("change",this.b6495305);
         if(this.§return finally package§)
         {
            this.§use for continue§.removeEventListener("change",this.d61c3f7d);
         }
      }
      
      private function fcf62b1() : void
      {
         this.§break switch true§.§5214235877235890123423632234§();
         this.§5214235021235034123423632234§.§in use set§ = false;
      }
      
      private function f6873910() : void
      {
         this.§521423116662311679123423632234§ = new §5214237085237098123423632234§();
         this.§521423116662311679123423632234§.label = §5214236363236376123423632234§.getText("SAVE_BUTTON_LABEL");
         this.§521423116662311679123423632234§.x = 335 - 2 * this.§521423116662311679123423632234§.width - 2 * 11;
         this.§521423116662311679123423632234§.y = this.d3394b19(this.§return finally package§ ? this.§use for continue§ : this.§5214235021235034123423632234§);
         this.§521423116662311679123423632234§.enable = false;
         this.§521423116662311679123423632234§.addEventListener("click",this.d511deff);
         this.window.addChild(this.§521423116662311679123423632234§);
      }
      
      private function f6dc6032() : void
      {
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         this.closeButton.x = 335 - 11 - this.closeButton.width;
         this.closeButton.y = this.§521423116662311679123423632234§.y;
         this.closeButton.addEventListener("click",this.e4eb0370);
         this.window.addChild(this.closeButton);
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.e4eb0370();
      }
      
      private function b6495305(param1:Event) : void
      {
         this.§521423116662311679123423632234§.enable = false;
         var _loc2_:String = this.§5214235021235034123423632234§.value;
         if(!§52142345123464123423632234§.isValidIdentificationStringForRegistration(_loc2_))
         {
            this.§5214235021235034123423632234§.value = _loc2_.replace(ValidateService.§5214235670235683123423632234§,"");
         }
         this.§break switch true§.§5214233289233302123423632234§();
         clearTimeout(this.§5214239598239611123423632234§);
         this.§5214239598239611123423632234§ = setTimeout(this.checkUid,500);
      }
      
      private function d511deff(param1:MouseEvent) : void
      {
         dispatchEvent(new RenameEvent(this.§if use catch§));
      }
      
      private function a762e5c6(param1:String, param2:int) : PlaceholderInputText
      {
         var _loc3_:PlaceholderInputText = new PlaceholderInputText(param1);
         _loc3_.x = 11;
         _loc3_.y = param2;
         _loc3_.width = 335 - 11 * 2;
         return _loc3_;
      }
      
      private function d61c3f7d(param1:Event) : void
      {
         this.§521423116662311679123423632234§.enable = false;
         this.§try for try§.§5214233289233302123423632234§();
         clearTimeout(this.§else for return§);
         this.§else for return§ = setTimeout(this.checkPassword,500);
      }
      
      private function e6565fff() : void
      {
         var _loc1_:Bitmap = new Bitmap(§521423118342311847123423632234§);
         _loc1_.x = 11;
         this.§5214233274233287123423632234§ = new §include return§(0,0,4278985229);
         this.§5214233274233287123423632234§.x = 11;
         this.§5214233274233287123423632234§.y = 11;
         this.§5214233274233287123423632234§.width = 335 - 11 * 2;
         this.§5214233274233287123423632234§.height = _loc1_.height;
         this.§5214233274233287123423632234§.addChild(_loc1_);
         this.window.addChild(this.§5214233274233287123423632234§);
      }
      
      private function checkUid() : void
      {
         if(this.§return finally package§ && this.§5214235021235034123423632234§.value == this.§use for continue§.value)
         {
            this.§break switch true§.§5214235877235890123423632234§();
            this.§5214235021235034123423632234§.§in use set§ = false;
            return;
         }
         if(this.§5214235021235034123423632234§.value.length == 0)
         {
            this.§break switch true§.§5214232307232320123423632234§();
            this.§5214235021235034123423632234§.§in use set§ = true;
         }
         else
         {
            this.§if use catch§ = this.§5214235021235034123423632234§.value;
            §5214231693231706123423632234§.validate(this.§if use catch§,this.b68de9b8);
         }
      }
      
      private function e4eb0370(param1:MouseEvent = null) : void
      {
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function daf500f() : void
      {
         this.window = new §var use true§(§5214236363236376123423632234§.getImage("HEADER_CHANGE_UID"));
         this.window.width = 335;
         addChild(this.window);
      }
      
      private function d1224f8() : void
      {
         this.§break switch true§.§try set class§();
         this.§5214235021235034123423632234§.§in use set§ = true;
         this.b4fc393();
      }
      
      private function d3394b19(param1:DisplayObject) : int
      {
         return param1.y + param1.height + 5;
      }
      
      private function b4fc393() : void
      {
         if(this.§5214237787237800123423632234§ && (this.§521423115872311600123423632234§ || !this.§return finally package§))
         {
            this.§521423116662311679123423632234§.enable = true;
         }
      }
      
      public function isNeedPassword() : Boolean
      {
         return this.§return finally package§;
      }
      
      private function checkPassword() : void
      {
         if(this.§return finally package§ && this.§use for continue§.value == this.§5214235021235034123423632234§.value)
         {
            this.§use for continue§.§in use set§ = false;
            this.§try for try§.§5214235877235890123423632234§();
            return;
         }
         if(this.§use for continue§.value.length == 0)
         {
            this.§try for try§.§5214232307232320123423632234§();
            this.§use for continue§.§in use set§ = true;
         }
         else
         {
            this.password = this.§use for continue§.value;
            §class for finally§.checkPassword(this.password,this.d20a5e40);
         }
      }
   }
}

