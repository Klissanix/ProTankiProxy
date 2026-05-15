package scpacker.networking.protocol.codec.custom
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §dynamic switch throw§.§set var use§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco370482 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §set var use§;
      
      private var §5214237833237846123423632234§:§5214239886239899123423632234§;
      
      private var §521423128642312877123423632234§:§5214239886239899123423632234§;
      
      private var §5214234187234200123423632234§:§5214239886239899123423632234§;
      
      private var §521423122282312241123423632234§:§5214239886239899123423632234§;
      
      private var §get var try§:§5214239886239899123423632234§;
      
      private var §5214235153235166123423632234§:§5214239886239899123423632234§;
      
      private var §each switch true§:§5214239886239899123423632234§;
      
      private var §5214237037237050123423632234§:§5214239886239899123423632234§;
      
      private var §throw package true§:§5214239886239899123423632234§;
      
      private var §while package with§:§5214239886239899123423632234§;
      
      private var §include var null§:§5214239886239899123423632234§;
      
      private var §5214237026237039123423632234§:§5214239886239899123423632234§;
      
      public function Codeco370482(param1:§import catch else§)
      {
         super();
         this.§5214237833237846123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§521423128642312877123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214234187234200123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§521423122282312241123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§get var try§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecChatModeratorLevel");
         this.§5214235153235166123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§each switch true§ = param1.§with const if§("scpacker.networking.protocol.codec.complex.VectorCodecString");
         this.§5214237037237050123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§throw package true§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ShortCodec");
         this.§while package with§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§include var null§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214237026237039123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§set var use§ = new §set var use§();
         _loc2_.§each catch native§ = this.§5214237833237846123423632234§.decode(param1) as Boolean;
         _loc2_.§while use throw§ = this.§521423128642312877123423632234§.decode(param1) as Boolean;
         _loc2_.§5214236586236599123423632234§ = this.§5214234187234200123423632234§.decode(param1) as int;
         _loc2_.§finally use with§ = this.§521423122282312241123423632234§.decode(param1) as Boolean;
         _loc2_.§521423123012312314123423632234§ = this.§get var try§.decode(param1) as §5214231668231681123423632234§;
         _loc2_.§5214238465238478123423632234§ = this.§each switch true§.decode(param1) as Vector.<String>;
         _loc2_.§521423117242311737123423632234§ = this.§5214237037237050123423632234§.decode(param1) as int;
         _loc2_.§native for for§ = this.§throw package true§.decode(param1) as int;
         _loc2_.§true final§ = this.§while package with§.decode(param1) as String;
         _loc2_.§5214239354239367123423632234§ = this.§include var null§.decode(param1) as Boolean;
         _loc2_.§5214234473234486123423632234§ = this.§5214237026237039123423632234§.decode(param1) as Boolean;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§set var use§ = §set var use§(param2);
         this.§5214237833237846123423632234§.encode(param1,_loc3_.§each catch native§);
         this.§521423128642312877123423632234§.encode(param1,_loc3_.§while use throw§);
         this.§5214234187234200123423632234§.encode(param1,_loc3_.§5214236586236599123423632234§);
         this.§521423122282312241123423632234§.encode(param1,_loc3_.§finally use with§);
         this.§get var try§.encode(param1,_loc3_.§521423123012312314123423632234§);
         this.§each switch true§.encode(param1,_loc3_.§5214238465238478123423632234§);
         this.§5214237037237050123423632234§.encode(param1,_loc3_.§521423117242311737123423632234§);
         this.§throw package true§.encode(param1,_loc3_.§native for for§);
         this.§while package with§.encode(param1,_loc3_.§true final§);
         this.§include var null§.encode(param1,_loc3_.§5214239354239367123423632234§);
         this.§5214237026237039123423632234§.encode(param1,_loc3_.§5214234473234486123423632234§);
      }
   }
}

