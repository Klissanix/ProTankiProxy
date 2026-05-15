package §5214231742231755123423632234§
{
   import §5214236800236813123423632234§.§else const if§;
   import §5214236800236813123423632234§.§else set else§;
   import §5214236800236813123423632234§.§include switch var§;
   import §52142375523768123423632234§.§5214237177237190123423632234§;
   import §52142375523768123423632234§.DiscountCC;
   import §52142375523768123423632234§.DiscountModelBase;
   import alternativa.tanks.service.garage.GarageService;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class DiscountModel extends DiscountModelBase implements §5214237177237190123423632234§, §false const const§, §5214234168234181123423632234§, §throw catch var§, §else const if§
   {
      
      public static var §finally switch default§:GarageService;
      
      private const §5214238698238711123423632234§:uint = 2592000;
      
      private const §if const super§:int = 1000;
      
      public function DiscountModel()
      {
         super();
      }
      
      private function f521beab() : void
      {
         clearData(uint);
         this.e5e77c5d();
         this.updateDiscount();
         this.c5fbd99f();
      }
      
      private function a2c3d49b() : void
      {
         var _loc1_:§include switch var§ = §include switch var§(getData(§include switch var§));
         if(_loc1_ != null)
         {
            _loc1_.destroy();
            clearData(§include switch var§);
         }
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:Object = getData(uint);
         if(_loc1_ != null)
         {
            clearTimeout(uint(_loc1_));
         }
      }
      
      public function objectLoadedPost() : void
      {
         this.fb51a63();
         this.e5e77c5d();
         this.c5fbd99f();
      }
      
      private function e5e77c5d() : void
      {
         var _loc1_:DiscountInfo = null;
         var _loc2_:§include switch var§ = null;
         this.a2c3d49b();
         var _loc4_:* = 4294967295;
         var _loc5_:int = getTimer();
         var _loc3_:DiscountCollector = new DiscountCollector();
         §false const const§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.event(§false const const§)).collectDiscountsInfo(_loc3_);
         for each(_loc1_ in _loc3_.getDiscountInfoes())
         {
            if(_loc1_.isDiscountTime(_loc5_))
            {
               _loc4_ = uint(Math.min(_loc4_,_loc1_.getEndTime()));
            }
         }
         if(_loc4_ != 4294967295)
         {
            _loc2_ = new §include switch var§();
            _loc2_.§native var include§(_loc4_);
            _loc2_.§5214232580232593123423632234§(§else const if§,new §else set else§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§,this));
            putData(§include switch var§,_loc2_);
         }
      }
      
      public function collectDiscountsInfo(param1:§import switch if§) : void
      {
         param1.addDiscount(DiscountInfo(getData(DiscountInfo)));
      }
      
      public function onCompleteBefore(param1:§include switch var§, param2:Boolean) : void
      {
         this.e5e77c5d();
         this.updateDiscount();
      }
      
      private function fb51a63() : void
      {
         var _loc1_:DiscountCC = getInitParam();
         if(_loc1_ == null || _loc1_.discount == 0 || _loc1_.timeToStartInSeconds > 2592000)
         {
            putData(DiscountInfo,DiscountInfo.§5214232961232974123423632234§);
            return;
         }
         var _loc2_:uint = uint(getTimer());
         var _loc3_:* = 0;
         if(_loc1_.timeToStartInSeconds > 0)
         {
            _loc3_ = uint(_loc2_ + _loc1_.timeToStartInSeconds * 1000);
         }
         var _loc4_:* = 4294967295;
         if(_loc1_.timeLeftInSeconds > 0 && _loc1_.timeLeftInSeconds < 2592000)
         {
            _loc4_ = uint(_loc2_ + _loc1_.timeLeftInSeconds * 1000);
         }
         putData(DiscountInfo,new DiscountInfo(_loc1_.discount,_loc3_,_loc4_));
      }
      
      private function updateDiscount() : void
      {
         §finally switch default§.getView().updateDiscount(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
      }
      
      private function c5fbd99f() : void
      {
         var _loc1_:DiscountInfo = null;
         var _loc2_:* = 0;
         var _loc4_:* = 4294967295;
         var _loc5_:int = getTimer();
         var _loc3_:DiscountCollector = new DiscountCollector();
         §false const const§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.event(§false const const§)).collectDiscountsInfo(_loc3_);
         for each(_loc1_ in _loc3_.getDiscountInfoes())
         {
            if(_loc5_ < _loc1_.getBeginTime())
            {
               _loc4_ = uint(Math.min(_loc4_,_loc1_.getBeginTime()));
            }
         }
         if(_loc4_ != 4294967295)
         {
            _loc2_ = setTimeout(getFunctionWrapper(this.f521beab),_loc4_ - _loc5_);
            putData(uint,_loc2_);
         }
      }
   }
}

