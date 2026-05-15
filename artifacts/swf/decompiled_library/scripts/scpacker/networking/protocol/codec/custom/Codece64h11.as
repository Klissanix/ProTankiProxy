package scpacker.networking.protocol.codec.custom
{
   import §default switch finally§.§const var continue§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codece64h11 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §const var continue§;
      
      private var §5214233463233476123423632234§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codece64h11(param1:§import catch else§)
      {
         super();
         this.§5214233463233476123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§const var continue§ = §const var continue§(param2);
         this.§5214233463233476123423632234§.encode(param1,_loc3_.uid);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§const var continue§ = new §const var continue§();
         _loc2_.uid = this.§5214233463233476123423632234§.decode(param1) as String;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

