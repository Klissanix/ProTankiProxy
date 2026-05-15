package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class BooleanCodec implements §5214239886239899123423632234§
   {
      
      public function BooleanCodec()
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeByte(param2 ? 1 : 0);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return param1[param1.position++] != 0;
      }
   }
}

