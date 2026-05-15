package §5214233176233189123423632234§
{
   import flash.events.Event;
   
   public class ExternalLoginEvent extends Event
   {
      
      public static const CHECK_CAPTCHA_AND_LOGIN:String = "ExternalLoginEvent.CHECK_CAPTCHA_AND_LOGIN";
      
      public static const LOGIN_AFTER_CAPTCHA_CHECKED:String = "ExternalLoginEvent.LOGIN_AFTER_CAPTCHA_CHECKED";
      
      private var §super try§:String;
      
      private var §521423137292313742123423632234§:String;
      
      private var §521423132962313309123423632234§:String;
      
      public function ExternalLoginEvent(param1:String, param2:String, param3:String, param4:String)
      {
         super(param1);
         this.§super try§ = param2;
         this.§521423137292313742123423632234§ = param3;
         this.§521423132962313309123423632234§ = param4;
      }
      
      public function get password() : String
      {
         return this.§521423137292313742123423632234§;
      }
      
      public function get callsign() : String
      {
         return this.§super try§;
      }
      
      public function get captchaAnswer() : String
      {
         return this.§521423132962313309123423632234§;
      }
      
      override public function clone() : Event
      {
         return new ExternalLoginEvent(type,this.callsign,this.password,this.captchaAnswer);
      }
   }
}

