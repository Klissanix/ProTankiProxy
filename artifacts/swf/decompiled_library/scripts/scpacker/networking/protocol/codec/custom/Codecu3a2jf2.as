package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §throw set continue§.§switch const continue§;
   import §with set static§.§import catch else§;
   
   public class Codecu3a2jf2 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §switch const continue§;
      
      private var §else switch with§:§5214239886239899123423632234§;
      
      private var §5214235727235740123423632234§:§5214239886239899123423632234§;
      
      public function Codecu3a2jf2(param1:§import catch else§)
      {
         super();
         this.§else switch with§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214235727235740123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§switch const continue§ = §switch const continue§(param2);
         this.§else switch with§.encode(param1,_loc3_.§do set switch§);
         this.§5214235727235740123423632234§.encode(param1,_loc3_.§5214239290239303123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§switch const continue§ = new §switch const continue§();
         _loc2_.§do set switch§ = this.§else switch with§.decode(param1) as int;
         _loc2_.§5214239290239303123423632234§ = this.§5214235727235740123423632234§.decode(param1) as int;
         return _loc2_;
      }
   }
}

