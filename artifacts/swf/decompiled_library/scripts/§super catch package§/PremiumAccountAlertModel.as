package §super catch package§
{
   import §521423100992310112123423632234§.PremiumAccountWelcomeAlert;
   import §521423113542311367123423632234§.PremiumCompleteNotification;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import §import false§.§5214239193239206123423632234§;
   import §import false§.§continue const for§;
   import §import false§.§return set finally§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   
   public class PremiumAccountAlertModel extends §return set finally§ implements §5214239193239206123423632234§
   {
      
      public static var §521423111482311161123423632234§:INotificationService;
      
      public static var §with var try§:PremiumService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §5214235273235286123423632234§:int = 60000;
      
      private var §521423118172311830123423632234§:uint = 0;
      
      private var §5214231350231363123423632234§:Boolean;
      
      private var §5214232522232535123423632234§:int;
      
      public function PremiumAccountAlertModel()
      {
         super();
      }
      
      private function d6837511() : void
      {
         var _loc1_:int = 0;
         this.c50b48eb();
         if(§with var try§.hasPremium())
         {
            _loc1_ = §with var try§.getTimeLeft() - this.§5214232522232535123423632234§;
            if(_loc1_ > 0)
            {
               this.§5214231350231363123423632234§ = false;
               this.§521423118172311830123423632234§ = setInterval(this.d6837511,60000);
            }
            else if(!this.§5214231350231363123423632234§)
            {
               this.b43c08cd();
            }
         }
      }
      
      private function e32d1f05(param1:Event) : void
      {
         if(§with var try§.hasPremium())
         {
            this.d6837511();
         }
         else
         {
            this.e3d37ec6();
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§continue const for§ = §switch var switch§();
         if(_loc1_.§5214233922233935123423632234§)
         {
            if(_loc1_.§5214237915237928123423632234§)
            {
               this.showWelcomeAlert(_loc1_.§try use do§);
            }
            if(_loc1_.§521423103942310407123423632234§)
            {
               this.e3d37ec6();
            }
            this.§5214231350231363123423632234§ = _loc1_.§521423105892310602123423632234§;
            this.§5214232522232535123423632234§ = _loc1_.§5214238813238826123423632234§;
            this.d6837511();
            §with var try§.addEventListener("change",this.e32d1f05);
         }
      }
      
      private function e3d37ec6() : void
      {
         §521423111482311161123423632234§.addNotification(new PremiumCompleteNotification(§5214236363236376123423632234§.getText("TEXT_PREMIUM_NOTIFICATION_COMPLETE")));
      }
      
      public function showWelcomeAlert(param1:Boolean) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = §5214236363236376123423632234§.getText("TEXT_PREMIUM_ALERT_RETURN");
         }
         else
         {
            _loc2_ = §5214236363236376123423632234§.getText("TEXT_PREMIUM_ALERT_WELCOM");
         }
         var _loc3_:PremiumAccountWelcomeAlert = new PremiumAccountWelcomeAlert(_loc2_);
         _loc3_.§5214231016231029123423632234§();
      }
      
      private function b43c08cd() : void
      {
         this.§5214231350231363123423632234§ = true;
         §521423111482311161123423632234§.addNotification(new PremiumCompleteNotification(§5214236363236376123423632234§.getText("TEXT_PREMIUM_NOTIFICATION_SOON_COMPLETE")));
      }
      
      private function c50b48eb() : void
      {
         if(this.§521423118172311830123423632234§ != 0)
         {
            clearInterval(this.§521423118172311830123423632234§);
            this.§521423118172311830123423632234§ = 0;
         }
      }
      
      public function objectUnloaded() : void
      {
         §with var try§.removeEventListener("change",this.e32d1f05);
         this.c50b48eb();
      }
   }
}

