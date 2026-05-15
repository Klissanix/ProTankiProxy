package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §break const dynamic§.§switch for if§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecu36j031 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §switch for if§;
      
      private var §5214233882233895123423632234§:§5214239886239899123423632234§;
      
      private var §continue class§:§5214239886239899123423632234§;
      
      public function Codecu36j031(param1:§import catch else§)
      {
         super();
         this.§5214233882233895123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§continue class§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§switch for if§ = §switch for if§(param2);
         this.§5214233882233895123423632234§.encode(param1,_loc3_.id);
         this.§continue class§.encode(param1,_loc3_.§dynamic final§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§switch for if§ = new §switch for if§();
         _loc2_.id = this.§5214233882233895123423632234§.decode(param1) as int;
         _loc2_.§dynamic final§ = this.§continue class§.decode(param1) as §52142320823221123423632234§;
         return _loc2_;
      }
   }
}

