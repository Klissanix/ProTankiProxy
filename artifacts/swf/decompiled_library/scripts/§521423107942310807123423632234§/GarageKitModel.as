package §521423107942310807123423632234§
{
   import §5214231742231755123423632234§.§521423136452313658123423632234§;
   import §5214231742231755123423632234§.DiscountInfo;
   import §5214231742231755123423632234§.§false const const§;
   import §5214231742231755123423632234§.§import switch if§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214234856234869123423632234§.GarageKitModelBase;
   import §5214234856234869123423632234§.KitItem;
   import §5214234856234869123423632234§.§include switch§;
   import alternativa.tanks.service.item.ItemService;
   import §do package if§.ItemCategoryEnum;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class GarageKitModel extends GarageKitModelBase implements §include switch§, §521423110672311080123423632234§, §false const const§
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §true switch package§:IUserPropertiesService;
      
      public function GarageKitModel()
      {
         super();
      }
      
      public function collectDiscountsInfo(param1:§import switch if§) : void
      {
         if(getInitParam() == null)
         {
            return;
         }
         param1.addDiscount(new DiscountInfo(getInitParam().discountInPercent,0,4294967295,true));
      }
      
      public function getPrice() : int
      {
         var _loc1_:int = this.getPriceWithoutDiscount();
         var _loc2_:§521423136452313658123423632234§ = §521423136452313658123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423136452313658123423632234§));
         return _loc2_.applyDiscount(_loc1_);
      }
      
      public function getPriceYouSave() : int
      {
         return this.getPriceWithoutDiscount() - this.getPrice() - this.getPriceAlreadyBought();
      }
      
      public function getPriceAlreadyBought() : int
      {
         var _loc1_:KitItem = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.getItems())
         {
            if(§521423120472312060123423632234§.hasItem(_loc1_.item) && !§521423120472312060123423632234§.isCountable(_loc1_.item) && §521423120472312060123423632234§.getCategory(_loc1_.item) != ItemCategoryEnum.PLUGIN)
            {
               _loc2_ += §521423120472312060123423632234§.getPriceWithoutDiscount(_loc1_.item) * _loc1_.count;
            }
         }
         return _loc2_;
      }
      
      public function getImage() : §include catch with§
      {
         return getInitParam().image;
      }
      
      public function getItems() : Vector.<KitItem>
      {
         return getInitParam().kitItems;
      }
      
      public function canBuy() : Boolean
      {
         var _loc1_:KitItem = null;
         for each(_loc1_ in this.getItems())
         {
            if(!§521423120472312060123423632234§.hasItem(_loc1_.item) && §521423120472312060123423632234§.getMinRankIndex(_loc1_.item) > §true switch package§.rank)
            {
               return true;
            }
         }
         return this.getPriceYouSave() > 0;
      }
      
      public function getPriceWithoutDiscount() : int
      {
         var _loc1_:KitItem = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.getItems())
         {
            _loc2_ += §521423120472312060123423632234§.getPriceWithoutDiscount(_loc1_.item) * _loc1_.count;
         }
         return _loc2_;
      }
   }
}

