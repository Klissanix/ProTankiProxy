package scpacker.networking.protocol.codec.custom
{
   import §const use implements§.§var use native§;
   import flash.utils.ByteArray;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class Codeco661999 implements §5214239886239899123423632234§
   {
      
      public const optionalVector:Boolean = false;
      
      public const element:Class = §var use native§;
      
      private var §5214232426232439123423632234§:§5214239886239899123423632234§;
      
      private var §dynamic set true§:§5214239886239899123423632234§;
      
      public function Codeco661999(param1:§import catch else§)
      {
         super();
         this.§5214232426232439123423632234§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
         this.§dynamic set true§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.IntCodec");
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc2_:§var use native§ = new §var use native§();
         _loc2_.§5214232042232055123423632234§ = this.§5214232426232439123423632234§.decode(param1) as int;
         _loc2_.§5214239002239015123423632234§ = this.§dynamic set true§.decode(param1) as int;
         return _loc2_;
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§var use native§ = §var use native§(param2);
         this.§5214232426232439123423632234§.encode(param1,_loc3_.§5214232042232055123423632234§);
         this.§dynamic set true§.encode(param1,_loc3_.§5214239002239015123423632234§);
      }
   }
}

