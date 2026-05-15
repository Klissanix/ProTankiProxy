package scpacker.networking.protocol.codec.custom
{
   import §5214234324234337123423632234§.§override true§;
   import §5214238410238423123423632234§.§5214235022235035123423632234§;
   import §5214238410238423123423632234§.§super var while§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecu730ag3 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §super var while§;
      
      private var §5214238908238921123423632234§:§5214239886239899123423632234§;
      
      private var §with for switch§:§5214239886239899123423632234§;
      
      private var §5214234333234346123423632234§:§5214239886239899123423632234§;
      
      public function Codecu730ag3(param1:§import catch else§)
      {
         super();
         this.§5214238908238921123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§with for switch§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodect6jee42");
         this.§5214234333234346123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecp33fc72");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:§super var while§ = §super var while§(param2);
         this.§5214238908238921123423632234§.encode(param1,_loc3_.§5214236419236432123423632234§);
         this.§with for switch§.encode(param1,_loc3_.§implements catch break§);
         this.§5214234333234346123423632234§.encode(param1,_loc3_.§do catch extends§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§super var while§ = new §super var while§();
         _loc2_.§5214236419236432123423632234§ = this.§5214238908238921123423632234§.decode(param1) as int;
         _loc2_.§implements catch break§ = this.§with for switch§.decode(param1) as Vector.<§5214235022235035123423632234§>;
         _loc2_.§do catch extends§ = this.§5214234333234346123423632234§.decode(param1) as Vector.<§override true§>;
         return _loc2_;
      }
   }
}

