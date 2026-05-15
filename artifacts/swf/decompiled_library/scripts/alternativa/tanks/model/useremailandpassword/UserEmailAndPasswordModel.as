package alternativa.tanks.model.useremailandpassword
{
   import §521423106142310627123423632234§.Alert;
   import §5214233799233812123423632234§.§5214231540231553123423632234§;
   import §5214233799233812123423632234§.§5214235771235784123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class UserEmailAndPasswordModel extends §5214231540231553123423632234§ implements §5214235771235784123423632234§, §do set function§, §throw catch var§, §5214239183239196123423632234§, PasswordService
   {
      
      public static var display:IDisplay;
      
      public static var §import use with§:IPanelView;
      
      public static var §package for implements§:ISocialNetworkPanelService;
      
      public static var §5214231671231684123423632234§:ISettingsService;
      
      private var §5214235925235938123423632234§:String;
      
      private var §include catch super§:String;
      
      private var §5214233279233292123423632234§:Function;
      
      private var §default use dynamic§:Function;
      
      public function UserEmailAndPasswordModel()
      {
         super();
      }
      
      public function activateMessage(param1:String) : void
      {
         §import use with§.showAlert(param1);
         this.§5214235925235938123423632234§ = this.§include catch super§;
      }
      
      public function updatePassword(param1:String, param2:String) : void
      {
         §521423120492312062123423632234§.§52142374623759123423632234§(param1,param2);
      }
      
      public function checkIsPasswordSet(param1:Function) : void
      {
         this.§default use dynamic§ = param1;
         §521423120492312062123423632234§.§else for var§();
      }
      
      public function objectUnloaded() : void
      {
         OSGi.getInstance().unregisterService(PasswordService);
      }
      
      public function getEmail() : String
      {
         return this.§5214235925235938123423632234§;
      }
      
      public function updatePasswordError() : void
      {
         display.dialogsLayer.addChild(new Alert(9));
      }
      
      public function changePassword(param1:String) : void
      {
      }
      
      public function emailAlreadyUsed() : void
      {
         display.dialogsLayer.addChild(new Alert(10));
      }
      
      public function setPassword(param1:String) : void
      {
         §521423120492312062123423632234§.§5214239979239992123423632234§(param1);
      }
      
      public function notifyPasswordIsNotSet() : void
      {
         this.e44929cb(this.§default use dynamic§,false);
      }
      
      public function checkPassword(param1:String, param2:Function) : void
      {
         this.§5214233279233292123423632234§ = param2;
         §521423120492312062123423632234§.§5214231912231925123423632234§(param1);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function emailConfirmed(param1:String) : void
      {
         §5214231671231684123423632234§.setEmail(param1,true);
         this.§5214235925235938123423632234§ = param1;
      }
      
      public function objectLoaded() : void
      {
         this.§5214235925235938123423632234§ = §switch var switch§().§52142373223745123423632234§;
         §5214231671231684123423632234§.setEmail(this.§5214235925235938123423632234§,§switch var switch§().§5214235084235097123423632234§);
         OSGi.getInstance().registerService(PasswordService,this);
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function incorrectEmail() : void
      {
         display.dialogsLayer.addChild(new Alert(11));
      }
      
      public function notifyIncorrectPassword() : void
      {
         this.e44929cb(this.§5214233279233292123423632234§,false);
      }
      
      public function changeEmail(param1:String) : void
      {
         §5214231671231684123423632234§.setEmail(param1,false);
         this.§include catch super§ = param1;
         §521423120492312062123423632234§.§in final§(param1);
      }
      
      public function notifyPasswordIsSet() : void
      {
         this.e44929cb(this.§default use dynamic§,true);
      }
      
      public function sendChangeInstruction() : void
      {
         §521423120492312062123423632234§.§52142373923752123423632234§();
      }
      
      private function e44929cb(param1:Function, param2:Boolean) : *
      {
         if(Boolean(param1))
         {
            param1(param2);
         }
         param1 = null;
      }
      
      public function passwordChanged() : void
      {
         §package for implements§.passwordCreated = true;
      }
      
      public function notifyCorrectPassword() : void
      {
         this.e44929cb(this.§5214233279233292123423632234§,true);
      }
   }
}

