package §static switch in§
{
   import §521423106142310627123423632234§.Alert;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.controller.events.PasswordRestoreCaptchaEvent;
   import §extends package get§.§5214231794231807123423632234§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §function switch true§.§52142358323596123423632234§;
   import §include else§.§each set with§;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §521423113772311390123423632234§ extends Sprite
   {
      
      public static var §52142345123464123423632234§:IValidateService;
      
      private static const §5214236332236345123423632234§:int = 20;
      
      private static const §52142337723390123423632234§:int = 10;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var §5214239729239742123423632234§:§52142358323596123423632234§;
      
      public var §521423113902311403123423632234§:§5214237085237098123423632234§;
      
      public var §5214236324236337123423632234§:§5214237085237098123423632234§;
      
      private var §get var each§:int = 250;
      
      private var §dynamic set catch§:int = 0;
      
      public var §52142373223745123423632234§:§5214237555237568123423632234§;
      
      public function §521423113772311390123423632234§()
      {
         super();
      }
      
      private function §default use for§(param1:Event) : void
      {
         this.§52142373223745123423632234§.§in use set§ = true;
      }
      
      private function §521423133322313345123423632234§(param1:int) : void
      {
         var _loc2_:int = param1;
         var _loc3_:Alert = new Alert(_loc2_);
         parent.addChild(_loc3_);
         stage.focus = _loc3_.closeButton;
         if(_loc2_ == 17)
         {
            _loc3_.addEventListener("CloseAlert",this.§while use super§);
         }
      }
      
      private function §switch for class§(param1:MouseEvent) : void
      {
         dispatchEvent(new PasswordRestoreCaptchaEvent(this.§52142310723120123423632234§,this.§52142373223745123423632234§.value));
      }
      
      public function §5214237238237251123423632234§() : void
      {
         this.§521423133322313345123423632234§(12);
      }
      
      private function §5214235039235052123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231794231807123423632234§());
      }
      
      private function §static const each§() : void
      {
         dispatchEvent(new NavigationEvent("NavigationEvent.GO_TO_LOGIN_FORM"));
      }
      
      private function §package catch function§(param1:MouseEvent) : void
      {
         this.§static const each§();
      }
      
      public function §5214234175234188123423632234§() : void
      {
         dispatchEvent(new §5214231794231807123423632234§());
      }
      
      private function §switch override§(param1:Event) : void
      {
         stage.focus = this.§52142373223745123423632234§;
         stage.addEventListener("resize",this.§while var case§);
         this.§52142373223745123423632234§.§in use set§ = true;
         this.§while var case§(null);
         addEventListener("removedFromStage",this.§continue use each§);
         dispatchEvent(new §5214231794231807123423632234§());
      }
      
      [PostConstruct]
      public function §use const continue§() : void
      {
         var _loc5_:§5214231141231154123423632234§ = null;
         var _loc3_:§native for dynamic§ = new §native for dynamic§(this.§get var each§,this.§dynamic set catch§);
         _loc3_.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         _loc3_.§extends catch default§ = §native set dynamic§.§5214232542232555123423632234§;
         var _loc4_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         addChild(_loc3_);
         addChild(_loc4_);
         _loc4_.multiline = true;
         _loc4_.align = "center";
         _loc4_.text = §5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_HELP_LABEL_TEXT");
         _loc4_.x = 20 + 5;
         _loc4_.y = 20;
         var _loc2_:int = _loc4_.y + _loc4_.height - 6;
         if(this.§get var each§ < _loc4_.width)
         {
            this.§get var each§ = _loc4_.width + 2 * 20 + 5;
         }
         this.§52142373223745123423632234§ = new §5214237555237568123423632234§();
         this.§52142373223745123423632234§.width = this.§get var each§ - 2 * 20 - 5;
         this.§52142373223745123423632234§.x = 20 + 5;
         this.§52142373223745123423632234§.y = _loc2_ + 20;
         _loc2_ += this.§52142373223745123423632234§.height + 20;
         var _loc1_:String = "";
         if(_loc1_ != "")
         {
            _loc5_ = new §5214231141231154123423632234§();
            _loc5_.htmlText = _loc1_;
            _loc5_.x = int(this.§get var each§ / 2 - _loc5_.width / 2);
            _loc5_.y = _loc2_ + 10;
            _loc2_ = _loc5_.y + _loc5_.height + 10;
            addChild(_loc5_);
         }
         else
         {
            _loc2_ += 20;
         }
         this.§5214239729239742123423632234§ = new §52142358323596123423632234§();
         this.§5214239729239742123423632234§.§use const continue§();
         this.§5214239729239742123423632234§.§521423222335123423632234§.addEventListener("click",this.§5214235039235052123423632234§);
         _loc3_.addChild(this.§5214239729239742123423632234§);
         this.§5214239729239742123423632234§.y = _loc2_;
         this.§5214239729239742123423632234§.x = 20 + 5;
         this.§5214239729239742123423632234§.width = this.§get var each§ - 2 * 20 - 5;
         this.§5214239729239742123423632234§.visible = true;
         _loc2_ += this.§5214239729239742123423632234§.height + 20;
         this.§521423113902311403123423632234§ = new §5214237085237098123423632234§();
         this.§5214236324236337123423632234§ = new §5214237085237098123423632234§();
         addChild(this.§521423113902311403123423632234§);
         addChild(this.§5214236324236337123423632234§);
         addChild(this.§52142373223745123423632234§);
         this.§521423113902311403123423632234§.x = this.§get var each§ - 20 - this.§521423113902311403123423632234§.width;
         this.§521423113902311403123423632234§.y = _loc2_ + 20;
         this.§5214236324236337123423632234§.x = 20 + 5;
         this.§5214236324236337123423632234§.y = _loc2_ + 20;
         _loc2_ += 20 + this.§521423113902311403123423632234§.height;
         this.§dynamic set catch§ = _loc2_ + 20;
         _loc3_.height = this.§dynamic set catch§ + 5;
         _loc3_.width = this.§get var each§ + 5;
         this.§521423113902311403123423632234§.label = §5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_BUTTON_CANCEL_TEXT");
         this.§5214236324236337123423632234§.label = §5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_BUTTON_RECOVER_TEXT");
         this.§521423113902311403123423632234§.addEventListener("click",this.§package catch function§);
         this.§5214236324236337123423632234§.addEventListener("click",this.§switch for class§);
         this.§52142373223745123423632234§.addEventListener("keyDown",this.§case const extends§);
         this.§5214236324236337123423632234§.enable = false;
         this.§52142373223745123423632234§.addEventListener("focusIn",this.§default use for§);
         this.§52142373223745123423632234§.addEventListener("keyUp",this.§5214233818233831123423632234§);
         addEventListener("addedToStage",this.§switch override§);
      }
      
      private function §while var case§(param1:Event) : void
      {
         this.x = int((stage.stageWidth / Display.§521423132512313264123423632234§ - this.§get var each§) / 2);
         this.y = int((stage.stageHeight / Display.§521423132512313264123423632234§ - this.§dynamic set catch§) / 2);
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§while var case§);
      }
      
      private function §while use super§(param1:§each set with§) : void
      {
         §static const each§();
      }
      
      public function get §52142310723120123423632234§() : String
      {
         return this.§5214239729239742123423632234§.§52142310723120123423632234§.value;
      }
      
      public function set §521423125782312591123423632234§(param1:Bitmap) : void
      {
         this.§5214239729239742123423632234§.§null var case§ = param1;
      }
      
      private function §case const extends§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13 && this.§5214236324236337123423632234§.enable)
         {
            dispatchEvent(new PasswordRestoreCaptchaEvent(this.§52142310723120123423632234§,this.§52142373223745123423632234§.value));
         }
      }
      
      public function §5214235438235451123423632234§() : void
      {
         this.§521423133322313345123423632234§(17);
      }
      
      public function §var catch function§() : void
      {
         this.§521423133322313345123423632234§(13);
      }
      
      private function §5214233818233831123423632234§(param1:KeyboardEvent) : void
      {
         this.§5214236324236337123423632234§.enable = §52142345123464123423632234§.isEmailValid(this.§52142373223745123423632234§.value);
      }
   }
}

