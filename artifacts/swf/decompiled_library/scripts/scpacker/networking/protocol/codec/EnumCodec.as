package scpacker.networking.protocol.codec
{
   import avmplus.describeTypeObject;
   import flash.utils.ByteArray;
   
   public class EnumCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public var element:Class;
      
      private var §521423124772312490123423632234§:Array = [];
      
      public function EnumCodec(param1:Class)
      {
         super();
         var _loc3_:Object = describeTypeObject(param1,0x0100 | 8);
         for each(var _loc2_ in _loc3_.traits.variables)
         {
            this.§521423124772312490123423632234§[param1[_loc2_.name].value] = param1[_loc2_.name];
         }
         this.element = param1;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         param1.writeInt(param2.value);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         return this.§521423124772312490123423632234§[param1.readInt()];
      }
   }
}

