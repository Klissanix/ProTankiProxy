package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import flash.utils.ByteArray;
   import §import catch implements§.§5214236921236934123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect741312 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214236921236934123423632234§;
      
      private var §import catch const§:§5214239886239899123423632234§;
      
      private var §return for static§:§5214239886239899123423632234§;
      
      private var §521423106112310624123423632234§:§5214239886239899123423632234§;
      
      private var §false const true§:§5214239886239899123423632234§;
      
      public function Codect741312(param1:§import catch else§)
      {
         super();
         this.§import catch const§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§return for static§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§521423106112310624123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§false const true§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214236921236934123423632234§ = §5214236921236934123423632234§(param2);
         this.§import catch const§.encode(param1,_loc3_.§5214234940234953123423632234§);
         this.§return for static§.encode(param1,_loc3_.§521423101402310153123423632234§);
         this.§521423106112310624123423632234§.encode(param1,_loc3_.§var set default§);
         this.§false const true§.encode(param1,_loc3_.§catch package try§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214236921236934123423632234§ = new §5214236921236934123423632234§();
         _loc2_.§521423101402310153123423632234§ = this.§return for static§.decode(param1) as String;
         _loc2_.§var set default§ = this.§521423106112310624123423632234§.decode(param1) as int;
         _loc2_.§catch package try§ = this.§false const true§.decode(param1) as §52142320823221123423632234§;
         return _loc2_;
      }
   }
}

