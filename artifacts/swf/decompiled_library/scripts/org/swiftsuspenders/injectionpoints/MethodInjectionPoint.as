package org.swiftsuspenders.injectionpoints
{
   import flash.utils.getQualifiedClassName;
   import org.swiftsuspenders.§521423139362313949123423632234§;
   import org.swiftsuspenders.§5214237680237693123423632234§;
   import org.swiftsuspenders.Injector;
   
   public class MethodInjectionPoint extends §5214232367232380123423632234§
   {
      
      protected var §5214239511239524123423632234§:String;
      
      protected var §5214232085232098123423632234§:Array;
      
      protected var §5214235331235344123423632234§:int = 0;
      
      public function MethodInjectionPoint(param1:XML, param2:Injector = null)
      {
         super(param1,param2);
      }
      
      override public function applyInjection(param1:Object, param2:Injector) : Object
      {
         var _loc3_:Array = this.§521423114872311500123423632234§(param1,param2);
         var _loc4_:Function = param1[this.§5214239511239524123423632234§];
         _loc4_.apply(param1,_loc3_);
         return param1;
      }
      
      override protected function initializeInjection(param1:XML) : void
      {
         var nameArgs:XMLList = null;
         var methodNode:XML = null;
         var node:XML = param1;
         nameArgs = node.arg.(@key == "name");
         methodNode = node.parent();
         this.§5214239511239524123423632234§ = methodNode.@name.toString();
         this.§5214233717233730123423632234§(methodNode,nameArgs);
      }
      
      protected function §5214233717233730123423632234§(param1:XML, param2:XMLList) : void
      {
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         this.§5214232085232098123423632234§ = [];
         var _loc3_:* = 0;
         for each(_loc4_ in param1.parameter)
         {
            _loc5_ = "";
            if(param2[_loc3_])
            {
               _loc5_ = param2[_loc3_].@value.toString();
            }
            _loc6_ = _loc4_.@type.toString();
            if(_loc6_ == "*")
            {
               if(_loc4_.@optional.toString() == "false")
               {
                  throw new §5214237680237693123423632234§("Error in method definition of injectee. " + "Required parameters can\'t have type \"*\".");
               }
               _loc6_ = null;
            }
            this.§5214232085232098123423632234§.push(new ParameterInjectionConfig(_loc6_,_loc5_));
            if(_loc4_.@optional.toString() == "false")
            {
               ++this.§5214235331235344123423632234§;
            }
            _loc3_++;
         }
      }
      
      protected function §521423114872311500123423632234§(param1:Object, param2:Injector) : Array
      {
         var _loc6_:ParameterInjectionConfig = null;
         var _loc7_:§521423139362313949123423632234§ = null;
         var _loc8_:Object = null;
         var _loc3_:Array = [];
         var _loc4_:int = int(this.§5214232085232098123423632234§.length);
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.§5214232085232098123423632234§[_loc5_];
            _loc7_ = param2.§else set try§(Class(param2.§with const switch§().getDefinition(_loc6_.typeName)),_loc6_.injectionName);
            _loc8_ = _loc7_.§in package throw§(param2);
            if(_loc8_ == null)
            {
               if(_loc5_ < this.§5214235331235344123423632234§)
               {
                  throw new §5214237680237693123423632234§("Injector is missing a rule to handle injection into target " + param1 + ". Target dependency: " + getQualifiedClassName(_loc7_.§5214234235234248123423632234§) + ", method: " + this.§5214239511239524123423632234§ + ", parameter: " + (_loc5_ + 1));
               }
               break;
            }
            _loc3_[_loc5_] = _loc8_;
            _loc5_++;
         }
         return _loc3_;
      }
   }
}

final class ParameterInjectionConfig
{
   
   public var typeName:String;
   
   public var injectionName:String;
   
   public function ParameterInjectionConfig(param1:String, param2:String)
   {
      super();
      this.typeName = param1;
      this.injectionName = param2;
   }
}
