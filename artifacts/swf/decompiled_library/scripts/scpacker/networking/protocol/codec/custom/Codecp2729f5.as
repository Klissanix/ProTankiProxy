package scpacker.networking.protocol.codec.custom
{
   import §5214235095235108123423632234§.ImagePair;
   import §5214235095235108123423632234§.LocalizedFileFormat;
   import §5214235095235108123423632234§.StringPair;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codecp2729f5 implements §5214239886239899123423632234§
   {
      
      private var §5214238083238096123423632234§:§5214239886239899123423632234§;
      
      private var §continue set static§:§5214239886239899123423632234§;
      
      public function Codecp2729f5(param1:§import catch else§)
      {
         super();
         this.§5214238083238096123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecz511d68");
         this.§continue set static§ = param1.§with const if§("scpacker.networking.protocol.codec.custom.VectorCodecp3hb0i0");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:LocalizedFileFormat = LocalizedFileFormat(param2);
         this.§5214238083238096123423632234§.encode(param1,_loc3_.images);
         this.§continue set static§.encode(param1,_loc3_.§5214239495239508123423632234§);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:LocalizedFileFormat = new LocalizedFileFormat();
         _loc2_.images = this.§5214238083238096123423632234§.decode(param1) as Vector.<ImagePair>;
         _loc2_.§5214239495239508123423632234§ = this.§continue set static§.decode(param1) as Vector.<StringPair>;
         return _loc2_;
      }
   }
}

