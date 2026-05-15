package §5214232440232453123423632234§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ItemFittingAdapt implements §use set while§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§use set while§;
      
      public function ItemFittingAdapt(param1:§521423120252312038123423632234§, param2:§use set while§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function fit() : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc3_:§521423120252312038123423632234§ = this.object;
            var _loc2_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc3_;
            this.§extends class§.fit();
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

