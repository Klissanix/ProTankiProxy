package scpacker.networking.protocol.codec.custom
{
   import §5214237225237238123423632234§.§set const false§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codece70i2d5 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §set const false§;
      
      private var §5214237709237722123423632234§:§5214239886239899123423632234§;
      
      private var §switch const do§:§5214239886239899123423632234§;
      
      private var §throw catch native§:§5214239886239899123423632234§;
      
      public function Codece70i2d5(param1:§import catch else§)
      {
         super();
         this.§5214237709237722123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§switch const do§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§throw catch native§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:§set const false§ = §set const false§(param2);
         this.§5214237709237722123423632234§.encode(param1,_loc3_.§get package else§);
         this.§switch const do§.encode(param1,_loc3_.§native use var§);
         this.§throw catch native§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§set const false§ = new §set const false§();
         _loc2_.§get package else§ = this.§5214237709237722123423632234§.decode(param1) as Boolean;
         _loc2_.§native use var§ = this.§switch const do§.decode(param1) as String;
         _loc2_.§each use get§ = this.§throw catch native§.decode(param1) as String;
         return _loc2_;
      }
   }
}

