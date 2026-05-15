package alternativa.tanks.newbieservice
{
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class NewbieUserServiceImpl implements NewbieUserService
   {
      
      public static var §if catch include§:IStorageService;
      
      public function NewbieUserServiceImpl()
      {
         super();
      }
      
      public function set isNewbieUser(param1:Boolean) : void
      {
         §if catch include§.getStorage().data.isNewbieUser = param1;
      }
      
      public function get isNewbieUser() : Boolean
      {
         return §if catch include§.getStorage().data.isNewbieUser;
      }
   }
}

