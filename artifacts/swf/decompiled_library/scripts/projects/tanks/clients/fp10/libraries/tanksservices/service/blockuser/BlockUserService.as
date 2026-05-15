package projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser
{
   import flash.net.SharedObject;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class BlockUserService implements IBlockUserService
   {
      
      public static var §if catch include§:IStorageService;
      
      private static var §5214235791235804123423632234§:SharedObject;
      
      public function BlockUserService()
      {
         super();
      }
      
      public function getBlockList() : Array
      {
         var _loc1_:Array = null;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc1_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc1_ == null)
         {
            _loc1_ = [];
         }
         return _loc1_;
      }
      
      public function isBlocked(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
            §5214235791235804123423632234§.data.blocklist = _loc2_;
         }
         _loc3_ = _loc2_.indexOf(param1);
         return _loc3_ > -1;
      }
      
      public function blockUser(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = param1;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
         }
         var _loc4_:int = _loc2_.indexOf(_loc3_);
         if(_loc4_ > -1)
         {
            _loc2_.removeAt(_loc4_);
         }
         _loc2_.push(_loc3_);
         §5214235791235804123423632234§.data.blocklist = _loc2_;
      }
      
      public function unblockUser(param1:String) : void
      {
         var _loc2_:Array = null;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
         }
         var _loc3_:int = _loc2_.indexOf(param1);
         if(_loc3_ > -1)
         {
            _loc2_.removeAt(_loc3_);
         }
         §5214235791235804123423632234§.data.blocklist = _loc2_;
      }
      
      public function unblockAll() : void
      {
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         §5214235791235804123423632234§.data.blocklist = [];
      }
   }
}

