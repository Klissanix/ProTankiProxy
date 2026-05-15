package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §override finally set§.§5214235342235355123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §static const do§.§default const each§;
   import §with set static§.§import catch else§;
   
   public class Codece394142 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §default const each§;
      
      private var §while set each§:§5214239886239899123423632234§;
      
      public function Codece394142(param1:§import catch else§)
      {
         super();
         this.§while set each§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodect3cfda9");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§default const each§ = §default const each§(param2);
         this.§while set each§.encode(param1,_loc3_.§else return§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§default const each§ = new §default const each§();
         _loc2_.§else return§ = this.§while set each§.decode(param1) as Vector.<§5214235342235355123423632234§>;
         return _loc2_;
      }
   }
}

