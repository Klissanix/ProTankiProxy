package scpacker.networking.protocol.codec.custom
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import flash.utils.ByteArray;
   import §package finally switch§.§521423138562313869123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect63hj89 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423138562313869123423632234§;
      
      private var §get var try§:§5214239886239899123423632234§;
      
      private var §521423111962311209123423632234§:§5214239886239899123423632234§;
      
      private var §extends extends§:§5214239886239899123423632234§;
      
      private var §521423125442312557123423632234§:§5214239886239899123423632234§;
      
      private var §switch else§:§5214239886239899123423632234§;
      
      private var §5214233463233476123423632234§:§5214239886239899123423632234§;
      
      public function Codect63hj89(param1:§import catch else§)
      {
         super();
         this.§get var try§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecChatModeratorLevel");
         this.§521423111962311209123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ShortCodec");
         this.§extends extends§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ShortCodec");
         this.§521423125442312557123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ByteCodec");
         this.§switch else§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214233463233476123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423138562313869123423632234§ = §521423138562313869123423632234§(param2);
         this.§get var try§.encode(param1,_loc3_.§521423123012312314123423632234§);
         this.§521423111962311209123423632234§.encode(param1,_loc3_.deaths);
         this.§extends extends§.encode(param1,_loc3_.kills);
         this.§521423125442312557123423632234§.encode(param1,_loc3_.§5214237240237253123423632234§);
         this.§switch else§.encode(param1,_loc3_.score);
         this.§5214233463233476123423632234§.encode(param1,_loc3_.uid);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423138562313869123423632234§ = new §521423138562313869123423632234§();
         _loc2_.§521423123012312314123423632234§ = this.§get var try§.decode(param1) as §5214231668231681123423632234§;
         _loc2_.deaths = this.§521423111962311209123423632234§.decode(param1) as int;
         _loc2_.kills = this.§extends extends§.decode(param1) as int;
         _loc2_.§5214237240237253123423632234§ = this.§521423125442312557123423632234§.decode(param1) as int;
         _loc2_.score = this.§switch else§.decode(param1) as int;
         _loc2_.uid = this.§5214233463233476123423632234§.decode(param1) as String;
         _loc2_.§const const finally§ = _loc2_.uid;
         return _loc2_;
      }
   }
}

