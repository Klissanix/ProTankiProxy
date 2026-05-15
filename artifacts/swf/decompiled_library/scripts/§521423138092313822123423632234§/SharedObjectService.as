package §521423138092313822123423632234§
{
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import §default use final§.§5214231093231106123423632234§;
   import flash.system.Capabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class SharedObjectService extends §5214231093231106123423632234§ implements §521423109822310995123423632234§
   {
      
      public static var §if catch include§:IStorageService;
      
      public function SharedObjectService()
      {
         super();
      }
      
      public function get entranceHash() : String
      {
         return this.c548962e(§if catch include§.getStorage().data.userHash);
      }
      
      public function set haveVisitedTankiAlready(param1:Boolean) : void
      {
         §if catch include§.getStorage().data.alreadyPlayedTanks = true;
      }
      
      public function get haveVisitedTankiAlready() : Boolean
      {
         return §if catch include§.getStorage().data.alreadyPlayedTanks != null ? Boolean(§if catch include§.getStorage().data.alreadyPlayedTanks) : false;
      }
      
      public function set storedUserName(param1:String) : void
      {
         §if catch include§.getStorage().data.userName = param1;
      }
      
      private function c548962e(param1:String) : String
      {
         var _loc4_:int = 0;
         if(param1 == null)
         {
            return null;
         }
         var _loc5_:String = Capabilities.language + String(Capabilities.cpuAddressSize) + Capabilities.version;
         param1 = unescape(param1);
         var _loc2_:String = "";
         var _loc3_:int = param1.length;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ += String.fromCharCode(param1.charCodeAt(_loc4_) ^ _loc5_.charCodeAt(_loc4_ % _loc5_.length));
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function get storedUserName() : String
      {
         return §if catch include§.getStorage().data.userName;
      }
   }
}

