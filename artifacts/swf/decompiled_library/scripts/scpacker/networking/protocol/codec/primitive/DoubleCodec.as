package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class DoubleCodec implements §5214239886239899123423632234§
   {
      
      public function DoubleCodec()
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeDouble(Number(param2));
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return param1.readDouble();
      }
   }
}

