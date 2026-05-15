package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §break const dynamic§.§package for class§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech5i2j4a implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §package for class§;
      
      private var §5214238649238662123423632234§:§5214239886239899123423632234§;
      
      private var §5214232763232776123423632234§:§5214239886239899123423632234§;
      
      private var §override var true§:§5214239886239899123423632234§;
      
      private var §5214233882233895123423632234§:§5214239886239899123423632234§;
      
      public function Codech5i2j4a(param1:§import catch else§)
      {
         super();
         this.§5214238649238662123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§5214232763232776123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§override var true§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§5214233882233895123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§package for class§ = new §package for class§();
         _loc2_.§throw use else§ = this.§5214238649238662123423632234§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§each for switch§ = this.§5214232763232776123423632234§.decode(param1) as String;
         _loc2_.final = this.§override var true§.decode(param1) as §52142320823221123423632234§;
         _loc2_.id = this.§5214233882233895123423632234§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§package for class§ = §package for class§(param2);
         this.§5214238649238662123423632234§.encode(param1,_loc3_.§throw use else§);
         this.§5214232763232776123423632234§.encode(param1,_loc3_.§each for switch§);
         this.§override var true§.encode(param1,_loc3_.final);
         this.§5214233882233895123423632234§.encode(param1,_loc3_.id);
      }
   }
}

