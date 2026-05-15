package §5214233214233227123423632234§
{
   import §5214232186232199123423632234§.§521423131042313117123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §include else§.§5214233871233884123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionServiceUidEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §true package include§ extends Sprite
   {
      
      public static var §5214232180232193123423632234§:IFriendActionService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §with catch override§:IBlurService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private static const §get use finally§:int = 600;
      
      private var §return const var§:§5214237555237568123423632234§;
      
      private var §use switch false§:§5214231141231154123423632234§;
      
      private var §521423118962311909123423632234§:§5214231250231263123423632234§;
      
      private var §break switch class§:§521423131042313117123423632234§;
      
      private var §5214235723235736123423632234§:uint;
      
      private var §get package native§:String;
      
      private var §521423138442313857123423632234§:Boolean;
      
      private var §5214236122236135123423632234§:String;
      
      public function §true package include§()
      {
         super();
         this.init();
      }
      
      private function §521423120412312054123423632234§(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§521423120412312054123423632234§);
         if(§5214238240238253123423632234§.isOpen())
         {
            §with catch override§.blurGameContent();
         }
      }
      
      private function §with package native§(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§with package native§);
         if(§5214238240238253123423632234§.isOpen())
         {
            §with catch override§.blurGameContent();
         }
      }
      
      private function §5214238951238964123423632234§(param1:FriendActionServiceUidEvent) : void
      {
         this.§5214236122236135123423632234§ = param1.userId;
         var _loc2_:String = §5214236363236376123423632234§.getText("FRIENDS_ALREADY_HAVE_INCOMING").replace("%USERNAME%",param1.uid);
         §break use do§.showAlert(_loc2_,Vector.<String>([§5214236363236376123423632234§.getText("FRIENDS_YES"),§5214236363236376123423632234§.getText("FRIENDS_CANCEL_BUTTON_TEXT")]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§with set in§);
      }
      
      private function removeEvents() : void
      {
         this.§521423118962311909123423632234§.removeEventListener("click",this.§function function§);
         this.§return const var§.removeEventListener("focusIn",this.§super catch const§);
         this.§return const var§.removeEventListener("focusOut",this.§finally use default§);
         this.§return const var§.removeEventListener("LoginChanged",this.§5214233904233917123423632234§);
         this.§return const var§.removeEventListener("keyDown",this.§null var class§);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.UID_EXIST",this.§521423101332310146123423632234§);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.UID_NOT_EXIST",this.§5214236310236323123423632234§);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.ALREADY_IN_ACCEPTED_FRIENDS",this.§5214239420239433123423632234§);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.ALREADY_IN_OUTGOING_FRIENDS",this.§switch return§);
         §5214232180232193123423632234§.removeEventListener("FriendActionServiceUidEvent.ALREADY_IN_INCOMING_FRIENDS",this.§5214238951238964123423632234§);
      }
      
      private function §function function§(param1:MouseEvent) : void
      {
         this.§continue set include§();
      }
      
      private function §5214233904233917123423632234§(param1:§5214233871233884123423632234§) : void
      {
         this.§521423138442313857123423632234§ = false;
         this.§521423118962311909123423632234§.enable = false;
         this.§break switch class§.§5214233289233302123423632234§();
         this.§break switch class§.y = this.§return const var§.y + 5;
         if(this.§return const var§.value.length > 0)
         {
            this.§use switch false§.visible = false;
         }
         clearTimeout(this.§5214235723235736123423632234§);
         this.§5214235723235736123423632234§ = setTimeout(this.§5214232202232215123423632234§,600);
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            this.§continue set include§();
         }
      }
      
      private function §extends for throw§() : void
      {
         if(this.§return const var§.value.length == 0)
         {
            this.§use switch false§.visible = true;
            this.§break switch class§.§5214232307232320123423632234§();
            this.§return const var§.§in use set§ = true;
         }
      }
      
      private function §5214232202232215123423632234§() : void
      {
         if(this.§return const var§.value.length == 0)
         {
            this.§break switch class§.§5214232307232320123423632234§();
            this.§return const var§.§in use set§ = true;
         }
         else
         {
            this.§get package native§ = this.§return const var§.value;
            §5214232180232193123423632234§.checkUid(this.§get package native§);
         }
      }
      
      private function §52142377923792123423632234§() : void
      {
         this.§return const var§.value = "";
         this.§521423118962311909123423632234§.enable = false;
         this.§break switch class§.§5214232307232320123423632234§();
         this.§521423138442313857123423632234§ = false;
         this.§get package native§ = null;
      }
      
      public function show() : void
      {
         this.visible = true;
         this.setEvents();
         this.§return const var§.value = "";
         this.§extends for throw§();
      }
      
      private function §finally use default§(param1:FocusEvent) : void
      {
         this.§extends for throw§();
      }
      
      private function setEvents() : void
      {
         this.§521423118962311909123423632234§.addEventListener("click",this.§function function§);
         this.§return const var§.addEventListener("focusIn",this.§super catch const§);
         this.§return const var§.addEventListener("focusOut",this.§finally use default§);
         this.§return const var§.addEventListener("LoginChanged",this.§5214233904233917123423632234§);
         this.§return const var§.addEventListener("keyDown",this.§null var class§);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.UID_EXIST",this.§521423101332310146123423632234§);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.UID_NOT_EXIST",this.§5214236310236323123423632234§);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.ALREADY_IN_ACCEPTED_FRIENDS",this.§5214239420239433123423632234§);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.ALREADY_IN_OUTGOING_FRIENDS",this.§switch return§);
         §5214232180232193123423632234§.addEventListener("FriendActionServiceUidEvent.ALREADY_IN_INCOMING_FRIENDS",this.§5214238951238964123423632234§);
      }
      
      private function §5214236310236323123423632234§(param1:FriendActionServiceUidEvent) : void
      {
         this.§get package native§ = null;
         this.§return const var§.§in use set§ = false;
         this.§break switch class§.§5214235877235890123423632234§();
         this.§break switch class§.y = this.§return const var§.y + 7;
         this.§521423118962311909123423632234§.enable = false;
      }
      
      private function §521423101332310146123423632234§(param1:FriendActionServiceUidEvent) : void
      {
         this.§return const var§.§in use set§ = true;
         this.§break switch class§.§try set class§();
         this.§break switch class§.y = this.§return const var§.y + 7;
         if(§52142329523308123423632234§.userName.toLowerCase() != this.§get package native§.toLowerCase())
         {
            this.§521423138442313857123423632234§ = true;
            this.§521423118962311909123423632234§.enable = true;
         }
      }
      
      public function resize() : void
      {
         this.§return const var§.width = 235;
         this.§return const var§.x = 12;
         this.§use switch false§.x = this.§return const var§.x + 3;
         this.§use switch false§.y = this.§return const var§.y + 7;
         this.§break switch class§.x = this.§return const var§.x + this.§return const var§.width - this.§break switch class§.width - 15;
         this.§break switch class§.y = this.§return const var§.y + 7;
         this.§521423118962311909123423632234§.width = 100;
         this.§521423118962311909123423632234§.x = this.§return const var§.width + 8;
      }
      
      private function §switch return§(param1:FriendActionServiceUidEvent) : void
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("FRIENDS_REQUEST_EXIST_ALERT").replace("%USERNAME%",param1.uid);
         §break use do§.showAlert(_loc2_,Vector.<String>([§5214236363236376123423632234§.getText("ALERT_ANSWER_OK")]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§521423120412312054123423632234§);
      }
      
      private function §continue set include§() : void
      {
         if(this.§521423138442313857123423632234§ && this.§get package native§ != null)
         {
            §5214232180232193123423632234§.addByUid(this.§get package native§);
            this.§52142377923792123423632234§();
         }
      }
      
      private function §5214239420239433123423632234§(param1:FriendActionServiceUidEvent) : void
      {
         var _loc2_:String = §5214236363236376123423632234§.getText("FRIENDS_PLAYER_ALREADY_IN_LIST_ALERT").replace("%USERNAME%",param1.uid);
         §break use do§.showAlert(_loc2_,Vector.<String>([§5214236363236376123423632234§.getText("ALERT_ANSWER_OK")]));
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§with package native§);
      }
      
      private function init() : void
      {
         this.§return const var§ = new §5214237555237568123423632234§();
         this.§return const var§.§false set false§ = 20;
         this.§return const var§.§5214235789235802123423632234§ = "0-9.a-zA-z_\\-*";
         addChild(this.§return const var§);
         this.§use switch false§ = new §5214231141231154123423632234§();
         addChild(this.§use switch false§);
         this.§use switch false§.mouseEnabled = false;
         this.§use switch false§.color = 10987948;
         this.§use switch false§.text = §5214236363236376123423632234§.getText("FRIENDS_FIND_TO_SEND");
         this.§break switch class§ = new §521423131042313117123423632234§();
         addChild(this.§break switch class§);
         this.§521423118962311909123423632234§ = new §5214231250231263123423632234§();
         addChild(this.§521423118962311909123423632234§);
         this.§521423118962311909123423632234§.label = §5214236363236376123423632234§.getText("FRIENDS_SEND_REQUEST_BUTTON");
         this.§521423118962311909123423632234§.enable = false;
         this.resize();
      }
      
      private function §super catch const§(param1:FocusEvent) : void
      {
         this.§use switch false§.visible = false;
      }
      
      private function §with set in§(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§with set in§);
         if(param1.typeButton == §5214236363236376123423632234§.getText("FRIENDS_YES"))
         {
            §5214232180232193123423632234§.accept(this.§5214236122236135123423632234§);
         }
         if(§5214238240238253123423632234§.isOpen())
         {
            §with catch override§.blurGameContent();
         }
      }
      
      public function §true package final§() : void
      {
         clearTimeout(this.§5214235723235736123423632234§);
         this.removeEvents();
         this.§52142377923792123423632234§();
         this.visible = false;
      }
   }
}

