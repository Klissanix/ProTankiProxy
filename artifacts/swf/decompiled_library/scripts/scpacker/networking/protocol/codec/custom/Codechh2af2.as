package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §import set true§.§try var switch§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codechh2af2 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §try var switch§;
      
      private var §521423125442312557123423632234§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codechh2af2(param1:§import catch else§)
      {
         super();
         this.§521423125442312557123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ByteCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§try var switch§ = §try var switch§(param2);
         this.§521423125442312557123423632234§.encode(param1,_loc3_.§5214237240237253123423632234§);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§try var switch§ = new §try var switch§();
         _loc2_.§5214237240237253123423632234§ = this.§521423125442312557123423632234§.decode(param1) as int;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

