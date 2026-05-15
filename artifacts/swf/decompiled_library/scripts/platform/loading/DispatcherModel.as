package platform.loading
{
   import §521423129502312963123423632234§.UnclassifyedError;
   import §521423129512312964123423632234§.§521423119282311941123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import §finally final§.ModelNotFoundError;
   import §finally final§.ObjectLoadListenerError;
   import §for use while§.DispatcherModelBase;
   import §for use while§.§catch for do§;
   import §override catch default§.Long;
   import §override set extends§.ObjectsData;
   import §override set extends§.ObjectsDependencies;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.model.§while for try§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import platform.client.fp10.core.type.impl.Space;
   import §use catch true§.ModelData;
   
   public class DispatcherModel extends DispatcherModelBase implements §catch for do§
   {
      
      public static var §5214234621234634123423632234§:LogService;
      
      private static var §get set with§:§dynamic use try§;
      
      private var §dynamic set get§:ModelRegistry;
      
      private var §while package native§:SpaceRegistry;
      
      public function DispatcherModel()
      {
         super();
         var _loc1_:OSGi = OSGi.getInstance();
         this.§dynamic set get§ = _loc1_.getService(ModelRegistry) as ModelRegistry;
         this.§while package native§ = _loc1_.getService(SpaceRegistry) as SpaceRegistry;
         §get set with§ ||= §5214234621234634123423632234§.getLogger("dispatcher");
      }
      
      private static function logError(param1:Error) : void
      {
         var _loc2_:String = param1.getStackTrace();
         §get set with§.error(_loc2_);
         f270b395(_loc2_);
      }
      
      private static function f270b395(param1:String) : void
      {
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new UnclassifyedError(param1));
      }
      
      private function c66b235b(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         for each(var _loc2_ in param1)
         {
            try
            {
               this.notifyObjectLoadListeners(_loc2_);
            }
            catch(e:Error)
            {
               logError(new ObjectLoadListenerError(§while package native§.currentSpace.id,_loc2_.id,e));
            }
         }
      }
      
      public function loadObjectsData(param1:ObjectsData) : void
      {
         this.a3864e47(param1);
         this.c66b235b(param1.objects);
      }
      
      public function onBatchLoadingComplete() : void
      {
         var _loc1_:ObjectsDependencies = ObjectsDependencies(clearData(ObjectsDependencies));
         server.dependenciesLoaded(_loc1_.§finally catch switch§);
         clearData(§521423119282311941123423632234§);
      }
      
      private function notifyObjectLoadListeners(param1:§521423120252312038123423632234§) : void
      {
         §get set with§.debug("Loaded objectId=" + param1.id);
         var _loc2_:§5214235049235062123423632234§ = §5214235049235062123423632234§(param1.event(§5214235049235062123423632234§));
         _loc2_.objectLoaded();
         §do set function§(param1.event(§do set function§)).objectLoaded();
         _loc2_.objectLoadedPost();
         §5214234168234181123423632234§(param1.event(§5214234168234181123423632234§)).objectLoadedPost();
         Space(this.§while package native§.currentSpace).modelsDataReady(param1);
      }
      
      public function loadDependencies(param1:ObjectsDependencies) : void
      {
         var _loc2_:§521423119282311941123423632234§ = null;
         if(param1.§finally catch switch§ > 0)
         {
            putData(ObjectsDependencies,param1);
         }
         if(param1.resources.length > 0)
         {
            _loc2_ = this.bd8309a();
            _loc2_.§5214236465236478123423632234§(param1.resources);
         }
         else if(param1.§finally catch switch§ > 0)
         {
            if(getData(§521423119282311941123423632234§) == null)
            {
               this.onBatchLoadingComplete();
            }
         }
      }
      
      public function unloadObjects(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc3_:§521423120252312038123423632234§ = null;
         §get set with§.debug("DispatcherModel::unloadObjects() objects: " + param1);
         var _loc4_:Model = Model;
         var _loc2_:§52142376523778123423632234§ = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.space;
         for each(_loc3_ in param1)
         {
            _loc2_.destroyObject(_loc3_.id);
         }
      }
      
      private function bd8309a() : §521423119282311941123423632234§
      {
         var _loc1_:§521423119282311941123423632234§ = §521423119282311941123423632234§(getData(§521423119282311941123423632234§));
         if(_loc1_ == null)
         {
            _loc1_ = new §521423119282311941123423632234§(getFunctionWrapper(this.onBatchLoadingComplete));
            putData(§521423119282311941123423632234§,_loc1_);
         }
         return _loc1_;
      }
      
      private function a3864e47(param1:ObjectsData) : void
      {
         var _loc3_:int = 0;
         var _loc9_:§521423120252312038123423632234§ = null;
         var _loc5_:int = 0;
         var _loc2_:ModelData = null;
         var _loc6_:§while for try§ = null;
         var _loc7_:Object = null;
         var _loc4_:Vector.<ModelData> = param1.§extends var const§;
         var _loc8_:§52142376523778123423632234§ = this.§while package native§.currentSpace;
         while(_loc3_ < _loc4_.length)
         {
            _loc9_ = _loc8_.getObject(Long(_loc4_[_loc3_].data));
            _loc5_ = ++_loc3_;
            while(_loc5_ < _loc4_.length && !(_loc4_[_loc5_].data is Long))
            {
               _loc5_++;
            }
            while(_loc3_ < _loc5_)
            {
               _loc2_ = _loc4_[_loc3_];
               _loc6_ = this.§dynamic set get§.getModel(_loc2_.id);
               if(_loc6_ == null)
               {
                  logError(new ModelNotFoundError(_loc8_.id,_loc9_.id,_loc2_.id));
               }
               else
               {
                  _loc7_ = _loc2_.data;
                  if(_loc7_ != null)
                  {
                     var _temp_8:* = Model;
                     var _loc11_:§521423120252312038123423632234§ = _loc9_;
                     var _loc10_:Model = _temp_8;
                     platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
                     platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc11_;
                     _loc6_.putInitParams(_loc7_);
                     Model.popObject();
                  }
               }
               _loc3_++;
            }
         }
      }
   }
}

