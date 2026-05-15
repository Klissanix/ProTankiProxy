package §dynamic switch in§
{
   import §521423125832312596123423632234§.ResourceImageFrameParams;
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import alternativa.osgi.OSGi;
   import §override catch default§.Long;
   import §override set extends§.ObjectsDependencies;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.type.impl.GameObject;
   import §return use throw§.ResourceImageParams;
   
   public class §521423129912313004123423632234§
   {
      
      private var §for continue§:ResourceRegistry;
      
      public function §521423129912313004123423632234§()
      {
         super();
         this.§for continue§ = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
      }
      
      private function §521423136662313679123423632234§(param1:Object) : §52142373423747123423632234§
      {
         var _loc6_:Object = null;
         var _loc2_:Long = Long.getLong(param1.idhigh,param1.idlow);
         var _loc7_:int = int(param1.type);
         var _loc4_:Long = Long.getLong(param1.versionhigh,param1.versionlow);
         var _loc3_:Boolean = Boolean(param1.lazy);
         var _loc5_:Vector.<String> = param1.fileNames == undefined ? null : Vector.<String>(param1.fileNames);
         if(_loc7_ == 10)
         {
            _loc6_ = new ResourceImageParams(param1.alpha);
         }
         else if(_loc7_ == 11)
         {
            _loc6_ = new ResourceImageFrameParams(param1.fps,param1.height,param1.weight,param1.numFrames);
         }
         return new §52142373423747123423632234§(_loc7_,_loc2_,_loc4_,_loc3_,_loc6_,_loc5_);
      }
      
      private function §false const extends§(param1:String) : Vector.<§include catch each§>
      {
         var _loc4_:§include catch each§ = null;
         var _loc6_:Boolean = false;
         var _loc3_:Object = JSON.parse(param1);
         var _loc5_:Vector.<§include catch each§> = new Vector.<§include catch each§>();
         for each(var _loc2_ in _loc3_)
         {
            var _loc7_:§include catch each§ = _loc4_ = this.§super set package§(this.§521423136662313679123423632234§(_loc2_));
            _loc6_ = !_loc7_.§5214239618239631123423632234§.§521423137152313728123423632234§ && _loc4_.§521423127412312754123423632234§ == null;
            if(_loc6_)
            {
               _loc5_[_loc5_.length] = _loc4_;
            }
         }
         return _loc5_;
      }
      
      public function §5214234948234961123423632234§(param1:String, param2:int) : ObjectsDependencies
      {
         var _temp_1:* = Model;
         var _loc4_:GameObject = new GameObject(Long.getLong(1,1),null,"ResourceObject",null);
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
         return new ObjectsDependencies(param2,this.§false const extends§(param1));
      }
      
      private function §super set package§(param1:§52142373423747123423632234§) : §include catch each§
      {
         var _loc3_:§include catch each§ = null;
         var _loc2_:Long = param1.id;
         if(this.§for continue§.isRegistered(_loc2_))
         {
            return this.§for continue§.getResource(_loc2_);
         }
         if(!this.§for continue§.isTypeClassRegistered(param1.type))
         {
            throw new Error("Unknown resource type");
         }
         var _loc4_:Class = this.§for continue§.getResourceClass(param1.type);
         if(param1.§super use with§ == null)
         {
            _loc3_ = §include catch each§(new _loc4_(param1));
         }
         else
         {
            _loc3_ = §include catch each§(new _loc4_(param1,param1.§super use with§));
         }
         this.§for continue§.registerResource(_loc3_);
         return _loc3_;
      }
   }
}

