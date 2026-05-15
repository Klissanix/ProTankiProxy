package §521423125342312547123423632234§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214231074231087123423632234§.CaptchaLocation;
   import §521423121252312138123423632234§.§else use import§;
   import §5214233237233250123423632234§.§521423140862314099123423632234§;
   import §5214233237233250123423632234§.§52142357923592123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.useremailandpassword.§5214239183239196123423632234§;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import §break var dynamic§.§521423113972311410123423632234§;
   import §break var dynamic§.§5214235372235385123423632234§;
   import §break var dynamic§.§final var use§;
   import §default for else§.§continue package true§;
   import §extends package get§.§5214231794231807123423632234§;
   import §final catch for§.§5214233786233799123423632234§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import §get package override§.§521423138332313846123423632234§;
   import §get package override§.CaptchaParser;
   import §include else§.§package switch set§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import §throw package do§.§native catch case§;
   
   public class SettingsModel extends §5214235372235385123423632234§ implements §521423113972311410123423632234§, §5214234168234181123423632234§, §throw catch var§, §native catch case§
   {
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §import use with§:IPanelView;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      public static var §class for finally§:PasswordService;
      
      private var §dynamic switch for§:§continue package true§;
      
      private var emailConfirmed:Boolean;
      
      private var updatePassword:Boolean;
      
      private var §5214239587239600123423632234§:Boolean;
      
      public function SettingsModel()
      {
         super();
      }
      
      public function callbackIsPasswordSet(param1:Boolean) : void
      {
         if(param1)
         {
            §521423998231011123423632234§.isPasswordSet = true;
         }
         else
         {
            this.§dynamic switch for§.§52142380223815123423632234§().§default finally dynamic§();
         }
         this.§dynamic switch for§.show();
      }
      
      public function objectUnloaded() : void
      {
         if(§import use with§.getPanel() != null)
         {
            §import use with§.getPanel().§521423117142311727123423632234§.removeEventListener("Close",this.d17c908c);
         }
      }
      
      private function c596e6ae(param1:§521423140862314099123423632234§) : void
      {
         §class for finally§.checkPassword(this.§dynamic switch for§.§52142380223815123423632234§().§each set finally§(),this.c4e35329);
      }
      
      private function c1570622() : void
      {
         §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136))).unbindFacade();
         if(!this.emailConfirmed)
         {
            this.§dynamic switch for§.removeEventListener("AccountSettingsEventSetEmail",this.d3f54ed6);
            this.§dynamic switch for§.removeEventListener("AccountSettingsEventChangePassword",this.c4e35329);
         }
         this.§dynamic switch for§.removeEventListener("SettingsWindowEventCloseSettings",this.onSettingsClose);
         this.§dynamic switch for§.removeEventListener("AccountSettingsEventChangePasswordByEmail",this.c70d519c);
         this.§dynamic switch for§.removeEventListener("AccountSettingsEventCheckPassword",this.c596e6ae);
         this.§dynamic switch for§.removeEventListener(§else use import§.§dynamic default§,this.da53cfa);
         §import use with§.getPanel().§521423117142311727123423632234§.§5214238856238869123423632234§.enable = true;
         this.c6fd5c79();
         this.§dynamic switch for§.destroy();
         this.§dynamic switch for§ = null;
      }
      
      private function d3f54ed6(param1:Event = null) : void
      {
         var _loc2_:§52142357923592123423632234§ = null;
         if(!this.emailConfirmed)
         {
            _loc2_ = this.§dynamic switch for§.§52142380223815123423632234§();
            if(_loc2_.§52142373223745123423632234§)
            {
               §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136))).checkCaptcha(_loc2_.§each switch var§(),CaptchaLocation.ACCOUNT_SETTINGS_FORM);
            }
         }
      }
      
      public function captchaAnswerIncorrect(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         §break use do§.showAlertById(19);
         this.captchaUpdated(param1,param2);
      }
      
      public function captchaUpdated(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         CaptchaParser.parse(param2,this.b3f4d1d0,param1);
      }
      
      private function c318adf8(param1:§5214233786233799123423632234§) : void
      {
         this.emailConfirmed = §521423998231011123423632234§.isEmailConfirmed();
         if(this.§dynamic switch for§ != null)
         {
            return;
         }
         this.§5214239587239600123423632234§ = param1 == §5214233786233799123423632234§.§include for const§;
         this.§dynamic switch for§ = new §continue package true§(§521423998231011123423632234§.getEmail(),this.emailConfirmed,this.§5214239587239600123423632234§);
         if(!this.emailConfirmed)
         {
            this.§dynamic switch for§.addEventListener("AccountSettingsEventSetEmail",this.d3f54ed6);
            this.§dynamic switch for§.addEventListener("AccountSettingsEventChangePassword",this.c4e35329);
         }
         this.§dynamic switch for§.addEventListener("SettingsWindowEventCloseSettings",this.onSettingsClose);
         this.§dynamic switch for§.addEventListener("AccountSettingsEventChangePasswordByEmail",this.c70d519c);
         this.§dynamic switch for§.addEventListener("AccountSettingsEventCheckPassword",this.c596e6ae);
         this.§dynamic switch for§.addEventListener(§else use import§.§dynamic default§,this.da53cfa);
         §import use with§.unlock();
         if(!§521423998231011123423632234§.isPasswordSet)
         {
            §class for finally§.checkIsPasswordSet(this.callbackIsPasswordSet);
         }
         else
         {
            this.§dynamic switch for§.show();
         }
         §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136))).bindFacade(this);
         var _loc2_:§52142357923592123423632234§ = this.§dynamic switch for§.§52142380223815123423632234§();
         if(_loc2_)
         {
            _loc2_.addEventListener("RefreshCaptchaClickedEvent.CLICKED",this.a70e1504);
         }
      }
      
      public function onSettingsClose(param1:Event = null) : void
      {
         if(this.§dynamic switch for§ != null)
         {
            this.c1570622();
         }
      }
      
      private function c4e35329(param1:Boolean) : void
      {
         var _loc2_:§52142357923592123423632234§ = null;
         if(param1)
         {
            _loc2_ = this.§dynamic switch for§.§52142380223815123423632234§();
            if(!this.emailConfirmed && _loc2_.§521423104532310466123423632234§ != "")
            {
               this.a49f32d6();
            }
         }
         else
         {
            this.§dynamic switch for§.§52142380223815123423632234§().§521423103642310377123423632234§();
         }
      }
      
      private function a70e1504(param1:§5214231794231807123423632234§) : void
      {
         this.getNewCaptcha();
      }
      
      public function setCaptchaLocations(param1:Vector.<CaptchaLocation>) : void
      {
      }
      
      private function b3f4d1d0(param1:Bitmap, param2:CaptchaLocation) : void
      {
         var _loc3_:§52142357923592123423632234§ = null;
         if(param2 == CaptchaLocation.ACCOUNT_SETTINGS_FORM)
         {
            _loc3_ = this.§dynamic switch for§.§52142380223815123423632234§();
            _loc3_.§false catch static§(param1);
         }
      }
      
      public function objectLoadedPost() : void
      {
         §import use with§.getPanel().§521423117142311727123423632234§.§52142377223785123423632234§ = !§521423998231011123423632234§.muteSound;
         §521423998231011123423632234§.initSoundValue();
         §import use with§.getPanel().§521423117142311727123423632234§.addEventListener("Close",this.d17c908c);
         this.c6fd5c79();
      }
      
      private function d17c908c(param1:§package switch set§) : void
      {
         switch(param1.§5214236155236168123423632234§)
         {
            case "Sound":
               this.a58d4258();
               break;
            case "Settings":
               §521423120492312062123423632234§.§5214236327236340123423632234§();
         }
      }
      
      private function c6fd5c79() : void
      {
         var _loc1_:§final var use§ = new §final var use§();
         _loc1_.§5214239944239957123423632234§ = §521423998231011123423632234§.showDamage;
         §521423120492312062123423632234§.§5214234706234719123423632234§(_loc1_.§5214239944239957123423632234§);
      }
      
      private function getNewCaptcha() : void
      {
         var _loc1_:§521423138332313846123423632234§ = §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136)));
         _loc1_.getNewCaptcha(CaptchaLocation.ACCOUNT_SETTINGS_FORM);
      }
      
      private function c70d519c(param1:§521423140862314099123423632234§) : void
      {
         var _loc2_:§52142357923592123423632234§ = null;
         if(this.emailConfirmed)
         {
            _loc2_ = this.§dynamic switch for§.§52142380223815123423632234§();
            §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136))).checkCaptcha(_loc2_.§each switch var§(),CaptchaLocation.ACCOUNT_SETTINGS_FORM);
         }
      }
      
      private function a49f32d6() : void
      {
         var _loc1_:§52142357923592123423632234§ = this.§dynamic switch for§.§52142380223815123423632234§();
         if(_loc1_.§each set finally§() == "")
         {
            §class for finally§.setPassword(_loc1_.§521423104532310466123423632234§);
         }
         else
         {
            this.updatePassword = true;
            §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136))).checkCaptcha(_loc1_.§each switch var§(),CaptchaLocation.ACCOUNT_SETTINGS_FORM);
         }
      }
      
      private function da53cfa(param1:§else use import§) : void
      {
      }
      
      public function openSettings(param1:§5214233786233799123423632234§) : void
      {
         this.c318adf8(param1);
      }
      
      public function captchaAnswerCorrect(param1:CaptchaLocation) : void
      {
         this.getNewCaptcha();
         var _loc2_:§52142357923592123423632234§ = this.§dynamic switch for§.§52142380223815123423632234§();
         if(this.emailConfirmed)
         {
            _loc2_.§try switch each§();
            §break use do§.showAlert(§5214236363236376123423632234§.getText("SETTINGS_CHANGE_PASSWORD_CONFIRMATION_SENT_TEXT"),Vector.<String>([AlertAnswer.OK]));
            §5214239183239196123423632234§(modelRegistry.getModel(Long.getLong(-1807797948,427400370))).sendChangeInstruction();
         }
         else if(this.updatePassword)
         {
            §class for finally§.updatePassword(_loc2_.§each set finally§(),_loc2_.§521423104532310466123423632234§);
            this.updatePassword = false;
         }
         else
         {
            §5214239183239196123423632234§(modelRegistry.getModel(Long.getLong(-1807797948,427400370))).changeEmail(_loc2_.§52142373223745123423632234§);
         }
      }
      
      private function a58d4258() : void
      {
         §521423998231011123423632234§.muteSound = !§521423998231011123423632234§.muteSound;
         §import use with§.unlock();
      }
   }
}

