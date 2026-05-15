package §5214233052233065123423632234§
{
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214234856234869123423632234§.KitItem;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.item.ItemService;
   import assets.§if use implements§;
   import §do package if§.ItemCategoryEnum;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class KitInfoTable extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      private const §5214238542238555123423632234§:int = 12;
      
      private const §521423742387123423632234§:int = 13;
      
      private const §try switch var§:int = 4;
      
      private const §5214239059239072123423632234§:int = 17;
      
      private var §class var use§:Shape = new Shape();
      
      private var _width:int;
      
      private var §521423140822314095123423632234§:int;
      
      private var §try switch default§:int;
      
      private var §52142327623289123423632234§:§521423120252312038123423632234§;
      
      private var kit:§521423110672311080123423632234§;
      
      public function KitInfoTable(param1:int)
      {
         super();
         this._width = param1;
         this.§521423140822314095123423632234§ = 0;
      }
      
      private function b1fe5001() : void
      {
         var _loc1_:Graphics = this.§class var use§.graphics;
         _loc1_.clear();
         _loc1_.beginFill(2071057);
         _loc1_.drawRoundRect(9,0,_width - 18,17,7,7);
         _loc1_.endFill();
      }
      
      private function e3721027(param1:String, param2:int, param3:int, param4:uint) : void
      {
         var _loc6_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc6_.color = param4;
         _loc6_.align = "left";
         _loc6_.text = param1;
         _loc6_.x = 12;
         _loc6_.y = 13 + this.§521423140822314095123423632234§ + 17 * param3;
         addChild(_loc6_);
         var _loc7_:§if use implements§ = new §if use implements§();
         _loc7_.x = this._width - _loc6_.x - _loc7_.width;
         addChild(_loc7_);
         _loc7_.y = _loc6_.y + 4;
         var _loc5_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc5_.color = param2 >= 0 ? param4 : 16727340;
         _loc5_.align = "right";
         _loc5_.text = §521423133302313343123423632234§.§get catch catch§(param2,false);
         _loc5_.x = _loc7_.x - _loc5_.width - 1;
         _loc5_.y = _loc6_.y;
         addChild(_loc5_);
      }
      
      private function a26aa132() : void
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.color = 5898034;
         _loc1_.align = "left";
         _loc1_.text = §5214236363236376123423632234§.getText("ITEMS_IN_KIT");
         _loc1_.x = 12;
         _loc1_.y = 12;
         addChild(_loc1_);
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc2_.color = 5898034;
         _loc2_.align = "right";
         _loc2_.text = §5214236363236376123423632234§.getText("GARAGE_PRICE");
         _loc2_.x = this._width - _loc2_.width - _loc1_.x;
         _loc2_.y = _loc1_.y;
         addChild(_loc2_);
      }
      
      private function b1b6dc98() : void
      {
         while(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
      }
      
      private function f26dbcdd() : void
      {
         var _loc2_:KitItemInfoRow = null;
         this.kit.getItems().sort(this.d43f2b90);
         var _loc3_:int = 29;
         for each(var _loc1_ in this.kit.getItems())
         {
            _loc2_ = new KitItemInfoRow(_loc3_,this._width,_loc1_,12,4);
            addChild(_loc2_);
            _loc3_ += 17;
         }
      }
      
      private function e1578608() : void
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.color = 5898034;
         _loc1_.align = "left";
         _loc1_.text = §5214236363236376123423632234§.getText("TOTAL_PRICE_KIT");
         _loc1_.x = 12;
         _loc1_.y = 12 + (this.kit.getItems().length + 1) * 17;
         addChild(_loc1_);
         var _loc2_:§if use implements§ = new §if use implements§();
         _loc2_.x = this._width - _loc1_.x - _loc2_.width;
         addChild(_loc2_);
         _loc2_.y = _loc1_.y + 4;
         var _loc3_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc3_.color = 5898034;
         _loc3_.align = "right";
         _loc3_.text = §521423133302313343123423632234§.§get catch catch§(this.kit.getPriceWithoutDiscount(),false);
         _loc3_.x = _loc2_.x - _loc3_.width - 1;
         _loc3_.y = _loc1_.y;
         addChild(_loc3_);
      }
      
      private function b1ba2684() : void
      {
         addChild(this.§class var use§);
         this.§class var use§.y = 13 + this.§521423140822314095123423632234§;
         this.b1fe5001();
         var _loc1_:int = §521423120472312060123423632234§.getDiscount(this.§52142327623289123423632234§);
         var _loc2_:int = §521423120472312060123423632234§.getPrice(this.§52142327623289123423632234§);
         var _loc4_:String = §5214236363236376123423632234§.getText("DISCOUNTED_AT_KIT");
         _loc4_ = _loc4_.replace("{0}",_loc1_ + "%");
         this.e3721027(_loc4_,_loc2_,0,16777215);
         var _loc5_:int = this.kit.getPriceAlreadyBought();
         var _loc3_:int = 1;
         if(_loc5_ > 0)
         {
            this.e3721027(§5214236363236376123423632234§.getText("ALREADY_BOUGHT_KIT"),_loc5_,1,9539985);
            _loc3_++;
         }
         this.e3721027(§5214236363236376123423632234§.getText("YOU_SAVE_KIT"),this.kit.getPriceYouSave(),_loc3_,16777215);
         this.§try switch default§ = (_loc3_ + 1) * 17;
      }
      
      public function getTopPartTableHeight() : int
      {
         return this.§521423140822314095123423632234§;
      }
      
      private function f305d965(param1:KitItem) : int
      {
         switch(§521423120472312060123423632234§.getCategory(param1.item))
         {
            case ItemCategoryEnum.WEAPON:
               return 0;
            case ItemCategoryEnum.ARMOR:
               return 1;
            case ItemCategoryEnum.INVENTORY:
               return 3;
            case ItemCategoryEnum.PLUGIN:
               return 4;
            case ItemCategoryEnum.COLOR:
               return 5;
            default:
               return 6;
         }
      }
      
      public function show(param1:§521423120252312038123423632234§) : void
      {
         this.§52142327623289123423632234§ = param1;
         this.kit = §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§));
         var _loc2_:int = int(this.kit.getItems().length);
         this.§521423140822314095123423632234§ = 12 + (_loc2_ + 2) * 17;
         this.b1b6dc98();
         this.a26aa132();
         this.f26dbcdd();
         this.e1578608();
         this.b1ba2684();
      }
      
      public function getBottomPartTableHeight() : int
      {
         return this.§try switch default§;
      }
      
      public function getFullTableHeight() : int
      {
         return 13 + this.§521423140822314095123423632234§ + this.§try switch default§;
      }
      
      private function d43f2b90(param1:KitItem, param2:KitItem) : Number
      {
         var _loc5_:int = this.f305d965(param1);
         var _loc6_:int = this.f305d965(param2);
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         var _loc3_:int = §521423120472312060123423632234§.getPrice(param1.item) * param1.count;
         var _loc4_:int = §521423120472312060123423632234§.getPrice(param2.item) * param2.count;
         if(_loc3_ < _loc4_)
         {
            return 1;
         }
         if(_loc3_ > _loc4_)
         {
            return -1;
         }
         return 0;
      }
   }
}

