package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §switch catch extends§.§5214234111234124123423632234§;
   import §switch catch extends§.§function catch catch§;
   import §with set static§.§import catch else§;
   
   public class Codecp72448i implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §function catch catch§;
      
      private var §521423113392311352123423632234§:§5214239886239899123423632234§;
      
      private var §while switch get§:§5214239886239899123423632234§;
      
      private var §else use if§:§5214239886239899123423632234§;
      
      public function Codecp72448i(param1:§import catch else§)
      {
         super();
         this.§521423113392311352123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.FloatCodec");
         this.§while switch get§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecDamageIndicatorType");
         this.§else use if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§function catch catch§ = new §function catch catch§();
         _loc2_.§each package in§ = this.§521423113392311352123423632234§.decode(param1) as Number;
         _loc2_.§5214237237237250123423632234§ = this.§while switch get§.decode(param1) as §5214234111234124123423632234§;
         _loc2_.§5214235960235973123423632234§ = this.§else use if§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§function catch catch§ = §function catch catch§(param2);
         this.§521423113392311352123423632234§.encode(param1,_loc3_.§each package in§);
         this.§while switch get§.encode(param1,_loc3_.§5214237237237250123423632234§);
         this.§else use if§.encode(param1,_loc3_.§5214235960235973123423632234§);
      }
   }
}

