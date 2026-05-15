package §521423138092313822123423632234§
{
   import alternativa.tanks.service.IExternalEntranceService;
   import flash.utils.Dictionary;
   
   public class ExternalEntranceService implements IExternalEntranceService
   {
      
      private static const §5214237828237841123423632234§:String = "vkontakte";
      
      private static const §5214235659235672123423632234§:String = "facebook";
      
      private static const §do var class§:String = "google";
      
      private var §521423124372312450123423632234§:Dictionary;
      
      public function ExternalEntranceService()
      {
         super();
         this.§521423124372312450123423632234§ = new Dictionary();
      }
      
      public function get facebookEnabled() : Boolean
      {
         if(this.§521423124372312450123423632234§["facebook"])
         {
            return this.§521423124372312450123423632234§["facebook"];
         }
         return false;
      }
      
      public function setEnabled(param1:String, param2:Boolean) : void
      {
         this.§521423124372312450123423632234§[param1] = param2;
      }
      
      public function get googleEnabled() : Boolean
      {
         if(this.§521423124372312450123423632234§["google"])
         {
            return this.§521423124372312450123423632234§["google"];
         }
         return false;
      }
      
      public function get vkontakteEnabled() : Boolean
      {
         if(this.§521423124372312450123423632234§["vkontakte"])
         {
            return this.§521423124372312450123423632234§["vkontakte"];
         }
         return false;
      }
   }
}

