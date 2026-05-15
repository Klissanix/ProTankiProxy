package §implements var class§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import assets.§if use implements§;
   import flash.events.MouseEvent;
   import flash.text.TextLineMetrics;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class BattleFinishNotification extends Notification
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §5214231019231032123423632234§:int = 96;
      
      private var §get switch default§:§5214231141231154123423632234§;
      
      private var §each final§:§5214237085237098123423632234§;
      
      private var §5214239856239869123423632234§:§if use implements§;
      
      public function BattleFinishNotification()
      {
         super();
      }
      
      private function f13ca8a(param1:MouseEvent) : void
      {
         this.closeNotification();
      }
      
      override protected function init() : void
      {
         super.init();
         this.§get switch default§ = new §5214231141231154123423632234§();
         this.§get switch default§.color = 5898034;
         this.§get switch default§.mouseEnabled = false;
         addChild(this.§get switch default§);
         this.§get switch default§.htmlText = message;
         this.§5214239856239869123423632234§ = new §if use implements§();
         addChild(this.§5214239856239869123423632234§);
         this.§each final§ = new §5214237085237098123423632234§();
         this.§each final§.width = 96;
         this.§each final§.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         addChild(this.§each final§);
         autoClosable = false;
      }
      
      protected function getRewardText(param1:int, param2:int) : String
      {
         var _loc3_:String = String(param1);
         if(param2 > 0)
         {
            _loc3_ = "<font color=\"#f3c800\">" + (String(param1 + param2)) + "</font>";
         }
         return _loc3_;
      }
      
      override protected function setEvents() : void
      {
         super.setEvents();
         this.§each final§.addEventListener("click",this.f13ca8a);
      }
      
      override protected function removeEvents() : void
      {
         super.removeEvents();
         this.§each final§.removeEventListener("click",this.f13ca8a);
      }
      
      override protected function closeNotification() : void
      {
         hide();
      }
      
      override protected function resize() : void
      {
         this.§get switch default§.x = 11 + 9;
         this.§get switch default§.y = 11 + 7;
         var _loc1_:TextLineMetrics = this.§get switch default§.getLineMetrics(this.§get switch default§.numLines - 1);
         this.§5214239856239869123423632234§.x = int(this.§get switch default§.x + _loc1_.width + 5);
         this.§5214239856239869123423632234§.y = this.§get switch default§.y + this.§get switch default§.height - 14;
         §5214234887234900123423632234§ = this.§get switch default§.y + this.§get switch default§.height - 3;
         var _loc2_:int = this.§get switch default§.x + this.§get switch default§.width + 11 * 2;
         if(_loc2_ > _width)
         {
            _width = _loc2_;
         }
         this.§each final§.x = _width - this.§each final§.width - 11;
         this.§each final§.y = §5214234887234900123423632234§ + 16;
         _height = this.§each final§.y + this.§each final§.height + 11 + 1;
         super.resize();
      }
   }
}

