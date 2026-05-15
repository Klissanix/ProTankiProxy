package §catch for while§
{
   import §do package if§.ItemViewCategoryEnum;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IItemViewCategoryAdapt implements §for package finally§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§for package finally§;
      
      public function IItemViewCategoryAdapt(param1:§521423120252312038123423632234§, param2:§for package finally§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getCategory() : ItemViewCategoryEnum
      {
         var _loc1_:ItemViewCategoryEnum = null;
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
      
      public function setCategory(param1:ItemViewCategoryEnum) : void
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

