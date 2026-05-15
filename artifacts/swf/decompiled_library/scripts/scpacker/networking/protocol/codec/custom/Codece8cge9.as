package scpacker.networking.protocol.codec.custom
{
   import §class catch implements§.§5214235519235532123423632234§;
   import §class catch implements§.§return finally catch§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codece8cge9 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214235519235532123423632234§;
      
      private var §521423129722312985123423632234§:§5214239886239899123423632234§;
      
      private var §521423100422310055123423632234§:§5214239886239899123423632234§;
      
      public function Codece8cge9(param1:§import catch else§)
      {
         super();
         this.§521423129722312985123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.BooleanCodec");
         this.§521423100422310055123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecu65322h");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214235519235532123423632234§ = new §5214235519235532123423632234§();
         _loc2_.§dynamic catch class§ = this.§521423129722312985123423632234§.decode(param1) as Boolean;
         _loc2_.§521423107962310809123423632234§ = this.§521423100422310055123423632234§.decode(param1) as Vector.<§return finally catch§>;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214235519235532123423632234§ = §5214235519235532123423632234§(param2);
         this.§521423129722312985123423632234§.encode(param1,_loc3_.§dynamic catch class§);
         this.§521423100422310055123423632234§.encode(param1,_loc3_.§521423107962310809123423632234§);
      }
   }
}

