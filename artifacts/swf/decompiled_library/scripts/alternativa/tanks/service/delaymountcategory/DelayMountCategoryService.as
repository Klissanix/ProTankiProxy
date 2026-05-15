package alternativa.tanks.service.delaymountcategory
{
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.tanks.service.item.ItemService;
   import §do package if§.ItemCategoryEnum;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §throw for final§.DelayMountCategoryCC;
   
   public class DelayMountCategoryService implements IDelayMountCategoryService
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      private var §native set break§:Dictionary;
      
      public function DelayMountCategoryService()
      {
         super();
         this.§native set break§ = new Dictionary();
      }
      
      public function destroyTimers() : void
      {
         var _loc1_:§include switch var§ = null;
         for each(_loc1_ in this.§native set break§)
         {
            if(_loc1_ != null)
            {
               _loc1_.destroy();
            }
         }
         delete this.§native set break§[ItemCategoryEnum.ARMOR];
         delete this.§native set break§[ItemCategoryEnum.COLOR];
         delete this.§native set break§[ItemCategoryEnum.WEAPON];
      }
      
      public function resetTimers() : void
      {
         var _loc1_:§include switch var§ = null;
         for each(_loc1_ in this.§native set break§)
         {
            if(_loc1_ != null)
            {
               _loc1_.§521423129602312973123423632234§();
            }
         }
      }
      
      private function a761f829(param1:ItemCategoryEnum, param2:int) : void
      {
         var _loc3_:§include switch var§ = new §include switch var§();
         _loc3_.§native var include§(param2 * 1000 + getTimer());
         this.§native set break§[param1] = _loc3_;
      }
      
      public function getDownTimer(param1:§521423120252312038123423632234§) : §include switch var§
      {
         var _loc2_:ItemCategoryEnum = §521423120472312060123423632234§.getCategory(param1);
         return this.§native set break§[_loc2_];
      }
      
      public function createTimers(param1:DelayMountCategoryCC) : void
      {
         this.a761f829(ItemCategoryEnum.ARMOR,param1.delayMountArmorInSec);
         this.a761f829(ItemCategoryEnum.WEAPON,param1.delayMountWeaponInSec);
         this.a761f829(ItemCategoryEnum.COLOR,param1.delayMountColorInSec);
      }
   }
}

