package scpacker.networking.protocol.codec.custom
{
   import §default catch function§.§native class§;
   import flash.utils.ByteArray;
   import §package finally switch§.§521423138562313869123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecu2047a1 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §native class§;
      
      private var §get var while§:§5214239886239899123423632234§;
      
      public function Codecu2047a1(param1:§import catch else§)
      {
         super();
         this.§get var while§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodect63hj89");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§native class§ = new §native class§();
         _loc2_.§set var get§ = this.§get var while§.decode(param1) as Vector.<§521423138562313869123423632234§>;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§native class§ = §native class§(param2);
         this.§get var while§.encode(param1,_loc3_.§set var get§);
      }
   }
}

