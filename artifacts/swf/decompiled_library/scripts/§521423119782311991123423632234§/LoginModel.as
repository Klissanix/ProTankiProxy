package §521423119782311991123423632234§
{
   import alternativa.tanks.service.IEntranceClientFacade;
   import §default for default§.§5214238122238135123423632234§;
   import §default for default§.LoginModelBase;
   
   public class LoginModel extends LoginModelBase implements §52142399872310000123423632234§, §5214238122238135123423632234§
   {
      
      public static var §52142340023413123423632234§:IEntranceClientFacade;
      
      public function LoginModel()
      {
         super();
      }
      
      public function wrongPassword() : void
      {
         §52142340023413123423632234§.wrongPassword();
      }
      
      public function login(param1:String, param2:String, param3:Boolean) : void
      {
         server.login(param1,param2,param3);
      }
   }
}

