package scpacker.networking.protocol.codec.custom
{
   import §5214237881237894123423632234§.§5214234101234114123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco56055h implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214234101234114123423632234§;
      
      private var §52142319123204123423632234§:§5214234101234114123423632234§ = new §5214234101234114123423632234§();
      
      public function Codeco56055h(param1:§import catch else§)
      {
         super();
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214234101234114123423632234§ = §5214234101234114123423632234§(param2);
         param1.writeFloat(_loc3_.§521423108322310845123423632234§);
         param1.writeByte(_loc3_.§521423105032310516123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214234101234114123423632234§ = this.§52142319123204123423632234§;
         _loc2_.§521423108322310845123423632234§ = param1.readFloat();
         _loc2_.§521423105032310516123423632234§ = param1.readByte();
         return _loc2_;
      }
   }
}

