package §521423110462311059123423632234§
{
   import flash.display.DisplayObjectContainer;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ItemActionPanelEvents implements §while catch throw§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function ItemActionPanelEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function handleDoubleClickOnItemPreview() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§while catch throw§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §while catch throw§;
               _loc2_.handleDoubleClickOnItemPreview();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function updateActionElements(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§while catch throw§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§521423120252312038123423632234§ = this.object;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§extends class§.length)
            {
               _loc3_ = this.§extends class§[_loc2_] as §while catch throw§;
               _loc3_.updateActionElements(param1);
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

