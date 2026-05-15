package platform.client.fp10.core.model.impl
{
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§while for try§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§52142376223775123423632234§;
   
   public class Model implements §while for try§
   {
      
      private static var §5214232533232546123423632234§:§521423120252312038123423632234§;
      
      public static var modelRegistry:ModelRegistry;
      
      private static var objects:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
      
      protected var initParams:Dictionary = new Dictionary();
      
      public function Model()
      {
         super();
      }
      
      public static function popObject() : void
      {
         §5214232533232546123423632234§ = objects.pop();
      }
      
      public static function get object() : §521423120252312038123423632234§
      {
         return §5214232533232546123423632234§;
      }
      
      public static function set object(param1:§521423120252312038123423632234§) : void
      {
         objects[objects.length] = §5214232533232546123423632234§;
         §5214232533232546123423632234§ = param1;
      }
      
      public function clearInitParams() : void
      {
         delete this.initParams[platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§];
      }
      
      public function get id() : Long
      {
         return null;
      }
      
      public function clearData(param1:Class) : Object
      {
         return §52142376223775123423632234§(§5214232533232546123423632234§).clearData(this,param1);
      }
      
      public function putData(param1:Class, param2:Object) : void
      {
         §52142376223775123423632234§(§5214232533232546123423632234§).putData(this,param1,param2);
      }
      
      public function getData(param1:Class) : Object
      {
         return §52142376223775123423632234§(§5214232533232546123423632234§).getData(this,param1);
      }
      
      public function putInitParams(param1:Object) : void
      {
         this.initParams[platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§] = param1;
      }
      
      protected function getFunctionWrapper(param1:Function) : Function
      {
         var wrapper:Function;
         var object:§521423120252312038123423632234§;
         var f:Function = param1;
         var wrappers:Dictionary = this.getData(Model) as Dictionary;
         if(wrappers == null)
         {
            wrappers = new Dictionary();
            this.putData(Model,wrappers);
         }
         wrapper = wrappers[f];
         if(wrapper == null)
         {
            var _loc3_:Model = Model;
            object = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            wrapper = function(... rest):void
            {
               var _temp_1:* = Model;
               var _loc3_:§521423120252312038123423632234§ = object;
               var _loc2_:Model = _temp_1;
               platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
               platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
               f.apply(null,rest);
               Model.popObject();
            };
            wrappers[f] = wrapper;
         }
         return wrapper;
      }
   }
}

