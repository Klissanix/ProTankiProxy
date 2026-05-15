package projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser
{
   public interface IBlockUserService
   {
      
      function getBlockList() : Array;
      
      function unblockUser(param1:String) : void;
      
      function unblockAll() : void;
      
      function blockUser(param1:String) : void;
      
      function isBlocked(param1:String) : Boolean;
   }
}

