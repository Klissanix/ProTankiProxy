package §null finally finally§
{
   import §521423128932312906123423632234§.SelectCountryAlert;
   import §5214238087238100123423632234§.§5214239521239534123423632234§;
   import §5214238087238100123423632234§.§return catch extends§;
   import alternativa.tanks.service.country.CountryService;
   import §catch set finally§.UserPaymentCountryChangedEvent;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §use catch super§.SwitchLayoutEvent;
   
   public class UserCountryModel extends §5214239521239534123423632234§ implements §return catch extends§, §do set function§, §throw catch var§
   {
      
      public static var §break var false§:CountryService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private var §5214239861239874123423632234§:Boolean;
      
      public function UserCountryModel()
      {
         super();
      }
      
      private function e42d7c55(param1:SwitchLayoutEvent) : void
      {
         this.§5214239861239874123423632234§ = param1.type == "SWITCH_FROM_BATTLE";
         if(§break var false§.chooseCountryForPayment())
         {
            §521423120492312062123423632234§.§5214233800233813123423632234§();
         }
         else
         {
            this.showPayment();
         }
      }
      
      public function objectUnloaded() : void
      {
         this.removeEventListeners();
         this.§5214239861239874123423632234§ = false;
      }
      
      public function requestUserCountry(param1:String) : void
      {
         §break var false§.setDefaultCountryCode(param1);
         new SelectCountryAlert(this.f4c80cf1);
      }
      
      private function f4c80cf1(param1:String) : void
      {
         §break var false§.setDefaultCountryCode(param1);
         §521423120492312062123423632234§.§break for true§(param1);
         this.showPayment();
      }
      
      private function removeEventListeners() : void
      {
         §continue for final§.removeEventListener("SWITCH_STARTED",this.e42d7c55);
         §continue for final§.removeEventListener("SWITCH_FROM_BATTLE",this.e42d7c55);
         §break var false§.removeEventListener("UserPaymentCountryChangedEventUSER_PAYMENT_COUNTRY_CHANGED",this.c15d99c6);
      }
      
      private function showPayment() : void
      {
         if(this.§5214239861239874123423632234§)
         {
            throw new Error("");
         }
         §continue for final§.showPayment();
      }
      
      public function showPaymentWindow() : void
      {
         this.showPayment();
      }
      
      private function addEventListeners() : void
      {
         §continue for final§.addEventListener("SWITCH_STARTED",this.e42d7c55);
         §continue for final§.addEventListener("SWITCH_FROM_BATTLE",this.e42d7c55);
         §break var false§.addEventListener("UserPaymentCountryChangedEventUSER_PAYMENT_COUNTRY_CHANGED",this.c15d99c6);
      }
      
      private function c15d99c6(param1:UserPaymentCountryChangedEvent) : void
      {
         §521423120492312062123423632234§.§break for true§(param1.§get for function§);
      }
      
      public function objectLoaded() : void
      {
         §break var false§.initService(§switch var switch§());
         this.addEventListeners();
      }
   }
}

