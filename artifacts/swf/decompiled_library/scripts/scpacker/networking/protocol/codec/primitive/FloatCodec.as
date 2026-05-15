package scpacker.networking.protocol.codec.primitive
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   
   public class FloatCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = Number;
      
      public function FloatCodec()
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeFloat(Number(param2));
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return param1.readFloat();
      }
   }
}

