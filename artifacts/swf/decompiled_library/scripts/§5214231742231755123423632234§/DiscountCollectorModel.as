package §5214231742231755123423632234§
{
   import §5214236800236813123423632234§.§include switch var§;
   import §52142375523768123423632234§.§5214237877237890123423632234§;
   import §52142375523768123423632234§.DiscountCollectorModelBase;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class DiscountCollectorModel extends DiscountCollectorModelBase implements §5214237877237890123423632234§, §521423136452313658123423632234§
   {
      
      public static var modelRegistry:ModelRegistry;
      
      public function DiscountCollectorModel()
      {
         super();
      }
      
      public function getDiscountInPercent() : int
      {
         var _loc1_:Number = this.getDiscount();
         return _loc1_ * 100 + 0.0001;
      }
      
      public function getEndDiscountTimer() : §include switch var§
      {
         if(!platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.hasModel(§521423136452313658123423632234§))
         {
            return null;
         }
         return §include switch var§(modelRegistry.getModel(Long.getLong(-1731695992,-1839393988)).getData(§include switch var§));
      }
      
      private function getDiscount() : Number
      {
         var _loc3_:Number = 0;
         var _loc1_:int = getTimer();
         var _loc4_:DiscountCollector = new DiscountCollector();
         §false const const§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.event(§false const const§)).collectDiscountsInfo(_loc4_);
         for each(var _loc2_ in _loc4_.getDiscountInfoes())
         {
            if(_loc2_.isDiscountTime(_loc1_))
            {
               _loc3_ = 1 - (1 - _loc3_) * (1 - _loc2_.getDiscountInPercent() * 0.01);
            }
         }
         return _loc3_;
      }
      
      private function c5d7b8af(param1:DiscountInfo, param2:DiscountInfo) : int
      {
         return int(param2.isKitDiscount()) - int(param1.isKitDiscount());
      }
      
      public function applyDiscount(param1:int) : int
      {
         var _loc6_:int = 0;
         var _loc2_:int = getTimer();
         var _loc7_:DiscountCollector = new DiscountCollector();
         var _loc4_:§false const const§ = §false const const§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.event(§false const const§));
         _loc4_.collectDiscountsInfo(_loc7_);
         var _loc5_:Vector.<DiscountInfo> = _loc7_.getDiscountInfoes();
         _loc5_.sort(this.c5d7b8af);
         for each(var _loc3_ in _loc5_)
         {
            if(_loc3_.hasDiscount() && _loc3_.isDiscountTime(_loc2_))
            {
               _loc6_ = _loc3_.getDiscountInPercent();
               param1 = param1 * (100 - _loc6_) / 100 + 0.001;
            }
         }
         return param1;
      }
   }
}

