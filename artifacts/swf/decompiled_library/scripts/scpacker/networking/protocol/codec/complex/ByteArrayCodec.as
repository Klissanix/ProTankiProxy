package scpacker.networking.protocol.codec.complex
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class ByteArrayCodec implements §5214239886239899123423632234§
   {
      
      public function ByteArrayCodec()
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:ByteArray = ByteArray(param2);
         param1.writeInt(_loc3_.length);
         param1.writeBytes(_loc3_);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc3_:int = param1.readInt();
         var _loc2_:ByteArray = new ByteArray();
         if(_loc3_ > 0)
         {
            param1.readBytes(_loc2_,0,_loc3_);
         }
         return _loc2_;
      }
   }
}

