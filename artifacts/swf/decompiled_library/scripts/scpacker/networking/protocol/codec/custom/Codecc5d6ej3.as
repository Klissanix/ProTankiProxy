package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import scpacker.networking.protocol.codec.OptionalCodec;
   import §with set static§.§import catch else§;
   
   public class Codecc5d6ej3 extends OptionalCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = true;
      
      public const element:Class = §52142320823221123423632234§;
      
      public function Codecc5d6ej3(param1:§import catch else§)
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(addBool(param1,param2))
         {
            return;
         }
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§52142320823221123423632234§ = §52142320823221123423632234§(param2);
         param1.writeFloat(_loc3_.x);
         param1.writeFloat(_loc3_.y);
         param1.writeFloat(_loc3_.§continue package false§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         if(getBool(param1))
         {
            return null;
         }
         var _loc2_:§52142320823221123423632234§ = new §52142320823221123423632234§();
         _loc2_.x = param1.readFloat();
         _loc2_.y = param1.readFloat();
         _loc2_.§continue package false§ = param1.readFloat();
         return _loc2_;
      }
   }
}

