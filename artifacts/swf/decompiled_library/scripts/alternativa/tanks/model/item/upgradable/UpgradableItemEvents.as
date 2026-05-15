package alternativa.tanks.model.item.upgradable
{
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214236800236813123423632234§.§include switch var§;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class UpgradableItemEvents implements §5214233529233542123423632234§
   {
      
      private var object:§521423120252312038123423632234§;
      
      private var §extends class§:Vector.<Object>;
      
      public function UpgradableItemEvents(param1:§521423120252312038123423632234§, param2:Vector.<Object>)
      {
         super();
         this.object = param1;
         this.§extends class§ = param2;
      }
      
      public function setUpgradingProperty(param1:UpgradableItemPropertyValue, param2:§include switch var§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§5214233529233542123423632234§ = null;
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
               _loc4_ = this.§extends class§[_loc3_] as §5214233529233542123423632234§;
               _loc4_.setUpgradingProperty(param1,param2);
               _loc3_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function initializePrecision() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214233529233542123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214233529233542123423632234§;
               _loc2_.initializePrecision();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function speedUp() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214233529233542123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214233529233542123423632234§;
               _loc2_.speedUp();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function getCountDownTimer() : §include switch var§
      {
         var _loc1_:§include switch var§ = null;
         var _loc2_:int = 0;
         var _loc3_:§5214233529233542123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214233529233542123423632234§;
               _loc1_ = _loc3_.getCountDownTimer();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getUpgradingValue() : UpgradableItemPropertyValue
      {
         var _loc1_:UpgradableItemPropertyValue = null;
         var _loc2_:int = 0;
         var _loc3_:§5214233529233542123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214233529233542123423632234§;
               _loc1_ = _loc3_.getUpgradingValue();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function traceUpgrades() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214233529233542123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§521423120252312038123423632234§ = this.object;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§extends class§.length)
            {
               _loc2_ = this.§extends class§[_loc1_] as §5214233529233542123423632234§;
               _loc2_.traceUpgrades();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function getUpgradableProperties() : Vector.<UpgradableItemPropertyValue>
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:§5214233529233542123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214233529233542123423632234§;
               _loc1_ = _loc3_.getUpgradableProperties();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function isUpgrading() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:§5214233529233542123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214233529233542123423632234§;
               _loc1_ = _loc3_.isUpgrading();
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
      
      public function getUpgradingProperty() : ItemGarageProperty
      {
         var _loc1_:ItemGarageProperty = null;
         var _loc2_:int = 0;
         var _loc3_:§5214233529233542123423632234§ = null;
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
               _loc3_ = this.§extends class§[_loc2_] as §5214233529233542123423632234§;
               _loc1_ = _loc3_.getUpgradingProperty();
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

