package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§include catch with§;
   import §5214238440238453123423632234§.§5214233137233150123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect6h8j37 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214233137233150123423632234§;
      
      private var §final switch include§:§5214239886239899123423632234§;
      
      private var §class package final§:§5214239886239899123423632234§;
      
      public function Codect6h8j37(param1:§import catch else§)
      {
         super();
         this.§final switch include§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§class package final§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214233137233150123423632234§ = new §5214233137233150123423632234§();
         _loc2_.§5214237362237375123423632234§ = this.§final switch include§.decode(param1) as int;
         _loc2_.§finally use implements§ = this.§class package final§.decode(param1) as §include catch with§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214233137233150123423632234§ = §5214233137233150123423632234§(param2);
         this.§final switch include§.encode(param1,_loc3_.§5214237362237375123423632234§);
         this.§class package final§.encode(param1,_loc3_.§finally use implements§);
      }
   }
}

