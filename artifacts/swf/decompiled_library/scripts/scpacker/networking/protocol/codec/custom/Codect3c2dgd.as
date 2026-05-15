package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import §break const dynamic§.§5214238536238549123423632234§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codect3c2dgd implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §5214238536238549123423632234§;
      
      private var §521423117312311744123423632234§:§5214239886239899123423632234§;
      
      private var §use package native§:§5214239886239899123423632234§;
      
      private var §5214238559238572123423632234§:§5214239886239899123423632234§;
      
      private var §package use continue§:§5214239886239899123423632234§;
      
      public function Codect3c2dgd(param1:§import catch else§)
      {
         super();
         this.§521423117312311744123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§use package native§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§5214238559238572123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
         this.§package use continue§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§5214238536238549123423632234§ = new §5214238536238549123423632234§();
         _loc2_.§5214231777231790123423632234§ = this.§521423117312311744123423632234§.decode(param1) as §5214237988238001123423632234§;
         _loc2_.§set throw§ = this.§use package native§.decode(param1) as §5214237988238001123423632234§;
         _loc2_.§5214231320231333123423632234§ = this.§5214238559238572123423632234§.decode(param1) as §5214237988238001123423632234§;
         _loc2_.§5214234542234555123423632234§ = this.§package use continue§.decode(param1) as §5214237988238001123423632234§;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214238536238549123423632234§ = §5214238536238549123423632234§(param2);
         this.§521423117312311744123423632234§.encode(param1,_loc3_.§5214231777231790123423632234§);
         this.§use package native§.encode(param1,_loc3_.§set throw§);
         this.§5214238559238572123423632234§.encode(param1,_loc3_.§5214231320231333123423632234§);
         this.§package use continue§.encode(param1,_loc3_.§5214234542234555123423632234§);
      }
   }
}

