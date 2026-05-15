package §throw package for§
{
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IRentAdapt implements §return var function§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§return var function§;
      
      public function IRentAdapt(param1:§521423120252312038123423632234§, param2:§return var function§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function isForRent() : Boolean
      {
         var _loc1_:Boolean = false;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.isForRent();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

