package scpacker.networking.protocol.codec.custom
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §static set§.§521423113842311397123423632234§;
   import §try catch var§.§5214234821234834123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecp1fai9a implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214234821234834123423632234§;
      
      private var §5214232822232835123423632234§:§5214239886239899123423632234§;
      
      private var §each break§:§5214239886239899123423632234§;
      
      private var §import var catch§:§5214239886239899123423632234§;
      
      public function Codecp1fai9a(param1:§import catch else§)
      {
         super();
         this.§5214232822232835123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§each break§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codecc5d6ej3");
         this.§import var catch§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecBonusType");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214234821234834123423632234§ = new §5214234821234834123423632234§();
         _loc2_.§dynamic final§ = this.§5214232822232835123423632234§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§else use extends§ = this.§each break§.decode(param1) as §52142320823221123423632234§;
         _loc2_.§native finally§ = this.§import var catch§.decode(param1) as §521423113842311397123423632234§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214234821234834123423632234§ = §5214234821234834123423632234§(param2);
         this.§5214232822232835123423632234§.encode(param1,_loc3_.§dynamic final§);
         this.§each break§.encode(param1,_loc3_.§else use extends§);
         this.§import var catch§.encode(param1,_loc3_.§native finally§);
      }
   }
}

