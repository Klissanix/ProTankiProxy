package scpacker.networking.protocol.codec.custom
{
   import §521423113042311317123423632234§.§5214231399231412123423632234§;
   import §521423137372313750123423632234§.§521423125672312580123423632234§;
   import §5214233087233100123423632234§.§include catch with§;
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect398g8c implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214231399231412123423632234§;
      
      private var §5214237785237798123423632234§:§5214239886239899123423632234§;
      
      private var §521423116162311629123423632234§:§5214239886239899123423632234§;
      
      private var §get var native§:§5214239886239899123423632234§;
      
      private var §5214238131238144123423632234§:§5214239886239899123423632234§;
      
      private var §5214239181239194123423632234§:§5214239886239899123423632234§;
      
      private var §521423131842313197123423632234§:§5214239886239899123423632234§;
      
      private var §function set override§:§5214239886239899123423632234§;
      
      private var §5214234553234566123423632234§:§5214239886239899123423632234§;
      
      public function Codect398g8c(param1:§import catch else§)
      {
         super();
         this.§5214237785237798123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§521423116162311629123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§get var native§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214238131238144123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§5214239181239194123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecD1h4gif");
         this.§521423131842313197123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§function set override§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214234553234566123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214231399231412123423632234§ = new §5214231399231412123423632234§();
         _loc2_.§5214233594233607123423632234§ = this.§5214237785237798123423632234§.decode(param1) as Boolean;
         _loc2_.§var catch import§ = this.§521423116162311629123423632234§.decode(param1) as String;
         _loc2_.§52142317023183123423632234§ = this.§get var native§.decode(param1) as int;
         _loc2_.§5214233309233322123423632234§ = this.§5214238131238144123423632234§.decode(param1) as §include catch with§;
         _loc2_.§set var extends§ = this.§5214239181239194123423632234§.decode(param1) as Vector.<§521423125672312580123423632234§>;
         _loc2_.§5214238426238439123423632234§ = this.§521423131842313197123423632234§.decode(param1) as int;
         _loc2_.§521423125422312555123423632234§ = Long.fromInt(this.§function set override§.decode(param1) as int);
         _loc2_.§521423762389123423632234§ = this.§5214234553234566123423632234§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214231399231412123423632234§ = §5214231399231412123423632234§(param2);
         this.§5214237785237798123423632234§.encode(param1,_loc3_.§5214233594233607123423632234§);
         this.§521423116162311629123423632234§.encode(param1,_loc3_.§var catch import§);
         this.§get var native§.encode(param1,_loc3_.§52142317023183123423632234§);
         this.§5214238131238144123423632234§.encode(param1,_loc3_.§5214233309233322123423632234§);
         this.§5214239181239194123423632234§.encode(param1,_loc3_.§set var extends§);
         this.§521423131842313197123423632234§.encode(param1,_loc3_.§5214238426238439123423632234§);
         var _loc4_:Long;
         this.§function set override§.encode(param1,(_loc4_ = _loc3_.§521423125422312555123423632234§).b34eb168);
         this.§5214234553234566123423632234§.encode(param1,_loc3_.§521423762389123423632234§);
      }
   }
}

