package §catch for while§
{
   import §do package if§.ItemCategoryEnum;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IItemCategoryAdapt implements §default catch case§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§default catch case§;
      
      public function IItemCategoryAdapt(param1:§521423120252312038123423632234§, param2:§default catch case§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getCategory() : ItemCategoryEnum
      {
         var _loc1_:ItemCategoryEnum = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getCategory();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function setCategory(param1:ItemCategoryEnum) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.setCategory(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

