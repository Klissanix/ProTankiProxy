package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214238410238423123423632234§.§5214235022235035123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect6jee42 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214235022235035123423632234§;
      
      private var §5214236240236253123423632234§:§5214239886239899123423632234§;
      
      private var §in catch§:§5214239886239899123423632234§;
      
      private var §5214232822232835123423632234§:§5214239886239899123423632234§;
      
      public function Codect6jee42(param1:§import catch else§)
      {
         super();
         this.§5214236240236253123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§in catch§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§5214232822232835123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214235022235035123423632234§ = §5214235022235035123423632234§(param2);
         this.§5214236240236253123423632234§.encode(param1,_loc3_.§5214238716238729123423632234§);
         this.§in catch§.encode(param1,_loc3_.§5214239673239686123423632234§);
         this.§5214232822232835123423632234§.encode(param1,_loc3_.§dynamic final§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214235022235035123423632234§ = new §5214235022235035123423632234§();
         _loc2_.§5214238716238729123423632234§ = this.§5214236240236253123423632234§.decode(param1) as int;
         _loc2_.§5214239673239686123423632234§ = this.§in catch§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§dynamic final§ = this.§5214232822232835123423632234§.decode(param1) as §52142320823221123423632234§;
         return _loc2_;
      }
   }
}

