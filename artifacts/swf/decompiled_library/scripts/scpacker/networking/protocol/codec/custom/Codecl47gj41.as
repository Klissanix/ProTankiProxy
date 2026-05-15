package scpacker.networking.protocol.codec.custom
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §521423133832313396123423632234§.§class const package§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import scpacker.networking.protocol.codec.OptionalCodec;
   import §with set static§.§import catch else§;
   
   public class Codecl47gj41 extends OptionalCodec implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §class const package§;
      
      private var §get var try§:§5214239886239899123423632234§;
      
      private var §5214236124236137123423632234§:§5214239886239899123423632234§;
      
      private var §521423122072312220123423632234§:§5214239886239899123423632234§;
      
      private var §5214233463233476123423632234§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codecl47gj41(param1:§import catch else§)
      {
         super();
         this.§get var try§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecChatModeratorLevel");
         this.§5214236124236137123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§521423122072312220123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214233463233476123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         if(getBool(param1))
         {
            return null;
         }
         var _loc2_:§class const package§ = new §class const package§();
         _loc2_.§521423123012312314123423632234§ = this.§get var try§.decode(param1) as §5214231668231681123423632234§;
         _loc2_.§switch var try§ = this.§5214236124236137123423632234§.decode(param1) as String;
         _loc2_.§521423119912312004123423632234§ = this.§521423122072312220123423632234§.decode(param1) as int;
         var _loc3_:String = this.§5214233463233476123423632234§.decode(param1) as String;
         _loc2_.uid = _loc3_;
         _loc2_.§each use get§ = _loc3_;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§class const package§ = §class const package§(param2);
         this.§get var try§.encode(param1,_loc3_.§521423123012312314123423632234§);
         this.§5214236124236137123423632234§.encode(param1,_loc3_.§switch var try§);
         this.§521423122072312220123423632234§.encode(param1,_loc3_.§521423119912312004123423632234§);
         this.§5214233463233476123423632234§.encode(param1,_loc3_.uid);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
   }
}

