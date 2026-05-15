package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §for use final§.§true var get§;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecz10fad6 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §true var get§;
      
      private var §52142335123364123423632234§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codecz10fad6(param1:§import catch else§)
      {
         super();
         this.§52142335123364123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§true var get§ = §true var get§(param2);
         this.§52142335123364123423632234§.encode(param1,_loc3_.§5214234217234230123423632234§);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§true var get§ = new §true var get§();
         _loc2_.§5214234217234230123423632234§ = this.§52142335123364123423632234§.decode(param1) as int;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

