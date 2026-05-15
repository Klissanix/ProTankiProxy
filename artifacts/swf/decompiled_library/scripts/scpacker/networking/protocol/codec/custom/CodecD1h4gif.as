package scpacker.networking.protocol.codec.custom
{
   import §521423137372313750123423632234§.§521423125672312580123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class CodecD1h4gif implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423125672312580123423632234§;
      
      private var §final switch include§:§5214239886239899123423632234§;
      
      private var §get catch if§:§5214239886239899123423632234§;
      
      public function CodecD1h4gif(param1:§import catch else§)
      {
         super();
         this.§final switch include§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§get catch if§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423125672312580123423632234§ = §521423125672312580123423632234§(param2);
         this.§final switch include§.encode(param1,_loc3_.§5214237362237375123423632234§);
         this.§get catch if§.encode(param1,_loc3_.§extends set case§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423125672312580123423632234§ = new §521423125672312580123423632234§();
         _loc2_.§5214237362237375123423632234§ = this.§final switch include§.decode(param1) as int;
         _loc2_.§extends set case§ = this.§get catch if§.decode(param1) as String;
         return _loc2_;
      }
   }
}

