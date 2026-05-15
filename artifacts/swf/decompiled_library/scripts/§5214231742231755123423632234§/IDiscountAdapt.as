package §5214231742231755123423632234§
{
   import §5214236800236813123423632234§.§include switch var§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IDiscountAdapt implements §521423136452313658123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:§521423136452313658123423632234§;
      
      public function IDiscountAdapt(param1:§521423120252312038123423632234§, param2:§521423136452313658123423632234§)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function applyDiscount(param1:int) : int
      {
         var _loc2_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc2_ = this.§extends class§.applyDiscount(param1);
         }
         finally
         {
            Model.popObject();
         }
         return _loc2_;
      }
      
      public function getEndDiscountTimer() : §include switch var§
      {
         var _loc1_:§include switch var§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getEndDiscountTimer();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getDiscountInPercent() : int
      {
         var _loc1_:int = 0;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = this.object;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            _loc1_ = this.§extends class§.getDiscountInPercent();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

