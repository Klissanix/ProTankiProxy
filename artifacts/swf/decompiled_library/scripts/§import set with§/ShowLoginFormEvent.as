package §import set with§
{
   import flash.events.Event;
   
   public class ShowLoginFormEvent extends Event
   {
      
      public static const SHOW:String = "ShowLoginFormEvent.SHOW";
      
      private var §5214232654232667123423632234§:String;
      
      private var §class package super§:Boolean;
      
      private var §override for get§:Boolean;
      
      private var §521423137292313742123423632234§:String;
      
      public function ShowLoginFormEvent(param1:String, param2:Boolean, param3:Boolean, param4:String = null)
      {
         super("ShowLoginFormEvent.SHOW");
         this.§5214232654232667123423632234§ = param1;
         this.§class package super§ = param2;
         this.§override for get§ = param3;
         this.§521423137292313742123423632234§ = param4;
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
      
      public function get password() : String
      {
         return this.§521423137292313742123423632234§;
      }
      
      public function get loginCaptchaEnabled() : Boolean
      {
         return this.§override for get§;
      }
      
      public function get registrationEnabled() : Boolean
      {
         return this.§class package super§;
      }
   }
}

