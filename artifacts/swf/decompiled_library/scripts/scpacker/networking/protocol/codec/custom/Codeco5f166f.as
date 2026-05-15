package scpacker.networking.protocol.codec.custom
{
   import §5214238087238100123423632234§.§while package static§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco5f166f implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §while package static§;
      
      private var §5214233461233474123423632234§:§5214239886239899123423632234§;
      
      private var §finally use continue§:§5214239886239899123423632234§;
      
      public function Codeco5f166f(param1:§import catch else§)
      {
         super();
         this.§5214233461233474123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§finally use continue§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§while package static§ = §while package static§(param2);
         this.§5214233461233474123423632234§.encode(param1,_loc3_.§get for function§);
         this.§finally use continue§.encode(param1,_loc3_.§throw var each§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§while package static§ = new §while package static§();
         _loc2_.§get for function§ = this.§5214233461233474123423632234§.decode(param1) as String;
         _loc2_.§throw var each§ = this.§finally use continue§.decode(param1) as String;
         return _loc2_;
      }
   }
}

