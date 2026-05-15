package scpacker.networking.protocol.codec.custom
{
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §static for super§.§521423130772313090123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codech52j8h4 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §521423130772313090123423632234§;
      
      private var §5214237941237954123423632234§:§5214239886239899123423632234§;
      
      public function Codech52j8h4(param1:§import catch else§)
      {
         super();
         this.§5214237941237954123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.complex.VectorCodecString");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§521423130772313090123423632234§ = new §521423130772313090123423632234§();
         _loc2_.§else use while§ = this.§5214237941237954123423632234§.decode(param1) as Vector.<String>;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§521423130772313090123423632234§ = §521423130772313090123423632234§(param2);
         this.§5214237941237954123423632234§.encode(param1,_loc3_.§else use while§);
      }
   }
}

