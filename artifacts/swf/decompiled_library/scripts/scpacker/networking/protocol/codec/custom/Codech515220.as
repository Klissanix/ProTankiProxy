package scpacker.networking.protocol.codec.custom
{
   import §521423133332313346123423632234§.§5214238163238176123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech515220 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214238163238176123423632234§;
      
      private var §for set finally§:§5214239886239899123423632234§;
      
      private var §super use§:§5214239886239899123423632234§;
      
      private var §5214234537234550123423632234§:§5214239886239899123423632234§;
      
      public function Codech515220(param1:§import catch else§)
      {
         super();
         this.§for set finally§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§super use§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214234537234550123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214238163238176123423632234§ = §5214238163238176123423632234§(param2);
         this.§for set finally§.encode(param1,_loc3_.§import for final§);
         this.§super use§.encode(param1,_loc3_.§5214235402235415123423632234§);
         this.§5214234537234550123423632234§.encode(param1,_loc3_.§each use get§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214238163238176123423632234§ = new §5214238163238176123423632234§();
         _loc2_.§import for final§ = this.§for set finally§.decode(param1) as Boolean;
         _loc2_.§5214235402235415123423632234§ = this.§super use§.decode(param1) as int;
         _loc2_.§each use get§ = this.§5214234537234550123423632234§.decode(param1) as String;
         return _loc2_;
      }
   }
}

