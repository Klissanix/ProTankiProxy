package alternativa.tanks.services.tankregistry
{
   import §set package in§.ClientObject;
   
   public interface TankUsersRegistry
   {
      
      function getUsers() : Vector.<ClientObject>;
      
      function addUser(param1:ClientObject) : void;
      
      function getUserCount() : int;
      
      function getUser(param1:String) : ClientObject;
      
      function removeUser(param1:ClientObject) : void;
      
      function getLocalUser() : ClientObject;
      
      function existLocalUser() : Boolean;
   }
}

