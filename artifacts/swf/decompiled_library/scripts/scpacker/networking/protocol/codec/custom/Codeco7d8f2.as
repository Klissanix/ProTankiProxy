package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §for use final§.§function for super§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco7d8f2 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §function for super§;
      
      private var §const switch do§:§5214239886239899123423632234§;
      
      public function Codeco7d8f2(param1:§import catch else§)
      {
         super();
         this.§const switch do§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§function for super§ = §function for super§(param2);
         this.§const switch do§.encode(param1,_loc3_.§5214237169237182123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§function for super§ = new §function for super§();
         _loc2_.§5214237169237182123423632234§ = this.§const switch do§.decode(param1) as int;
         return _loc2_;
      }
   }
}

