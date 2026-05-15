package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §package finally switch§.§import var with§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco4292cg implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §import var with§;
      
      private var §521423111962311209123423632234§:§5214239886239899123423632234§;
      
      private var §extends extends§:§5214239886239899123423632234§;
      
      private var §switch else§:§5214239886239899123423632234§;
      
      private var §5214235371235384123423632234§:§5214239886239899123423632234§;
      
      public function Codeco4292cg(param1:§import catch else§)
      {
         super();
         this.§521423111962311209123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ShortCodec");
         this.§extends extends§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.ShortCodec");
         this.§switch else§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214235371235384123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§import var with§ = new §import var with§();
         _loc2_.deaths = this.§521423111962311209123423632234§.decode(param1) as int;
         _loc2_.kills = this.§extends extends§.decode(param1) as int;
         _loc2_.score = this.§switch else§.decode(param1) as int;
         _loc2_.§const const finally§ = this.§5214235371235384123423632234§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§import var with§ = §import var with§(param2);
         this.§521423111962311209123423632234§.encode(param1,_loc3_.deaths);
         this.§extends extends§.encode(param1,_loc3_.kills);
         this.§switch else§.encode(param1,_loc3_.score);
         this.§5214235371235384123423632234§.encode(param1,_loc3_.§const const finally§);
      }
   }
}

