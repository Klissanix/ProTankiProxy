package §521423138252313838123423632234§
{
   import §521423109262310939123423632234§.§5214239570239583123423632234§;
   import §521423109262310939123423632234§.LoginByHashModelBase;
   import alternativa.tanks.service.IEntranceClientFacade;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class LoginByHashModel extends LoginByHashModelBase implements §521423105982310611123423632234§, §5214239570239583123423632234§
   {
      
      public static var §5214239171239184123423632234§:IEntranceClientFacade;
      
      public static var §if catch include§:IStorageService;
      
      public function LoginByHashModel()
      {
         super();
      }
      
      public function loginBySingleUseHashFailed() : void
      {
         §5214239171239184123423632234§.goToLoginForm();
      }
      
      private function c6bc6551(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc5_:String = Capabilities.language + String(Capabilities.cpuAddressSize) + Capabilities.version;
         var _loc2_:String = "";
         var _loc3_:int = param1.length;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ += String.fromCharCode(param1.charCodeAt(_loc4_) ^ _loc5_.charCodeAt(_loc4_ % _loc5_.length));
            _loc4_++;
         }
         return escape(_loc2_);
      }
      
      public function rememberUsersHash(param1:String) : void
      {
         param1 = this.c6bc6551(param1);
         var _loc2_:SharedObject = §if catch include§.getStorage();
         _loc2_.data.userHash = param1;
         _loc2_.flush();
      }
      
      public function loginByHashFailed() : void
      {
         var _loc1_:SharedObject = §if catch include§.getStorage();
         _loc1_.data.userHash = null;
         _loc1_.flush();
         §5214239171239184123423632234§.goToLoginForm();
      }
      
      public function loginByHash(param1:String) : void
      {
         server.loginByHash(param1);
      }
   }
}

