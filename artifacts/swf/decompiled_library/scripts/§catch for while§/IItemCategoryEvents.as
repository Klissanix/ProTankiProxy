package §catch for while§
{
   import §do package if§.ItemCategoryEnum;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IItemCategoryEvents implements §default catch case§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IItemCategoryEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getCategory() : ItemCategoryEnum
      {
         var _loc1_:ItemCategoryEnum = null;
         var _loc2_:int = 0;
         var _loc3_:§default catch case§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §default catch case§;
               _loc1_ = _loc3_.getCategory();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function setCategory(param1:ItemCategoryEnum) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§default catch case§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §default catch case§;
               _loc3_.setCategory(param1);
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

