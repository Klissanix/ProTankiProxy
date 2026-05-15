package scpacker.networking.protocol.codec.custom
{
   import §521423120812312094123423632234§.§521423104352310448123423632234§;
   import §521423120812312094123423632234§.§5214232128232141123423632234§;
   import flash.utils.ByteArray;
   import §include set return§.§521423107382310751123423632234§;
   import §include set return§.§521423137722313785123423632234§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codectijc30 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214232128232141123423632234§;
      
      private var §switch use true§:§5214239886239899123423632234§;
      
      private var §if set get§:§5214239886239899123423632234§;
      
      private var §5214239356239369123423632234§:§5214239886239899123423632234§;
      
      private var §5214237973237986123423632234§:§5214239886239899123423632234§;
      
      private var §5214233352233365123423632234§:§5214239886239899123423632234§;
      
      private var §521423113362311349123423632234§:§5214239886239899123423632234§;
      
      public function Codectijc30(param1:§import catch else§)
      {
         super();
         this.§switch use true§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§if set get§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§5214239356239369123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§5214237973237986123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecD73dfdb");
         this.§5214233352233365123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecm5d39bf");
         this.§521423113362311349123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codect43e1bj");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214232128232141123423632234§ = §5214232128232141123423632234§(param2);
         this.§switch use true§.encode(param1,_loc3_.§5214237206237219123423632234§);
         this.§if set get§.encode(param1,_loc3_.§return catch in§);
         this.§5214239356239369123423632234§.encode(param1,_loc3_.§5214236347236360123423632234§);
         this.§5214237973237986123423632234§.encode(param1,_loc3_.§do catch const§);
         this.§5214233352233365123423632234§.encode(param1,_loc3_.§try switch native§);
         this.§521423113362311349123423632234§.encode(param1,_loc3_.§5214235405235418123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214232128232141123423632234§ = new §5214232128232141123423632234§();
         _loc2_.§5214237206237219123423632234§ = this.§switch use true§.decode(param1) as Number;
         _loc2_.§return catch in§ = this.§if set get§.decode(param1) as Number;
         _loc2_.§5214236347236360123423632234§ = this.§5214239356239369123423632234§.decode(param1) as Number;
         _loc2_.§do catch const§ = this.§5214237973237986123423632234§.decode(param1) as Vector.<§521423104352310448123423632234§>;
         _loc2_.§try switch native§ = this.§5214233352233365123423632234§.decode(param1) as §521423107382310751123423632234§;
         _loc2_.§5214235405235418123423632234§ = this.§521423113362311349123423632234§.decode(param1) as §521423137722313785123423632234§;
         return _loc2_;
      }
   }
}

