package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class LoginEvent extends Event
   {
      
      public static const CHECK_CAPTCHA_AND_LOGIN:String = "LoginEvent.CHECK_CAPTCHA_AND_LOGIN";
      
      public static const LOGIN_AFTER_CAPTCHA_CHECKED:String = "LoginEvent.LOGIN_AFTER_CAPTCHA_CHECKED";
      
      private var §super try§:String;
      
      private var §521423137292313742123423632234§:String;
      
      private var §with catch break§:Boolean;
      
      private var §521423132962313309123423632234§:String;
      
      public function LoginEvent(param1:String, param2:String, param3:String, param4:Boolean, param5:String)
      {
         super(param1);
         this.§super try§ = param2;
         this.§521423137292313742123423632234§ = param3;
         this.§with catch break§ = param4;
         this.§521423132962313309123423632234§ = param5;
      }
      
      public function get callsign() : String
      {
         return this.§super try§;
      }
      
      public function get rememberMe() : Boolean
      {
         return this.§with catch break§;
      }
      
      public function get password() : String
      {
         return this.§521423137292313742123423632234§;
      }
      
      public function get captchaAnswer() : String
      {
         return this.§521423132962313309123423632234§;
      }
   }
}

