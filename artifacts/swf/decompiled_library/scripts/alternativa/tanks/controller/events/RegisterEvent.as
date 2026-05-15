package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class RegisterEvent extends Event
   {
      
      public static const REGISTER_AFTER_CAPTCHA_CHECKED:String = "RegisterEvent.REGISTER_AFTER_CAPTCHA_CHECKED";
      
      public static const CHECK_CAPTCHA_AND_REGISTER:String = "RegisterEvent.CHECK_CAPTCHA_AND_REGISTER";
      
      private var §super try§:String;
      
      private var §5214235925235938123423632234§:String;
      
      private var §521423137292313742123423632234§:String;
      
      private var §with catch break§:Boolean;
      
      private var §521423132962313309123423632234§:String;
      
      public function RegisterEvent(param1:String, param2:String, param3:String, param4:String, param5:Boolean, param6:String)
      {
         super(param1);
         this.§super try§ = param2;
         this.§5214235925235938123423632234§ = param3;
         this.§521423137292313742123423632234§ = param4;
         this.§with catch break§ = param5;
         this.§521423132962313309123423632234§ = param6;
      }
      
      public function get captchaAnswer() : String
      {
         return this.§521423132962313309123423632234§;
      }
      
      public function get callsign() : String
      {
         return this.§super try§;
      }
      
      public function get email() : String
      {
         return this.§5214235925235938123423632234§;
      }
      
      public function get rememberMe() : Boolean
      {
         return this.§with catch break§;
      }
      
      public function get password() : String
      {
         return this.§521423137292313742123423632234§;
      }
   }
}

