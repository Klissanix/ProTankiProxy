package §5214238735238748123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import flash.events.MouseEvent;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class ErrorNotification extends Notification
   {
      
      private static const §5214231019231032123423632234§:int = 96;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §extends for package§:§5214231141231154123423632234§;
      
      private var §5214236164236177123423632234§:§5214237085237098123423632234§;
      
      private var §in var§:§5214237085237098123423632234§;
      
      public function ErrorNotification(param1:String = "ERROR_FATAL")
      {
         super(null,param1);
         this.§extends for package§ = new §5214231141231154123423632234§();
         this.§extends for package§.text = §5214236363236376123423632234§.getText(param1);
         this.§extends for package§.color = 5898034;
         this.§extends for package§.mouseEnabled = false;
         addChild(this.§extends for package§);
         this.§in var§ = new §5214237085237098123423632234§();
         this.§in var§.width = 96 + 15;
         this.§in var§.label = §5214236363236376123423632234§.getText("REENTER_TO_GAME");
         addChild(this.§in var§);
         this.§5214236164236177123423632234§ = new §5214237085237098123423632234§();
         this.§5214236164236177123423632234§.width = 96;
         this.§5214236164236177123423632234§.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         addChild(this.§5214236164236177123423632234§);
         this.§in var§.addEventListener("click",this.f6714790,false,0,true);
         this.§5214236164236177123423632234§.addEventListener("click",this.onCancelClick,false,0,true);
      }
      
      private function onCancelClick(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function f6714790(param1:MouseEvent) : void
      {
         StartupSettings.closeApplication();
      }
      
      override protected function resize() : void
      {
         this.§extends for package§.x = 11 + 9;
         this.§extends for package§.y = 11 + 11;
         §5214234887234900123423632234§ = this.§extends for package§.y + this.§extends for package§.height - 3;
         var _loc1_:int = this.§extends for package§.x + this.§extends for package§.width + 11 * 2;
         if(_loc1_ > _width)
         {
            _width = _loc1_;
         }
         var _loc2_:int = §5214234887234900123423632234§ + 16;
         this.§5214236164236177123423632234§.x = 11;
         this.§5214236164236177123423632234§.y = _loc2_;
         this.§in var§.x = _width - this.§in var§.width - 11;
         this.§in var§.y = _loc2_;
         _height = this.§in var§.y + this.§in var§.height + 11 + 1;
         super.resize();
      }
   }
}

