package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class ByteCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = int;
      
      public function ByteCodec()
      {
         super();
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return param1.readByte();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeByte(int(param2));
      }
   }
}

