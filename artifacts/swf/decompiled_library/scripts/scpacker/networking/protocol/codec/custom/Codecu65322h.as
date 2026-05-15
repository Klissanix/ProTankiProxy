package scpacker.networking.protocol.codec.custom
{
   import §class catch implements§.§return finally catch§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecu65322h implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §return finally catch§;
      
      private var §5214232500232513123423632234§:§5214239886239899123423632234§;
      
      private var §5214233204233217123423632234§:§5214239886239899123423632234§;
      
      private var §52142396423977123423632234§:§5214239886239899123423632234§;
      
      public function Codecu65322h(param1:§import catch else§)
      {
         super();
         this.§5214232500232513123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214233204233217123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§52142396423977123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§return finally catch§ = new §return finally catch§();
         _loc2_.§5214234337234350123423632234§ = this.§5214232500232513123423632234§.decode(param1) as String;
         _loc2_.§5214235857235870123423632234§ = this.§5214233204233217123423632234§.decode(param1) as Boolean;
         _loc2_.§5214235996236009123423632234§ = this.§52142396423977123423632234§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§return finally catch§ = §return finally catch§(param2);
         this.§5214232500232513123423632234§.encode(param1,_loc3_.§5214234337234350123423632234§);
         this.§5214233204233217123423632234§.encode(param1,_loc3_.§5214235857235870123423632234§);
         this.§52142396423977123423632234§.encode(param1,_loc3_.§5214235996236009123423632234§);
      }
   }
}

