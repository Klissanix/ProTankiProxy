package scpacker.networking.protocol.codec.custom
{
   import §521423129512312964123423632234§.§include catch each§;
   import flash.utils.ByteArray;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import scpacker.networking.protocol.codec.§5214239886239899123423632234§;
   import §with set static§.§import catch else§;
   
   public class ResourceGetterCodec implements §5214239886239899123423632234§
   {
      
      private var §for continue§:ResourceRegistry;
      
      private var §in try§:§5214239886239899123423632234§;
      
      public function ResourceGetterCodec(param1:§import catch else§, param2:ResourceRegistry)
      {
         super();
         this.§for continue§ = param2;
         this.§in try§ = param1.§with const if§("scpacker.networking.protocol.codec.primitive.LongCodec");
      }
      
      public function encode(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:§include catch each§ = §include catch each§(param2);
         var _loc4_:§include catch each§;
         this.§in try§.encode(param1,(_loc4_ = _loc3_).§5214239618239631123423632234§.id);
      }
      
      public function decode(param1:ByteArray) : Object
      {
         var _loc3_:Long = Long(this.§in try§.decode(param1));
         var _loc2_:§include catch each§ = this.§for continue§.getResource(_loc3_);
         if(_loc2_ == null)
         {
            throw new Error("Resource " + _loc3_ + " not found");
         }
         return _loc2_;
      }
   }
}

