package scpacker.networking.protocol.codec.custom
{
   import §521423122772312290123423632234§.§get package if§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class CodecDe20i2 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §get package if§;
      
      private var §521423140152314028123423632234§:§5214239886239899123423632234§;
      
      private var §5214235371235384123423632234§:§5214239886239899123423632234§;
      
      public function CodecDe20i2(param1:§import catch else§)
      {
         super();
         this.§521423140152314028123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§5214235371235384123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§get package if§ = new §get package if§();
         _loc2_.§extends import§ = this.§521423140152314028123423632234§.decode(param1) as int;
         _loc2_.§const const finally§ = this.§5214235371235384123423632234§.decode(param1) as String;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§get package if§ = §get package if§(param2);
         this.§521423140152314028123423632234§.encode(param1,_loc3_.§extends import§);
         this.§5214235371235384123423632234§.encode(param1,_loc3_.§const const finally§);
      }
   }
}

