package §521423113542311367123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.MouseEvent;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §with switch break§.PanelModel;
   
   public class PremiumCompleteNotification extends Notification
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §get var override§:§5214231141231154123423632234§;
      
      private var §each final§:§5214237085237098123423632234§;
      
      private var §5214232518232531123423632234§:§5214237085237098123423632234§;
      
      public function PremiumCompleteNotification(param1:String)
      {
         super(null,param1,false);
      }
      
      override protected function resize() : void
      {
         this.§get var override§.x = 11 + 9;
         this.§get var override§.y = 11 + 5;
         §5214234887234900123423632234§ = this.§get var override§.y + this.§get var override§.height - 3;
         var _loc1_:int = this.§get var override§.x + this.§get var override§.width + 11 * 2;
         if(_loc1_ > _width)
         {
            _width = _loc1_;
         }
         var _loc2_:int = §5214234887234900123423632234§ + 16;
         this.§5214232518232531123423632234§.x = 11;
         this.§5214232518232531123423632234§.y = _loc2_;
         this.§each final§.x = _width - this.§each final§.width - 11;
         this.§each final§.y = _loc2_;
         _height = this.§5214232518232531123423632234§.y + this.§5214232518232531123423632234§.height + 11 + 1;
         super.resize();
      }
      
      override protected function init() : void
      {
         super.init();
         this.§get var override§ = new §5214231141231154123423632234§();
         this.§get var override§.color = 5898034;
         this.§get var override§.mouseEnabled = false;
         this.§get var override§.htmlText = message;
         addChild(this.§get var override§);
         this.§5214232518232531123423632234§ = new §5214237085237098123423632234§();
         this.§5214232518232531123423632234§.label = §5214236363236376123423632234§.getText("TEXT_PREMIUM_BUTTON_EXTEND");
         addChild(this.§5214232518232531123423632234§);
         this.§each final§ = new §5214237085237098123423632234§();
         this.§each final§.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         addChild(this.§each final§);
      }
      
      override protected function removeEvents() : void
      {
         super.removeEvents();
         this.§5214232518232531123423632234§.removeEventListener("click",this.c9f489b);
         this.§each final§.removeEventListener("click",this.f13ca8a);
      }
      
      private function f13ca8a(param1:MouseEvent) : void
      {
         this.closeNotification();
      }
      
      private function c9f489b(param1:MouseEvent = null) : void
      {
         hide();
         PanelModel.switchPayment();
      }
      
      override protected function closeNotification() : void
      {
         hide();
      }
      
      override protected function setEvents() : void
      {
         super.setEvents();
         this.§5214232518232531123423632234§.addEventListener("click",this.c9f489b);
         this.§each final§.addEventListener("click",this.f13ca8a);
      }
   }
}

