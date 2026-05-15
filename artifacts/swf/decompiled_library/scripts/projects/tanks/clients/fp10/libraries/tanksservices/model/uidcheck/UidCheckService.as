package projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck
{
   public interface UidCheckService
   {
      
      function exist(param1:String, param2:Function) : void;
      
      function validate(param1:String, param2:Function) : void;
      
      function getMaxLength() : int;
   }
}

