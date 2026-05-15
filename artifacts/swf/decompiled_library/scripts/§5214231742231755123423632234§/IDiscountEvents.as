package §5214231742231755123423632234§
{
   import §5214236800236813123423632234§.§include switch var§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class IDiscountEvents implements §521423136452313658123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function IDiscountEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function getDiscountInPercent() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§521423136452313658123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §521423136452313658123423632234§;
               _loc1_ = _loc3_.getDiscountInPercent();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getEndDiscountTimer() : §include switch var§
      {
         var _loc1_:§include switch var§ = null;
         var _loc2_:int = 0;
         var _loc3_:§521423136452313658123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §521423136452313658123423632234§;
               _loc1_ = _loc3_.getEndDiscountTimer();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function applyDiscount(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§521423136452313658123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc7_:§521423120252312038123423632234§ = this.object;
            var _loc6_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc7_;
            _loc3_ = 0;
            while(_loc3_ < this.§extends class§.length)
            {
               _loc4_ = this.§extends class§[_loc3_] as §521423136452313658123423632234§;
               _loc2_ = _loc4_.applyDiscount(param1);
               _loc3_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc2_;
      }
   }
}

