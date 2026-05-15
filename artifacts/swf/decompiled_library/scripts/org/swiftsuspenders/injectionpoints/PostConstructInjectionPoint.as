package org.swiftsuspenders.injectionpoints
{
   import org.swiftsuspenders.Injector;
   
   public class PostConstructInjectionPoint extends §5214232367232380123423632234§
   {
      
      protected var §5214239511239524123423632234§:String;
      
      protected var §class catch in§:int;
      
      public function PostConstructInjectionPoint(param1:XML, param2:Injector = null)
      {
         super(param1,param2);
      }
      
      public function get order() : int
      {
         return this.§class catch in§;
      }
      
      override public function applyInjection(param1:Object, param2:Injector) : Object
      {
         param1[this.§5214239511239524123423632234§]();
         return param1;
      }
      
      override protected function initializeInjection(param1:XML) : void
      {
         var orderArg:XMLList = null;
         var methodNode:XML = null;
         var node:XML = param1;
         orderArg = node.arg.(@key == "order");
         methodNode = node.parent();
         this.§class catch in§ = int(orderArg.@value);
         this.§5214239511239524123423632234§ = methodNode.@name.toString();
      }
   }
}

