package §include const override§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ICountableItemAdapt implements §super set do§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§super set do§;
      
      public function ICountableItemAdapt(param1:§521423120252312038123423632234§, param2:§super set do§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getCount() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getCount();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function setCount(param1:int) : void
      {
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§extends class§.setCount(param1);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

