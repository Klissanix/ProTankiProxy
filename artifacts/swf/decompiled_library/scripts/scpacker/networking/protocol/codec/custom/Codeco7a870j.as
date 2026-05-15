package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§include catch with§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §static set§.§521423113842311397123423632234§;
   import §try catch var§.§5214233413233426123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco7a870j implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214233413233426123423632234§;
      
      private var §521423139812313994123423632234§:§5214239886239899123423632234§;
      
      private var §import var catch§:§5214239886239899123423632234§;
      
      public function Codeco7a870j(param1:§import catch else§)
      {
         super();
         this.§521423139812313994123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§import var catch§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.CodecBonusType");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214233413233426123423632234§ = §5214233413233426123423632234§(param2);
         this.§521423139812313994123423632234§.encode(param1,_loc3_.§5214239206239219123423632234§);
         this.§import var catch§.encode(param1,_loc3_.§native finally§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214233413233426123423632234§ = new §5214233413233426123423632234§();
         _loc2_.§5214239206239219123423632234§ = this.§521423139812313994123423632234§.decode(param1) as §include catch with§;
         _loc2_.§native finally§ = this.§import var catch§.decode(param1) as §521423113842311397123423632234§;
         return _loc2_;
      }
   }
}

