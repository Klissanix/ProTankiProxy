package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§include catch with§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §while switch true§.§5214239798239811123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect2f9cgh implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214239798239811123423632234§;
      
      private var §extends catch use§:§5214239886239899123423632234§;
      
      private var §var for§:§5214239886239899123423632234§;
      
      private var §5214238713238726123423632234§:§5214239886239899123423632234§;
      
      private var §5214239220239233123423632234§:§5214239886239899123423632234§;
      
      private var §5214238706238719123423632234§:§5214239886239899123423632234§;
      
      public function Codect2f9cgh(param1:§import catch else§)
      {
         super();
         this.§extends catch use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§var for§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214238713238726123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214239220239233123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§5214238706238719123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214239798239811123423632234§ = new §5214239798239811123423632234§();
         _loc2_.§else null§ = this.§extends catch use§.decode(param1) as int;
         _loc2_.§5214237298237311123423632234§ = this.§var for§.decode(param1) as int;
         _loc2_.§get var var§ = this.§5214238713238726123423632234§.decode(param1) as Boolean;
         _loc2_.§if finally use§ = this.§5214239220239233123423632234§.decode(param1) as §include catch with§;
         _loc2_.§521423522365123423632234§ = this.§5214238706238719123423632234§.decode(param1) as §include catch with§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214239798239811123423632234§ = §5214239798239811123423632234§(param2);
         this.§extends catch use§.encode(param1,_loc3_.§else null§);
         this.§var for§.encode(param1,_loc3_.§5214237298237311123423632234§);
         this.§5214238713238726123423632234§.encode(param1,_loc3_.§get var var§);
         this.§5214239220239233123423632234§.encode(param1,_loc3_.§if finally use§);
         this.§5214238706238719123423632234§.encode(param1,_loc3_.§521423522365123423632234§);
      }
   }
}

