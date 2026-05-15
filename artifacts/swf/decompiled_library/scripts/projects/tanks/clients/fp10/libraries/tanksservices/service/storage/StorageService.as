package projects.tanks.clients.fp10.libraries.tanksservices.service.storage
{
   import flash.net.SharedObject;
   
   public class StorageService implements IStorageService
   {
      
      private var §override switch for§:SharedObject;
      
      public function StorageService(param1:SharedObject)
      {
         super();
         this.§override switch for§ = param1;
      }
      
      public function getStorage() : SharedObject
      {
         return this.§override switch for§;
      }
   }
}

