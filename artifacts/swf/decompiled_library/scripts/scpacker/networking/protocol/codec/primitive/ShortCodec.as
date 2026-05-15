package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class ShortCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = true;
      
      public const element:Class = int;
      
      public function ShortCodec()
      {
         super();
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return param1.readShort();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeShort(int(param2));
      }
   }
}

