package alternativa.tanks.model.useremailandpassword
{
   public interface PasswordService
   {
      
      function checkPassword(param1:String, param2:Function) : void;
      
      function updatePassword(param1:String, param2:String) : void;
      
      function setPassword(param1:String) : void;
      
      function checkIsPasswordSet(param1:Function) : void;
   }
}

