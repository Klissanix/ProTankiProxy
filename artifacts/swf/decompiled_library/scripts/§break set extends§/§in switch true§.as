package §break set extends§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214236145236158123423632234§.Signal;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.text.TextLineMetrics;
   import §package catch while§.SportBattleItemIcon;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §in switch true§ extends Notification
   {
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public static var §5214235632235645123423632234§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §if catch include§:IStorageService;
      
      private static const §5214231019231032123423632234§:int = 96;
      
      private static const §52142396823981123423632234§:String = "SHOW_ALERT_ABOUT_INACCESSIBLE_IN_STANDALONE";
      
      private var §521423107212310734123423632234§:§5214234011234024123423632234§;
      
      private var §return catch with§:String;
      
      private var §52142361223625123423632234§:String;
      
      private var §5214237428237441123423632234§:Boolean;
      
      private var §get var override§:§5214231141231154123423632234§;
      
      private var §extends final§:§5214231141231154123423632234§;
      
      private var §each final§:§5214237085237098123423632234§;
      
      private var §5214232518232531123423632234§:§5214237085237098123423632234§;
      
      private var §5214239811239824123423632234§:Boolean;
      
      private var §5214233464233477123423632234§:Boolean;
      
      private var §5214235631235644123423632234§:String;
      
      private var §set set in§:SportBattleItemIcon;
      
      public function §in switch true§(param1:String, param2:String, param3:String, param4:String, param5:Boolean, param6:String, param7:Boolean)
      {
         this.§return catch with§ = param3;
         this.§52142361223625123423632234§ = param4;
         this.§5214237428237441123423632234§ = param5;
         this.§5214233464233477123423632234§ = param7;
         this.§5214235631235644123423632234§ = param6;
         super(param1,param2);
      }
      
      private static function §5214234600234613123423632234§() : Boolean
      {
         var _loc1_:* = §if catch include§.getStorage().data["SHOW_ALERT_ABOUT_INACCESSIBLE_IN_STANDALONE"];
         return _loc1_ != undefined;
      }
      
      private static function §521423129312312944123423632234§() : void
      {
         §if catch include§.getStorage().data["SHOW_ALERT_ABOUT_INACCESSIBLE_IN_STANDALONE"] = true;
         §if catch include§.getStorage().flush();
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5214239811239824123423632234§ = this.§5214237428237441123423632234§ && !ExternalInterface.available;
         this.§521423107212310734123423632234§ = new §5214234011234024123423632234§(userId);
         addChild(this.§521423107212310734123423632234§);
         this.§get var override§ = new §5214231141231154123423632234§();
         this.§get var override§.color = 5898034;
         this.§get var override§.mouseEnabled = false;
         addChild(this.§get var override§);
         this.§get var override§.htmlText = message;
         this.§extends final§ = new §5214231141231154123423632234§();
         this.§extends final§.color = 5898034;
         this.§extends final§.mouseEnabled = false;
         addChild(this.§extends final§);
         this.§extends final§.htmlText = this.§5214235631235644123423632234§;
         if(this.§5214233464233477123423632234§)
         {
            this.§set set in§ = new SportBattleItemIcon();
            this.§set set in§.gotoAndStop(1);
            addChild(this.§set set in§);
         }
         this.§5214232518232531123423632234§ = new §5214237085237098123423632234§();
         this.§5214232518232531123423632234§.width = 96;
         this.§5214232518232531123423632234§.label = §5214236363236376123423632234§.getText("STRING_GO_TO_BATTLE_LABEL");
         addChild(this.§5214232518232531123423632234§);
         this.§each final§ = new §5214237085237098123423632234§();
         this.§each final§.width = 96;
         this.§each final§.label = §5214236363236376123423632234§.getText("STRING_DECLINE_LABEL");
         addChild(this.§each final§);
         this.§5214232518232531123423632234§.visible = !this.§5214239811239824123423632234§;
         this.§each final§.visible = !this.§5214239811239824123423632234§;
      }
      
      private function §521423114512311464123423632234§(param1:MouseEvent) : void
      {
         §5214233439233452123423632234§.accept(userId,this.§return catch with§,this.§52142361223625123423632234§,this.§5214237428237441123423632234§);
         hide();
      }
      
      override protected function resize() : void
      {
         var _loc2_:TextLineMetrics = null;
         var _loc1_:int = 0;
         this.§521423107212310734123423632234§.x = 11 + 7;
         this.§521423107212310734123423632234§.y = 11 + 5;
         this.§get var override§.x = 11 + 9;
         this.§get var override§.y = this.§521423107212310734123423632234§.y + this.§521423107212310734123423632234§.height - 1;
         this.§extends final§.x = 11 + 9;
         _loc2_ = this.§get var override§.getLineMetrics(0);
         if(this.§5214233464233477123423632234§)
         {
            this.§set set in§.x = 11 + 12;
            this.§set set in§.y = this.§get var override§.y + _loc2_.height + 3;
            this.§extends final§.x = this.§set set in§.x + this.§set set in§.width + 2;
         }
         this.§extends final§.y = this.§get var override§.y + _loc2_.height;
         §5214234887234900123423632234§ = this.§get var override§.y + this.§get var override§.height - 3;
         var _loc3_:int = this.§get var override§.x + this.§get var override§.width + 11 * 2;
         if(_loc3_ > _width)
         {
            _width = _loc3_;
         }
         if(this.§5214239811239824123423632234§)
         {
            _height = §5214234887234900123423632234§ + 11 * 2 + 1;
         }
         else
         {
            _loc1_ = §5214234887234900123423632234§ + 16;
            this.§5214232518232531123423632234§.x = 11;
            this.§5214232518232531123423632234§.y = _loc1_;
            this.§each final§.x = _width - this.§each final§.width - 11;
            this.§each final§.y = _loc1_;
            _height = this.§5214232518232531123423632234§.y + this.§5214232518232531123423632234§.height + 11 + 1;
         }
         super.resize();
      }
      
      override public function show(param1:Signal) : void
      {
         super.show(param1);
         §5214233439233452123423632234§.playNotificationSound();
      }
      
      override protected function closeNotification() : void
      {
         §5214233439233452123423632234§.reject(userId);
         if(this.§5214239811239824123423632234§ && !§5214234600234613123423632234§())
         {
            §5214235632235645123423632234§.showAlert(§5214236363236376123423632234§.getText("STRING_YOUR_ARE_PLAING_SAFP_ALERT"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
            §521423129312312944123423632234§();
         }
         hide();
      }
      
      override protected function setEvents() : void
      {
         super.setEvents();
         this.§5214232518232531123423632234§.addEventListener("click",this.§521423114512311464123423632234§);
         this.§each final§.addEventListener("click",this.§5214239061239074123423632234§);
      }
      
      private function §5214239061239074123423632234§(param1:MouseEvent) : void
      {
         this.closeNotification();
      }
      
      override protected function removeEvents() : void
      {
         super.removeEvents();
         this.§5214232518232531123423632234§.removeEventListener("click",this.§521423114512311464123423632234§);
         this.§each final§.removeEventListener("click",this.§5214239061239074123423632234§);
      }
   }
}

