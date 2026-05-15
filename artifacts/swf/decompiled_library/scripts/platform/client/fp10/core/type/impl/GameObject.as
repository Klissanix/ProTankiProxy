package platform.client.fp10.core.type.impl
{
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.model.§while for try§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.type.*;
   
   public class GameObject implements §521423120252312038123423632234§, §52142376223775123423632234§
   {
      
      public static var modelRegistry:ModelRegistry;
      
      private var §5214231331231344123423632234§:String;
      
      private var §null use break§:Long;
      
      private var §class switch dynamic§:§5214232060232073123423632234§;
      
      private var §5214236003236016123423632234§:§52142376523778123423632234§;
      
      private var data:Dictionary;
      
      private var §function package get§:Dictionary;
      
      private var events:Dictionary;
      
      private var §5214236765236778123423632234§:*;
      
      private var components:Vector.<Component>;
      
      public function GameObject(param1:Long, param2:GameClass, param3:String, param4:§52142376523778123423632234§)
      {
         super();
         this.data = new Dictionary();
         this.§null use break§ = param1;
         this.§class switch dynamic§ = param2;
         this.§5214231331231344123423632234§ = param3;
         this.§5214236003236016123423632234§ = param4;
      }
      
      public function get gameClass() : §5214232060232073123423632234§
      {
         return this.§class switch dynamic§;
      }
      
      public function event(param1:Class) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:Class = null;
         if(this.events == null)
         {
            this.events = new Dictionary();
         }
         var _loc2_:Object = this.events[param1];
         if(_loc2_ == null)
         {
            _loc3_ = this.f5b972d9(param1);
            _loc4_ = modelRegistry.getEventsClass(param1);
            _loc2_ = new _loc4_(this,_loc3_);
            this.events[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function clear() : void
      {
         this.b6aebc15();
         this.§class switch dynamic§ = null;
         this.§5214236003236016123423632234§ = null;
         this.e58b6c41();
         this.e4b38297();
      }
      
      public function adapt(param1:Class) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:Class = null;
         if(this.§function package get§ == null)
         {
            this.§function package get§ = new Dictionary();
         }
         var _loc2_:Object = this.§function package get§[param1];
         if(_loc2_ == null)
         {
            _loc3_ = this.f5b972d9(param1);
            if(_loc3_.length > 1)
            {
            }
            if(_loc3_.length == 0)
            {
               throw new Error("GameObject::adapt() No models have been found. Object: " + this + ", interface: " + param1);
            }
            _loc4_ = modelRegistry.getAdaptClass(param1);
            _loc2_ = new _loc4_(this,_loc3_[0]);
            this.§function package get§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      private function f5b972d9(param1:Class) : Vector.<Object>
      {
         var _loc4_:Object = null;
         if(this.§5214236765236778123423632234§ == null)
         {
            this.§5214236765236778123423632234§ = new Dictionary();
         }
         if(param1 in this.§5214236765236778123423632234§)
         {
            return this.§5214236765236778123423632234§[param1];
         }
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         if(this.gameClass != null)
         {
            for each(var _loc5_ in this.gameClass.models)
            {
               _loc4_ = modelRegistry.getModel(_loc5_);
               if(_loc4_ is param1)
               {
                  _loc2_[_loc2_.length] = _loc4_;
               }
            }
         }
         if(this.components != null)
         {
            for each(var _loc3_ in this.components)
            {
               if(_loc3_ is param1)
               {
                  _loc2_[_loc2_.length] = _loc3_;
               }
            }
         }
         this.§5214236765236778123423632234§[param1] = _loc2_;
         return _loc2_;
      }
      
      private function b6aebc15() : void
      {
         var _loc2_:§while for try§ = null;
         var _temp_1:* = Model;
         var _loc6_:GameObject = this;
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
         for each(var _loc1_ in this.gameClass.models)
         {
            _loc2_ = modelRegistry.getModel(_loc1_);
            if(_loc2_ != null)
            {
               _loc2_.clearInitParams();
            }
         }
         Model.popObject();
      }
      
      public function addComponent(param1:Component) : void
      {
         this.e4b38297();
         if(param1.gameObject != null)
         {
            throw new Error("Component has already added to gameObject " + param1.gameObject);
         }
         if(this.components == null)
         {
            this.components = new Vector.<Component>();
         }
         this.components[components.length] = param1;
      }
      
      public function hasModel(param1:Class) : Boolean
      {
         return this.f5b972d9(param1).length > 0;
      }
      
      public function get id() : Long
      {
         return this.§null use break§;
      }
      
      public function putData(param1:Model, param2:Class, param3:Object) : void
      {
         var _loc4_:Dictionary = this.data[param1];
         if(_loc4_ == null)
         {
            _loc4_ = new Dictionary();
            this.data[param1] = _loc4_;
         }
         _loc4_[param2] = param3;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      private function clearDictionary(param1:Dictionary) : void
      {
         if(param1 == null)
         {
            return;
         }
         for(var _loc2_ in param1)
         {
            delete param1[_loc2_];
         }
      }
      
      private function e58b6c41() : void
      {
         var _loc2_:Dictionary = null;
         var _loc4_:* = undefined;
         for(var _loc3_ in this.data)
         {
            _loc2_ = this.data[_loc3_];
            for(var _loc1_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc1_];
               if(_loc4_ is §521423117662311779123423632234§)
               {
                  §521423117662311779123423632234§(_loc4_).close();
               }
               delete _loc2_[_loc1_];
            }
            delete this.data[_loc3_];
         }
      }
      
      public function clearData(param1:Model, param2:Class) : Object
      {
         var _loc3_:Dictionary = this.data[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:Object = _loc3_[param2];
         delete _loc3_[param2];
         return _loc4_;
      }
      
      public function get name() : String
      {
         return this.§5214231331231344123423632234§;
      }
      
      public function getData(param1:Model, param2:Class) : Object
      {
         var _loc3_:Dictionary = this.data[param1];
         return _loc3_ == null ? null : _loc3_[param2];
      }
      
      public function get space() : §52142376523778123423632234§
      {
         return this.§5214236003236016123423632234§;
      }
      
      private function e4b38297() : void
      {
         this.clearDictionary(this.§5214236765236778123423632234§);
         this.clearDictionary(this.§function package get§);
         this.clearDictionary(this.events);
         this.§5214236765236778123423632234§ = null;
         this.§function package get§ = null;
         this.events = null;
      }
   }
}

