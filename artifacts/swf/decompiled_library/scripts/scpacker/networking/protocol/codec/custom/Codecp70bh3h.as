package scpacker.networking.protocol.codec.custom
{
   import §5214236524236537123423632234§.§false catch§;
   import flash.utils.ByteArray;
   import §package finally switch§.§521423138562313869123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecp70bh3h implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §false catch§;
      
      private var §super const var§:§5214239886239899123423632234§;
      
      private var §5214239287239300123423632234§:§5214239886239899123423632234§;
      
      private var §true var continue§:§5214239886239899123423632234§;
      
      private var §package for in§:§5214239886239899123423632234§;
      
      public function Codecp70bh3h(param1:§import catch else§)
      {
         super();
         this.§super const var§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214239287239300123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§true var continue§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodect63hj89");
         this.§package for in§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodect63hj89");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§false catch§ = new §false catch§();
         _loc2_.§default native§ = this.§super const var§.decode(param1) as int;
         _loc2_.§static const break§ = this.§5214239287239300123423632234§.decode(param1) as int;
         _loc2_.§in set for§ = this.§true var continue§.decode(param1) as Vector.<§521423138562313869123423632234§>;
         _loc2_.§continue use default§ = this.§package for in§.decode(param1) as Vector.<§521423138562313869123423632234§>;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§false catch§ = §false catch§(param2);
         this.§super const var§.encode(param1,_loc3_.§default native§);
         this.§5214239287239300123423632234§.encode(param1,_loc3_.§static const break§);
         this.§true var continue§.encode(param1,_loc3_.§in set for§);
         this.§package for in§.encode(param1,_loc3_.§continue use default§);
      }
   }
}

