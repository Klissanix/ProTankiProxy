package §5214231074231087123423632234§
{
   public class CaptchaLocation
   {
      
      public static const LOGIN_FORM:CaptchaLocation = new CaptchaLocation(0,"LOGIN_FORM");
      
      public static const REGISTER_FORM:CaptchaLocation = new CaptchaLocation(1,"REGISTER_FORM");
      
      public static const CLIENT_STARTUP:CaptchaLocation = new CaptchaLocation(2,"CLIENT_STARTUP");
      
      public static const RESTORE_PASSWORD_FORM:CaptchaLocation = new CaptchaLocation(3,"RESTORE_PASSWORD_FORM");
      
      public static const EMAIL_CHANGE_HASH:CaptchaLocation = new CaptchaLocation(4,"EMAIL_CHANGE_HASH");
      
      public static const ACCOUNT_SETTINGS_FORM:CaptchaLocation = new CaptchaLocation(5,"ACCOUNT_SETTINGS_FORM");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function CaptchaLocation(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function toString() : String
      {
         return "CaptchaLocation [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
   }
}

