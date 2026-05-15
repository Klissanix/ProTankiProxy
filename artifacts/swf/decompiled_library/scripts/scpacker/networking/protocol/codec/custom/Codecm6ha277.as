package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §import false§.§continue const for§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecm6ha277 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §continue const for§;
      
      private var §final const get§:§5214239886239899123423632234§;
      
      private var §5214233698233711123423632234§:§5214239886239899123423632234§;
      
      private var §5214236702236715123423632234§:§5214239886239899123423632234§;
      
      private var §521423100842310097123423632234§:§5214239886239899123423632234§;
      
      private var §521423126122312625123423632234§:§5214239886239899123423632234§;
      
      public function Codecm6ha277(param1:§import catch else§)
      {
         super();
         this.§final const get§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214233698233711123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§5214236702236715123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§521423100842310097123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§521423126122312625123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§continue const for§ = §continue const for§(param2);
         this.§final const get§.encode(param1,_loc3_.§521423103942310407123423632234§);
         this.§5214233698233711123423632234§.encode(param1,_loc3_.§5214237915237928123423632234§);
         this.§5214236702236715123423632234§.encode(param1,_loc3_.§5214238813238826123423632234§);
         this.§521423100842310097123423632234§.encode(param1,_loc3_.§try use do§);
         this.§521423126122312625123423632234§.encode(param1,_loc3_.§521423105892310602123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§continue const for§ = new §continue const for§();
         _loc2_.§521423103942310407123423632234§ = this.§final const get§.decode(param1) as Boolean;
         _loc2_.§5214237915237928123423632234§ = this.§5214233698233711123423632234§.decode(param1) as Boolean;
         _loc2_.§5214238813238826123423632234§ = this.§5214236702236715123423632234§.decode(param1) as Number;
         _loc2_.§try use do§ = this.§521423100842310097123423632234§.decode(param1) as Boolean;
         _loc2_.§521423105892310602123423632234§ = this.§521423126122312625123423632234§.decode(param1) as Boolean;
         return _loc2_;
      }
   }
}

