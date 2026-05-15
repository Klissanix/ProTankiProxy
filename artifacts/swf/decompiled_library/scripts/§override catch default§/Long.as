package §override catch default§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public final class Long
   {
      
      private static var §5214237109237122123423632234§:Dictionary = new Dictionary();
      
      public static const ZERO:Long = getLong(0,0);
      
      private var b34eb168:int;
      
      private var c3a10ab6:int;
      
      public function Long(param1:int, param2:int)
      {
         super();
         this.c3a10ab6 = param1;
         this.b34eb168 = param2;
      }
      
      public static function fromInt(param1:int) : Long
      {
         if(param1 < 0)
         {
            return getLong(4294967295,param1);
         }
         return getLong(0,param1);
      }
      
      public static function fromHexString(param1:String) : Long
      {
         var _loc2_:int = param1.length;
         if(_loc2_ <= 8)
         {
            return getLong(0,int("0x" + param1));
         }
         return getLong(int("0x" + param1.substr(0,_loc2_ - 8)),int("0x" + param1.substr(_loc2_ - 8)));
      }
      
      public static function comparator(param1:Long, param2:Long) : int
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Long = param1;
         var _loc4_:Long;
         if(_loc3_.c3a10ab6 != (_loc4_ = param2).c3a10ab6)
         {
            var _loc5_:Long = param1;
            var _loc6_:Long;
            return _loc5_.c3a10ab6 < (_loc6_ = param2).c3a10ab6 ? -1 : 1;
         }
         var _loc7_:Long = param1;
         var _loc8_:Long;
         if(_loc7_.b34eb168 != (_loc8_ = param2).b34eb168)
         {
            var _loc9_:Long = param1;
            var _loc10_:Long;
            return _loc9_.b34eb168 < (_loc10_ = param2).b34eb168 ? -1 : 1;
         }
         return 0;
      }
      
      public static function getLong(param1:int, param2:int) : Long
      {
         var _loc4_:Long = null;
         var _loc3_:Dictionary = §5214237109237122123423632234§[param2];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_[param1];
            if(_loc4_ == null)
            {
               _loc4_ = new Long(param1,param2);
               _loc3_[param1] = _loc4_;
            }
         }
         else
         {
            §5214237109237122123423632234§[param2] = new Dictionary();
            _loc4_ = new Long(param1,param2);
            §5214237109237122123423632234§[param2][param1] = _loc4_;
         }
         return _loc4_;
      }
      
      public function toByteArray(param1:ByteArray = null) : ByteArray
      {
         if(param1 == null)
         {
            param1 = new ByteArray();
         }
         param1.position = 0;
         param1.writeInt(this.c3a10ab6);
         param1.writeInt(this.b34eb168);
         param1.position = 0;
         return param1;
      }
      
      final public function toString(param1:uint = 10) : String
      {
         var _loc3_:Array = null;
         var _loc2_:UInt64 = null;
         var _loc4_:* = 0;
         if(param1 < 2 || param1 > 36)
         {
            throw new ArgumentError();
         }
         var _loc5_:Long;
         switch((_loc5_ = this).c3a10ab6 - -1)
         {
            case 0:
               var _loc7_:Long = this;
               return _loc7_.b34eb168.toString(param1);
            case 1:
               var _loc6_:Long = this;
               return _loc6_.b34eb168.toString(param1);
            default:
               var _loc8_:Long = this;
               var _loc9_:Long;
               if(_loc8_.b34eb168 == 0 && (_loc9_ = this).c3a10ab6 == 0)
               {
                  return "0";
               }
               _loc3_ = [];
               var _loc10_:Long;
               var _loc11_:Long;
               _loc2_ = new UInt64((_loc10_ = this).b34eb168,(_loc11_ = this).c3a10ab6);
               var _loc12_:Long = this;
               if(_loc12_.c3a10ab6 < 0)
               {
                  _loc2_.bitwiseNot();
                  _loc2_.add(1);
               }
               var _loc13_:UInt64;
               do
               {
                  _loc4_ = _loc2_.div(param1);
                  _loc3_[_loc3_.length] = (_loc4_ < 10 ? "0" : "a").charCodeAt() + _loc4_;
               }
               while(_loc13_ = _loc2_, _loc13_.§5214236533236546123423632234§ != 0);
               var _loc14_:Long = this;
               if(_loc14_.c3a10ab6 < 0)
               {
                  return "-" + _loc2_.low.toString(param1) + String.fromCharCode.apply(String,_loc3_.reverse());
               }
               return _loc2_.low.toString(param1) + String.fromCharCode.apply(String,_loc3_.reverse());
         }
      }
      
      public function get high() : int
      {
         return this.c3a10ab6;
      }
      
      public function get low() : int
      {
         return this.b34eb168;
      }
   }
}

