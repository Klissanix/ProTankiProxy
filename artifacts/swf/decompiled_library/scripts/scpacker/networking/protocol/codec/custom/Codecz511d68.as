package scpacker.networking.protocol.codec.custom
{
   import §5214235095235108123423632234§.ImagePair;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecz511d68 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = ImagePair;
      
      private var §52142324723260123423632234§:§5214239886239899123423632234§;
      
      private var §5214236784236797123423632234§:§5214239886239899123423632234§;
      
      public function Codecz511d68(param1:§import catch else§)
      {
         super();
         this.§52142324723260123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.StringCodec");
         this.§5214236784236797123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.complex.ByteArrayCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:ImagePair = new ImagePair();
         _loc2_.key = this.§52142324723260123423632234§.decode(param1) as String;
         _loc2_.value = this.§5214236784236797123423632234§.decode(param1) as ByteArray;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:ImagePair = ImagePair(param2);
         this.§52142324723260123423632234§.encode(param1,_loc3_.key);
         this.§5214236784236797123423632234§.encode(param1,_loc3_.value);
      }
   }
}

