package projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties
{
   import flash.events.IEventDispatcher;
   
   public interface IUserPropertiesService extends IEventDispatcher
   {
      
      function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:String, param7:String) : void;
      
      function updateScore(param1:int) : void;
      
      function get userId() : String;
      
      function getUserProfileUrl(param1:String) : String;
      
      function get serverNumber() : int;
      
      function get gameHost() : String;
      
      function get userName() : String;
      
      function get score() : int;
      
      function updateRank(param1:int) : void;
      
      function get rank() : int;
   }
}

