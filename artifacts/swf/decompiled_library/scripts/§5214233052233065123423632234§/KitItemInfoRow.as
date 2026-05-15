package §5214233052233065123423632234§
{
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214234856234869123423632234§.KitItem;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.item.ItemService;
   import assets.§if use implements§;
   import §do package if§.ItemCategoryEnum;
   import flash.display.Sprite;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class KitItemInfoRow extends Sprite
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function KitItemInfoRow(param1:int, param2:int, param3:KitItem, param4:int, param5:int)
      {
         var _loc13_:Number = NaN;
         var _loc10_:§5214231141231154123423632234§ = null;
         var _loc9_:§if use implements§ = null;
         var _loc15_:§5214231141231154123423632234§ = null;
         var _loc11_:* = 0;
         var _loc16_:§5214231141231154123423632234§ = null;
         super();
         var _loc14_:int = 45;
         if(§5214236363236376123423632234§.language == "cn")
         {
            _loc14_ = 59;
         }
         var _loc12_:int = param2;
         this.y = param1;
         var _loc7_:§521423120252312038123423632234§ = param3.item;
         var _loc6_:Boolean = §521423120472312060123423632234§.hasItem(_loc7_) && !§521423120472312060123423632234§.isCountable(_loc7_) && §521423120472312060123423632234§.getCategory(_loc7_) != ItemCategoryEnum.PLUGIN;
         _loc11_ = !_loc6_ ? 16777215 : 9539985;
         _loc10_ = new §5214231141231154123423632234§();
         _loc10_.color = _loc11_;
         _loc10_.align = "left";
         _loc10_.text = §521423120472312060123423632234§.getName(param3.item) + (param3.count <= 1 ? "" : " ×" + String(param3.count));
         _loc10_.x = param4;
         addChild(_loc10_);
         if(_loc6_)
         {
            _loc10_.text += " " + §5214236363236376123423632234§.getText("BOUGHT_STATUS_KIT");
         }
         _loc9_ = new §if use implements§();
         _loc9_.x = _loc12_ - _loc10_.x - _loc9_.width;
         addChild(_loc9_);
         _loc9_.y = param5;
         var _loc8_:int = §521423120472312060123423632234§.getPriceWithoutDiscount(param3.item) * param3.count;
         _loc15_ = new §5214231141231154123423632234§();
         _loc15_.color = _loc11_;
         _loc15_.align = "right";
         _loc15_.text = §521423133302313343123423632234§.§get catch catch§(_loc8_,false);
         _loc15_.x = _loc9_.x - _loc15_.width - 1;
         addChild(_loc15_);
         if(!_loc6_)
         {
            _loc16_ = new §5214231141231154123423632234§();
            _loc13_ = §521423120472312060123423632234§.getDiscount(param3.item);
            if(_loc13_ > 0)
            {
               _loc16_.bold = true;
               _loc16_.color = 16727340;
               _loc16_.align = "right";
               _loc16_.text = "-" + String(_loc13_) + "%";
               _loc16_.x = _loc9_.x - _loc14_ - _loc16_.width;
               addChild(_loc16_);
            }
         }
      }
   }
}

