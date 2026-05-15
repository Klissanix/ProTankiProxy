package alternativa.tanks.service.country
{
   import §5214238087238100123423632234§.§return for use§;
   import §5214238087238100123423632234§.§while package static§;
   import §catch set finally§.UserPaymentCountryChangedEvent;
   import flash.events.EventDispatcher;
   
   public class CountryServiceImpl extends EventDispatcher implements CountryService
   {
      
      private var §case for each§:Boolean;
      
      private var §5214236215236228123423632234§:Vector.<§while package static§>;
      
      private var §5214232142232155123423632234§:String;
      
      public function CountryServiceImpl()
      {
         super();
      }
      
      public function initService(param1:§return for use§) : void
      {
         this.§case for each§ = param1.§break const final§;
         this.§5214236215236228123423632234§ = param1.§521423136782313691123423632234§;
         this.§5214232142232155123423632234§ = param1.§try for null§;
      }
      
      public function chooseCountryForPayment() : Boolean
      {
         return this.§case for each§;
      }
      
      public function setDefaultCountryCode(param1:String) : void
      {
         this.§5214232142232155123423632234§ = param1;
      }
      
      public function getDefaultCountryCode() : String
      {
         return this.§5214232142232155123423632234§;
      }
      
      public function changeCountry(param1:String) : void
      {
         this.§5214232142232155123423632234§ = param1;
         dispatchEvent(new UserPaymentCountryChangedEvent("UserPaymentCountryChangedEventUSER_PAYMENT_COUNTRY_CHANGED",param1));
      }
      
      public function getRegisteredCountries() : Vector.<§while package static§>
      {
         return this.§5214236215236228123423632234§;
      }
   }
}

