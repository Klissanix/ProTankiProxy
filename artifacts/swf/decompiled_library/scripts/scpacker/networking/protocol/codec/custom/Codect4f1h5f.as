package scpacker.networking.protocol.codec.custom
{
   import §5214236853236866123423632234§.§super catch override§;
   import §class catch dynamic§.§with switch if§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect4f1h5f implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §with switch if§;
      
      private var §static with§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codect4f1h5f(param1:§import catch else§)
      {
         super();
         this.§static with§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.Codect63ja32");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§with switch if§ = §with switch if§(param2);
         this.§static with§.encode(param1,_loc3_.§5214234521234534123423632234§);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§with switch if§ = new §with switch if§();
         _loc2_.§5214234521234534123423632234§ = this.§static with§.decode(param1) as §super catch override§;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

