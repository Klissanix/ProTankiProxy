package §class set do§
{
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   
   public class BonusCache
   {
      
      private static const §521423126152312628123423632234§:ObjectCache = new ObjectCache();
      
      private static const §finally switch function§:ObjectCache = new ObjectCache();
      
      private static var §521423134482313461123423632234§:Dictionary = new Dictionary();
      
      public function BonusCache()
      {
         super();
      }
      
      public static function clear() : void
      {
         §521423126152312628123423632234§.clear();
         §finally switch function§.clear();
         c1de13f5();
      }
      
      public static function putBonusMesh(param1:BonusMesh) : void
      {
         bd8a782(param1.getObjectId()).put(param1);
      }
      
      private static function bd8a782(param1:Long) : ObjectCache
      {
         var _loc2_:ObjectCache = §521423134482313461123423632234§[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new ObjectCache();
            §521423134482313461123423632234§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public static function putParachute(param1:Parachute) : void
      {
         §521423126152312628123423632234§.put(param1);
      }
      
      public static function isBonusMeshCacheEmpty(param1:Long) : Boolean
      {
         return bd8a782(param1).isEmpty();
      }
      
      public static function putCords(param1:Cords) : void
      {
         §finally switch function§.put(param1);
      }
      
      public static function isParachuteCacheEmpty() : Boolean
      {
         return §521423126152312628123423632234§.isEmpty();
      }
      
      public static function getBonusMesh(param1:Long) : BonusMesh
      {
         return BonusMesh(bd8a782(param1).get());
      }
      
      private static function c1de13f5() : void
      {
         var _loc1_:ObjectCache = null;
         for(var _loc2_ in §521423134482313461123423632234§)
         {
            _loc1_ = §521423134482313461123423632234§[_loc2_];
            _loc1_.clear();
            delete §521423134482313461123423632234§[_loc2_];
         }
      }
      
      public static function getParachute() : Parachute
      {
         return Parachute(§521423126152312628123423632234§.get());
      }
      
      public static function getCords() : Cords
      {
         return Cords(§finally switch function§.get());
      }
      
      public static function isCordsCacheEmpty() : Boolean
      {
         return §finally switch function§.isEmpty();
      }
   }
}

