package scpacker.networking.protocol.codec.custom
{
   import §5214238087238100123423632234§.§return for use§;
   import §5214238087238100123423632234§.§while package static§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecz378d3e implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §return for use§;
      
      private var §5214233322233335123423632234§:§5214239886239899123423632234§;
      
      private var §5214238904238917123423632234§:§5214239886239899123423632234§;
      
      private var §521423119022311915123423632234§:§5214239886239899123423632234§;
      
      public function Codecz378d3e(param1:§import catch else§)
      {
         super();
         this.§5214233322233335123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodeco5f166f");
         this.§5214238904238917123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§521423119022311915123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§return for use§ = new §return for use§();
         _loc2_.§521423136782313691123423632234§ = this.§5214233322233335123423632234§.decode(param1) as Vector.<§while package static§>;
         _loc2_.§try for null§ = this.§5214238904238917123423632234§.decode(param1) as String;
         _loc2_.§break const final§ = this.§521423119022311915123423632234§.decode(param1) as Boolean;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§return for use§ = §return for use§(param2);
         this.§5214233322233335123423632234§.encode(param1,_loc3_.§521423136782313691123423632234§);
         this.§5214238904238917123423632234§.encode(param1,_loc3_.§try for null§);
         this.§521423119022311915123423632234§.encode(param1,_loc3_.§break const final§);
      }
   }
}

