package scpacker.networking.protocol.codec.custom
{
   import §521423134102313423123423632234§.§package set if§;
   import §const use implements§.§dynamic include§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco26933b implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §package set if§;
      
      private var §5214237448237461123423632234§:§5214239886239899123423632234§;
      
      private var §5214233154233167123423632234§:§5214239886239899123423632234§;
      
      private var §use use case§:§5214239886239899123423632234§;
      
      private var §do catch set§:§5214239886239899123423632234§;
      
      private var §implements var catch§:§5214239886239899123423632234§;
      
      private var §override var continue§:§5214239886239899123423632234§;
      
      private var §finally switch const§:§5214239886239899123423632234§;
      
      private var §switch class§:§5214239886239899123423632234§;
      
      private var §each for function§:§5214239886239899123423632234§;
      
      private var §super use§:§5214239886239899123423632234§;
      
      private var §5214237162237175123423632234§:§5214239886239899123423632234§;
      
      public function Codeco26933b(param1:§import catch else§)
      {
         super();
         this.§5214237448237461123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214233154233167123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§use use case§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§do catch set§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§implements var catch§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§override var continue§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecBattleMode");
         this.§finally switch const§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§switch class§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§each for function§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§super use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214237162237175123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§package set if§ = §package set if§(param2);
         this.§5214237448237461123423632234§.encode(param1,_loc3_.§default const false§);
         this.§5214233154233167123423632234§.encode(param1,_loc3_.§if for else§);
         this.§use use case§.encode(param1,_loc3_.§521423122262312239123423632234§);
         this.§implements var catch§.encode(param1,_loc3_.§return package for§);
         this.§override var continue§.encode(param1,_loc3_.§try catch else§);
         this.§finally switch const§.encode(param1,_loc3_.§continue switch try§);
         this.§switch class§.encode(param1,_loc3_.§52142386923882123423632234§);
         this.§each for function§.encode(param1,_loc3_.§var set include§);
         this.§super use§.encode(param1,_loc3_.§5214235402235415123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§package set if§ = new §package set if§();
         _loc2_.§default const false§ = this.§5214237448237461123423632234§.decode(param1) as Boolean;
         _loc2_.§if for else§ = this.§5214233154233167123423632234§.decode(param1) as Boolean;
         _loc2_.§521423122262312239123423632234§ = this.§use use case§.decode(param1) as String;
         _loc2_.§return package for§ = this.§implements var catch§.decode(param1) as String;
         _loc2_.§try catch else§ = this.§override var continue§.decode(param1) as §dynamic include§;
         _loc2_.§continue switch try§ = this.§finally switch const§.decode(param1) as Boolean;
         _loc2_.§52142386923882123423632234§ = this.§switch class§.decode(param1) as Boolean;
         _loc2_.§var set include§ = false;
         _loc2_.§5214235402235415123423632234§ = 1;
         return _loc2_;
      }
   }
}

