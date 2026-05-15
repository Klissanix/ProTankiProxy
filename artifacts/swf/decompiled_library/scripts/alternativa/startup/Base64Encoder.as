package alternativa.startup
{
   import flash.utils.ByteArray;
   
   public class Base64Encoder
   {
      
      public static var §class package false§:int = 10;
      
      private static const §5214234304234317123423632234§:uint = 32767;
      
      private static const §5214235616235629123423632234§:Number = 61;
      
      private static const §set set extends§:Vector.<int> = new <int>[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,43,47];
      
      public var §5214234444234457123423632234§:Boolean = true;
      
      private var §5214231654231667123423632234§:Array;
      
      private var §catch const break§:uint;
      
      private var §5214233551233564123423632234§:uint;
      
      private const §5214234720234733123423632234§:Vector.<int> = new <int>[0,0,0];
      
      public function Base64Encoder()
      {
         super();
         this.reset();
      }
      
      public function encodeBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = param1.length;
         }
         var _loc5_:uint = param1.position;
         param1.position = param2;
         var _loc6_:uint = param2;
         var _loc4_:uint = param2 + param3;
         if(_loc4_ > param1.length)
         {
            _loc4_ = param1.length;
         }
         while(_loc6_ < _loc4_)
         {
            this.§5214234720234733123423632234§[this.§catch const break§] = param1[_loc6_];
            ++this.§catch const break§;
            if(this.§catch const break§ == this.§5214234720234733123423632234§.length || _loc4_ - _loc6_ == 1)
            {
               this.b12856eb();
               this.§catch const break§ = 0;
               this.§5214234720234733123423632234§[0] = 0;
               this.§5214234720234733123423632234§[1] = 0;
               this.§5214234720234733123423632234§[2] = 0;
            }
            _loc6_++;
         }
         param1.position = _loc5_;
      }
      
      private function b12856eb() : void
      {
         var _loc1_:Array = this.§5214231654231667123423632234§[this.§5214231654231667123423632234§.length - 1] as Array;
         if(_loc1_.length >= 32767)
         {
            _loc1_ = [];
            this.§5214231654231667123423632234§[§5214231654231667123423632234§.length] = _loc1_;
         }
         _loc1_[_loc1_.length] = §set set extends§[(this.§5214234720234733123423632234§[0] & 0xFF) >> 2];
         _loc1_[_loc1_.length] = §set set extends§[(this.§5214234720234733123423632234§[0] & 3) << 4 | (this.§5214234720234733123423632234§[1] & 0xF0) >> 4];
         if(this.§catch const break§ > 1)
         {
            _loc1_[_loc1_.length] = §set set extends§[(this.§5214234720234733123423632234§[1] & 0x0F) << 2 | (this.§5214234720234733123423632234§[2] & 0xC0) >> 6];
         }
         else
         {
            _loc1_[_loc1_.length] = 61;
         }
         if(this.§catch const break§ > 2)
         {
            _loc1_[_loc1_.length] = §set set extends§[this.§5214234720234733123423632234§[2] & 0x3F];
         }
         else
         {
            _loc1_[_loc1_.length] = 61;
         }
         if(this.§5214234444234457123423632234§)
         {
            if((this.§5214233551233564123423632234§ = this.§5214233551233564123423632234§ + 4) == 76)
            {
               _loc1_[_loc1_.length] = §class package false§;
               this.§5214233551233564123423632234§ = 0;
            }
         }
      }
      
      public function encodeUTFBytes(param1:String) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         _loc2_.position = 0;
         this.encodeBytes(_loc2_);
      }
      
      public function toString() : String
      {
         return this.flush();
      }
      
      public function reset() : void
      {
         this.§5214231654231667123423632234§ = [[]];
         this.§catch const break§ = 0;
         this.§5214233551233564123423632234§ = 0;
         this.§5214234720234733123423632234§[0] = 0;
         this.§5214234720234733123423632234§[1] = 0;
         this.§5214234720234733123423632234§[2] = 0;
      }
      
      private function a2c467bf() : String
      {
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc1_:String = "";
         var _loc2_:uint = this.§5214231654231667123423632234§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§5214231654231667123423632234§[_loc3_] as Array;
            _loc1_ += String.fromCharCode.apply(null,_loc4_);
            _loc3_++;
         }
         this.§5214231654231667123423632234§ = [[]];
         return _loc1_;
      }
      
      public function flush() : String
      {
         if(this.§catch const break§ > 0)
         {
            this.b12856eb();
         }
         var _loc1_:String = this.a2c467bf();
         this.reset();
         return _loc1_;
      }
      
      public function encode(param1:String, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = uint(param1.length);
         }
         var _loc5_:uint = param2;
         var _loc4_:uint = param2 + param3;
         if(_loc4_ > param1.length)
         {
            _loc4_ = uint(param1.length);
         }
         while(_loc5_ < _loc4_)
         {
            this.§5214234720234733123423632234§[this.§catch const break§] = param1.charCodeAt(_loc5_);
            ++this.§catch const break§;
            if(this.§catch const break§ == this.§5214234720234733123423632234§.length || _loc4_ - _loc5_ == 1)
            {
               this.b12856eb();
               this.§catch const break§ = 0;
               this.§5214234720234733123423632234§[0] = 0;
               this.§5214234720234733123423632234§[1] = 0;
               this.§5214234720234733123423632234§[2] = 0;
            }
            _loc5_++;
         }
      }
   }
}

