package alternativa.tanks.service
{
   public interface IPasswordParamsService
   {
      
      function get maxPasswordLength() : int;
      
      function set minPasswordLength(param1:int) : void;
      
      function get forbiddenPasswords() : Vector.<String>;
      
      function set maxPasswordLength(param1:int) : void;
      
      function get minPasswordLength() : int;
   }
}

