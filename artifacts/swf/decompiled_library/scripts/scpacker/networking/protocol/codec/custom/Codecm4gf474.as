package scpacker.networking.protocol.codec.custom
{
   import §5214233087233100123423632234§.§super var switch§;
   import §5214238511238524123423632234§.TipItemCC;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecm4gf474 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = TipItemCC;
      
      private var §5214239563239576123423632234§:§5214239886239899123423632234§;
      
      public function Codecm4gf474(param1:§import catch else§)
      {
         super();
         this.§5214239563239576123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.ResourceGetterCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:TipItemCC = TipItemCC(param2);
         this.§5214239563239576123423632234§.encode(param1,_loc3_.preview);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:TipItemCC = new TipItemCC();
         _loc2_.preview = this.§5214239563239576123423632234§.decode(param1) as §super var switch§;
         return _loc2_;
      }
   }
}

