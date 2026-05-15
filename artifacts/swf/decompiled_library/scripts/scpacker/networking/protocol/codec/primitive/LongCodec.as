package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class LongCodec implements §5214239886239899123423632234§
   {
      
      public function LongCodec()
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeInt(Long(param2).c3a10ab6);
         var _loc4_:*;
         param1.writeInt((_loc4_ = Long(param2)).b34eb168);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return Long.getLong(param1.readInt(),param1.readInt());
      }
   }
}

