package §with const in§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IGroupedItemEvents implements §5214234658234671123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IGroupedItemEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function isGrouped() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:§5214234658234671123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214234658234671123423632234§;
               _loc1_ = _loc3_.isGrouped();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

