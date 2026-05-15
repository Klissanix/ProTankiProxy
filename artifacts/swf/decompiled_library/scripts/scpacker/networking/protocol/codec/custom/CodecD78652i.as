package scpacker.networking.protocol.codec.custom
{
   import §521423134102313423123423632234§.§521423128502312863123423632234§;
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class CodecD78652i implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423128502312863123423632234§;
      
      private var §final set include§:§5214239886239899123423632234§;
      
      public function CodecD78652i(param1:§import catch else§)
      {
         super();
         this.§final set include§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423128502312863123423632234§ = §521423128502312863123423632234§(param2);
         this.§final set include§.encode(param1,_loc3_.§else use return§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423128502312863123423632234§ = new §521423128502312863123423632234§();
         _loc2_.§else use return§ = this.§final set include§.decode(param1) as §5214237988238001123423632234§;
         return _loc2_;
      }
   }
}

