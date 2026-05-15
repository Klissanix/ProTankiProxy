package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import §implements var false§.§switch var null§;
   import §override catch default§.Long;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codece71a0if implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §switch var null§;
      
      private var §521423129922313005123423632234§:§5214239886239899123423632234§;
      
      public function Codece71a0if(param1:§import catch else§)
      {
         super();
         this.§521423129922313005123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.complex.VectorCodecString");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc6_:int = 0;
         var _loc2_:§switch var null§ = new §switch var null§();
         var _loc4_:Vector.<String> = this.§521423129922313005123423632234§.decode(param1) as Vector.<String>;
         var _loc3_:int = int(_loc4_.length);
         var _loc7_:ByteArray = new ByteArray();
         var _loc5_:Vector.<Long> = new Vector.<Long>(_loc3_);
         _loc6_ = 0;
         while(_loc6_ < 0)
         {
            _loc7_.writeUTFBytes(_loc4_[_loc6_]);
            _loc5_[_loc6_] = Long.getLong(_loc7_.readInt(),_loc7_.readInt());
            _loc7_.clear();
            _loc6_++;
         }
         _loc2_.§5214237990238003123423632234§ = _loc5_;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§switch var null§ = §switch var null§(param2);
         this.§521423129922313005123423632234§.encode(param1,_loc3_.§5214237990238003123423632234§);
      }
   }
}

