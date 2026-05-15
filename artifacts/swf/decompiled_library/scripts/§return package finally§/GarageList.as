package §return package finally§
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §521423107782310791123423632234§.IconGarageMod;
   import §521423107782310791123423632234§.§while for set§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214236602236615123423632234§.§while var catch§;
   import §5214236800236813123423632234§.§include switch var§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.utils.removeDisplayObject;
   import assets.§if use implements§;
   import §do package if§.ItemCategoryEnum;
   import fl.controls.LabelButton;
   import fl.controls.ScrollBar;
   import fl.controls.TileList;
   import fl.data.DataProvider;
   import fl.events.ListEvent;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.getTimer;
   import §implements for each§.§521423120332312046123423632234§;
   import §implements for each§.§include implements§;
   import §in set var§.§521423101352310148123423632234§;
   import §include else§.§52142345223465123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.ScrollStyleUtils;
   
   public class GarageList extends DiscreteSprite implements §5214238033238046123423632234§
   {
      
      private static const §in finally catch§:Number = 70;
      
      private static const §package use implements§:Number = 7;
      
      private static const §for use throw§:Number = 3;
      
      private static const §5214231135231148123423632234§:int = 118;
      
      private static const §false var return§:int = 58;
      
      private var list:TileList;
      
      private var §5214236864236877123423632234§:DataProvider;
      
      private var §true package do§:§521423120252312038123423632234§ = null;
      
      private var §class else§:Number;
      
      private var §521423112652311278123423632234§:Number;
      
      private var §5214232748232761123423632234§:Number;
      
      private var §null package continue§:int;
      
      private var §default catch with§:int;
      
      private var currentTime:int;
      
      private var §include const static§:Number = 0;
      
      private var _width:int;
      
      private var _height:int;
      
      public function GarageList()
      {
         super();
         this.init();
      }
      
      public function updatePreview(param1:§include catch with§) : void
      {
         var _loc2_:GarageListRendererData = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc2_ = GarageListRendererData(this.§5214236864236877123423632234§.getItemAt(_loc3_));
            var _loc4_:§include catch with§ = _loc2_.preview;
            var _loc5_:§include catch with§;
            if(_loc4_.§5214239618239631123423632234§.id == (_loc5_ = param1).§5214239618239631123423632234§.id)
            {
               this.update(_loc2_.id,"preview",param1);
            }
            _loc3_++;
         }
      }
      
      public function select(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:int = 0;
         this.§include const static§ = 0;
         if(this.§true package do§ != param1)
         {
            _loc2_ = this.indexById(param1);
            this.list.selectedIndex = _loc2_;
            this.§true package do§ = param1;
            dispatchEvent(new §52142345223465123423632234§("SelectPartsListItem"));
         }
      }
      
      public function scrollTo(param1:§521423120252312038123423632234§) : void
      {
         this.§include const static§ = 0;
         var _loc2_:int = this.indexById(param1);
         this.list.scrollToIndex(_loc2_);
      }
      
      public function mount(param1:§521423120252312038123423632234§) : void
      {
         this.update(param1,"installed",true);
      }
      
      private function b53487a0(param1:MouseEvent) : void
      {
         this.§include const static§ = 0;
         this.list.horizontalScrollPosition -= param1.delta * (Capabilities.os.search("Linux") != -1 ? 50 : 10);
      }
      
      private function c1526113(param1:int, param2:String, param3:*, param4:Boolean) : void
      {
         var _loc5_:GarageListRendererData = null;
         _loc5_ = GarageListRendererData(this.§5214236864236877123423632234§.getItemAt(param1));
         _loc5_[param2] = param3;
         if(param4)
         {
            _loc5_.iconNormal = this.c8d0901(_loc5_,false);
            _loc5_.iconSelected = this.c8d0901(_loc5_,true);
            this.§5214236864236877123423632234§.replaceItemAt(_loc5_,param1);
            this.§5214236864236877123423632234§.invalidateItemAt(param1);
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         stage.removeEventListener("mouseMove",this.f5133bf6);
         stage.removeEventListener("mouseUp",this.onMouseUp);
         var _loc2_:Number = (getTimer() - this.§default catch with§) / 1000;
         if(_loc2_ == 0)
         {
            _loc2_ = 0.1;
         }
         var _loc3_:Number = param1.stageX - this.§class else§;
         this.§include const static§ = _loc3_ / _loc2_;
         this.§default catch with§ = this.currentTime;
         this.currentTime = getTimer();
         addEventListener("enterFrame",this.e1d1903);
      }
      
      private function e1d1903(param1:Event) : void
      {
         this.§default catch with§ = this.currentTime;
         this.currentTime = getTimer();
         var _loc2_:Number = (this.currentTime - this.§default catch with§) / 1000;
         this.list.horizontalScrollPosition -= this.§include const static§ * _loc2_;
         var _loc3_:Number = this.list.horizontalScrollPosition;
         var _loc4_:Number = this.list.maxHorizontalScrollPosition;
         if(Math.abs(this.§include const static§) > 70 && 0 < _loc3_ && _loc3_ < _loc4_)
         {
            this.§include const static§ *= Math.exp(-1.5 * _loc2_);
         }
         else
         {
            this.§include const static§ = 0;
            removeEventListener("enterFrame",this.e1d1903);
         }
      }
      
      public function clearList() : void
      {
         this.f26c158();
         this.§5214236864236877123423632234§.removeAll();
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
      }
      
      private function c8d0901(param1:GarageListRendererData, param2:Boolean) : DisplayObject
      {
         var _loc13_:§while for set§ = null;
         var _loc3_:Bitmap = null;
         var _loc4_:IconGarageMod = null;
         var _loc8_:§5214231141231154123423632234§ = null;
         var _loc9_:§5214231141231154123423632234§ = null;
         var _loc10_:§if use implements§ = null;
         var _loc5_:GarageItemBackground = null;
         var _loc11_:Bitmap = null;
         var _loc12_:§5214231141231154123423632234§ = null;
         var _loc14_:§include switch var§ = null;
         var _loc17_:§521423101352310148123423632234§ = null;
         var _loc6_:Sprite = new DiscreteSprite();
         var _loc16_:Sprite = new DiscreteSprite();
         var _loc15_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         if((param1.preview as §include catch with§).data == null)
         {
            _loc13_ = new §while for set§();
            _loc16_.addChild(_loc13_);
            _loc13_.gotoAndStop(1);
            _loc13_.x = 200 - _loc13_.width >> 1;
            _loc13_.y = 130 - _loc13_.height >> 1;
            param1.preview.§5214236623236636123423632234§(this);
         }
         else
         {
            _loc3_ = new Bitmap(param1.preview.data);
            _loc3_.x = 200 - param1.preview.data.width >> 1;
            _loc3_.y = 18;
            _loc16_.addChild(_loc3_);
         }
         var _loc7_:Boolean = param1.rank > 0 || param1.showLockPremium;
         if(_loc7_)
         {
            this.e69677d7(param1,_loc16_);
            param1.installed = false;
         }
         else if(param1.garageElement && param1.mod != -1)
         {
            _loc4_ = new IconGarageMod(param1.mod);
            _loc16_.addChild(_loc4_);
            _loc4_.x = 195 - _loc4_.width;
            _loc4_.y = 8;
         }
         if(param1.type == ItemCategoryEnum.INVENTORY || param1.count > 1)
         {
            param1.installed = false;
            _loc8_ = new §5214231141231154123423632234§();
            _loc16_.addChild(_loc8_);
            _loc8_.x = 15;
            _loc8_.y = 100;
            _loc8_.autoSize = "none";
            _loc8_.§521423102842310297123423632234§ = 16;
            _loc8_.width = 100;
            _loc8_.height = 25;
            _loc8_.text = param1.count == 0 ? " " : "×" + String(param1.count);
         }
         if(!param1.garageElement && param1.crystalPrice > 0)
         {
            _loc9_ = new §5214231141231154123423632234§();
            _loc9_.text = §521423133302313343123423632234§.§get catch catch§(param1.crystalPrice,false);
            _loc9_.x = 181 - _loc9_.textWidth;
            _loc9_.y = 3;
            _loc10_ = new §if use implements§();
            _loc16_.addChild(_loc10_);
            _loc16_.addChild(_loc9_);
            _loc10_.x = 186;
            _loc10_.y = 6;
         }
         if(_loc7_)
         {
            if(param2)
            {
               _loc5_ = new GarageItemBackground(2);
            }
            else
            {
               _loc5_ = new GarageItemBackground(1);
            }
            _loc15_.color = 12632256;
            if(_loc9_)
            {
               _loc9_.color = 12632256;
            }
            if(_loc8_)
            {
               _loc8_.color = 12632256;
            }
         }
         else if(param1.garageElement || param1.type == ItemCategoryEnum.INVENTORY)
         {
            _loc15_.color = 11194762;
            if(_loc9_)
            {
               _loc9_.color = 11194762;
            }
            if(_loc8_)
            {
               _loc8_.color = 11194762;
            }
            if(param2)
            {
               _loc5_ = new GarageItemBackground(10);
            }
            else
            {
               _loc5_ = new GarageItemBackground(9);
            }
         }
         else
         {
            _loc15_.color = 5898034;
            if(_loc9_)
            {
               _loc9_.color = 5898034;
            }
            if(_loc8_)
            {
               _loc8_.color = 5898034;
            }
            if(param2)
            {
               _loc5_ = new GarageItemBackground(8);
            }
            else
            {
               _loc5_ = new GarageItemBackground(7);
            }
         }
         if(param1.installed)
         {
            _loc5_.mounted = true;
         }
         _loc15_.text = param1.name;
         _loc15_.y = 3;
         _loc15_.x = 3;
         _loc16_.addChildAt(_loc5_,0);
         _loc16_.addChild(_loc15_);
         if(param1.discount > 0 && (param1.rank <= 0 || param1.garageElement))
         {
            _loc11_ = §while var catch§.§5214238189238202123423632234§();
            _loc11_.y = _loc5_.height - _loc11_.height - 8;
            _loc11_.x = _loc5_.width - _loc11_.width - 2;
            _loc16_.addChild(_loc11_);
            _loc12_ = new §5214231141231154123423632234§();
            _loc12_.color = 16777215;
            _loc12_.align = "center";
            _loc12_.text = "-" + String(param1.discount) + "%";
            _loc12_.§521423102842310297123423632234§ = 13;
            _loc12_.x = int(_loc11_.x + _loc11_.width / 2 - _loc12_.textWidth / 2);
            _loc12_.y = _loc11_.y + 6;
            _loc16_.addChild(_loc12_);
            if(param1.timerDiscount != null)
            {
               _loc14_ = param1.timerDiscount;
               if(_loc14_.§521423133692313382123423632234§() > getTimer())
               {
                  _loc17_ = new §521423101352310148123423632234§();
                  _loc17_.color = 15258050;
                  _loc17_.§native var include§(param1.timerDiscount);
                  _loc17_.y = _loc11_.y + 18;
                  _loc17_.autoSize = "none";
                  _loc17_.align = "center";
                  _loc17_.width = _loc11_.width - 8;
                  _loc17_.x = int(_loc11_.x + _loc11_.width / 2 - _loc17_.width / 2);
                  _loc6_.addChild(_loc17_);
               }
               else
               {
                  param1.timerDiscount = null;
                  _loc12_.y += 5;
               }
            }
            else
            {
               _loc12_.y += 5;
            }
         }
         _loc6_.addChildAt(_loc16_,0);
         return _loc6_;
      }
      
      private function e1fc868c(param1:ListEvent) : void
      {
         var _loc2_:GarageListRendererData = null;
         if(this.§5214232748232761123423632234§ < 7)
         {
            _loc2_ = GarageListRendererData(param1.item);
            this.§include const static§ = 0;
            if(this.§true package do§ != _loc2_.id)
            {
               this.§true package do§ = _loc2_.id;
               this.list.selectedItem = _loc2_;
               this.list.scrollToSelected();
               dispatchEvent(new §52142345223465123423632234§("SelectPartsListItem"));
            }
            dispatchEvent(new §52142345223465123423632234§("PartsListItemClick"));
         }
         else
         {
            this.list.addEventListener("change",this.f13a6a7e);
         }
      }
      
      public function sort() : void
      {
         this.§5214236864236877123423632234§.sortOn(["appearanceTime","garageElement","rank","mod","showLockPremium","sort"],[2,2,16,2,16,16]);
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
      }
      
      public function getItemAt(param1:int) : §521423120252312038123423632234§
      {
         return GarageListRendererData(this.§5214236864236877123423632234§.getItemAt(param1)).id;
      }
      
      private function update(param1:§521423120252312038123423632234§, param2:String, param3:* = null, param4:Boolean = true) : void
      {
         var _loc5_:int = this.indexById(param1);
         if(_loc5_ != -1)
         {
            this.c1526113(_loc5_,param2,param3,param4);
         }
      }
      
      public function indexById(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:GarageListRendererData = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc2_ = GarageListRendererData(this.§5214236864236877123423632234§.getItemAt(_loc3_));
            if(_loc2_.id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function addItem(param1:GarageListRendererData) : void
      {
         param1.iconNormal = this.c8d0901(param1,false);
         param1.iconSelected = this.c8d0901(param1,true);
         this.§5214236864236877123423632234§.addItem(param1);
      }
      
      private function f5133bf6(param1:MouseEvent) : void
      {
         this.§class else§ = this.§521423112652311278123423632234§;
         this.§521423112652311278123423632234§ = param1.stageX;
         this.§default catch with§ = this.currentTime;
         this.currentTime = getTimer();
         var _loc2_:Number = this.§521423112652311278123423632234§ - this.§class else§;
         this.§5214232748232761123423632234§ += _loc2_ > 0 ? _loc2_ : -_loc2_;
         if(this.§5214232748232761123423632234§ > 7)
         {
            this.list.horizontalScrollPosition -= _loc2_;
         }
         param1.updateAfterEvent();
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      private function b1da7797(param1:ListEvent) : void
      {
         var _loc2_:GarageListRendererData = null;
         if(this.§5214232748232761123423632234§ < 7)
         {
            _loc2_ = GarageListRendererData(param1.item);
            this.§include const static§ = 0;
            if(this.§true package do§ != _loc2_.id)
            {
               this.§true package do§ = _loc2_.id;
               this.list.selectedItem = _loc2_;
               this.list.scrollToSelected();
            }
            dispatchEvent(new §52142345223465123423632234§("PartsListItemDoubleClick"));
         }
         else
         {
            this.list.addEventListener("change",this.f13a6a7e);
         }
      }
      
      private function e69677d7(param1:GarageListRendererData, param2:Sprite) : void
      {
         if(param1.rank > 0)
         {
            param2.addChild(this.b73f2cd8(param1));
         }
         else
         {
            param2.addChild(this.b4320062());
         }
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         this.updatePreview(param1 as §include catch with§);
      }
      
      public function destroy() : void
      {
         removeDisplayObject(this.list);
         this.f26c158();
         this.§5214236864236877123423632234§.removeAll();
         this.list.removeAll();
         this.list = null;
         this.§5214236864236877123423632234§ = null;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = Math.ceil(param1);
         this.list.width = this._width;
      }
      
      public function updateCost(param1:§521423120252312038123423632234§, param2:int) : void
      {
         this.update(param1,"crystalPrice",param2);
      }
      
      public function unselect() : void
      {
         this.§true package do§ = null;
         this.list.selectedItem = null;
      }
      
      private function b73f2cd8(param1:GarageListRendererData) : §include implements§
      {
         var _loc2_:§include implements§ = new §521423120332312046123423632234§();
         if(param1.showLockPremium)
         {
            _loc2_.§native for import§(param1.rank);
            _loc2_.x = 118;
            _loc2_.y = 58;
         }
         else
         {
            _loc2_.§case use catch§(param1.rank);
            _loc2_.x = 133;
            _loc2_.y = 63;
         }
         return _loc2_;
      }
      
      private function init() : void
      {
         this.§5214236864236877123423632234§ = new DataProvider();
         this.list = new TileList();
         this.list.dataProvider = this.§5214236864236877123423632234§;
         this.list.rowCount = 1;
         this.list.rowHeight = 130;
         this.list.columnWidth = 203;
         this.list.setStyle("cellRenderer",GarageListRenderer);
         this.list.direction = "horizontal";
         this.list.focusEnabled = false;
         this.list.horizontalScrollBar.focusEnabled = false;
         addChild(this.list);
         addEventListener("addedToStage",this.addListeners);
         addEventListener("removedFromStage",this.removeListeners);
         ScrollStyleUtils.setGreenStyle(this.list);
      }
      
      public function updateCount(param1:§521423120252312038123423632234§, param2:int) : void
      {
         this.update(param1,"count",param2);
      }
      
      public function deleteItem(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:int = this.indexById(param1);
         var _loc3_:Object = this.§5214236864236877123423632234§.getItemAt(_loc2_);
         if(this.list.selectedIndex == _loc2_)
         {
            this.§true package do§ = null;
            this.list.selectedItem = null;
         }
         this.§5214236864236877123423632234§.removeItem(_loc3_);
      }
      
      private function f42d1996(param1:Event) : void
      {
         var _loc5_:Sprite = null;
         var _loc3_:Sprite = null;
         var _loc2_:ScrollBar = this.list.horizontalScrollBar;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            _loc5_ = Sprite(_loc2_.getChildAt(_loc4_));
            if(_loc5_.hitArea != null)
            {
               _loc3_ = _loc5_.hitArea;
               _loc3_.graphics.clear();
            }
            else
            {
               _loc3_ = new Sprite();
               _loc3_.mouseEnabled = false;
               _loc5_.hitArea = _loc3_;
               this.list.addChild(_loc3_);
            }
            _loc3_.graphics.beginFill(0,0);
            if(_loc5_ is LabelButton)
            {
               _loc3_.graphics.drawRect(_loc5_.y - 14,_loc2_.y - 3,_loc5_.height + 28,_loc5_.width + 3);
            }
            else
            {
               _loc3_.graphics.drawRect(_loc5_.y,_loc2_.y - 3,_loc5_.height,_loc5_.width + 3);
            }
            _loc3_.graphics.endFill();
            _loc4_++;
         }
      }
      
      public function itemsCount() : int
      {
         return this.§5214236864236877123423632234§.length;
      }
      
      public function updateShowLockPremium(param1:§521423120252312038123423632234§, param2:Boolean) : void
      {
         this.update(param1,"showLockPremium",param2);
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = Math.ceil(param1);
         this.list.height = this._height;
      }
      
      public function updateDiscountWithTimer(param1:§521423120252312038123423632234§, param2:int, param3:§include switch var§) : void
      {
         this.update(param1,"discount",param2,false);
         this.update(param1,"timerDiscount",param3);
      }
      
      private function b4320062() : Bitmap
      {
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.x = 118;
         _loc1_.y = 58;
         return _loc1_;
      }
      
      public function get selectedItem() : §521423120252312038123423632234§
      {
         return this.§true package do§;
      }
      
      private function f13a6a7e(param1:Event) : void
      {
         this.list.selectedIndex = this.§null package continue§;
         this.list.removeEventListener("change",this.f13a6a7e);
      }
      
      public function unmount(param1:§521423120252312038123423632234§) : void
      {
         this.update(param1,"installed",false);
      }
      
      private function removeListeners(param1:Event) : void
      {
         this.list.horizontalScrollBar.removeEventListener("enterFrame",this.f42d1996);
         this.list.removeEventListener("itemClick",this.e1fc868c);
         this.list.removeEventListener("itemDoubleClick",this.b1da7797);
         removeEventListener("enterFrame",this.e1d1903);
         removeEventListener("mouseWheel",this.b53487a0);
         removeEventListener("mouseDown",this.onMouseDown);
         stage.removeEventListener("mouseUp",this.onMouseUp);
         stage.removeEventListener("mouseMove",this.f5133bf6);
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.§include const static§ = 0;
         var _loc2_:Rectangle = this.list.horizontalScrollBar.getBounds(stage);
         _loc2_.top -= 3;
         if(!_loc2_.contains(param1.stageX,param1.stageY))
         {
            this.§5214232748232761123423632234§ = 0;
            this.§class else§ = this.§521423112652311278123423632234§ = param1.stageX;
            this.currentTime = this.§default catch with§ = getTimer();
            this.§null package continue§ = this.list.selectedIndex;
            stage.addEventListener("mouseUp",this.onMouseUp);
            stage.addEventListener("mouseMove",this.f5133bf6);
         }
      }
      
      public function updateDiscountAndCost(param1:§521423120252312038123423632234§, param2:int, param3:§include switch var§, param4:int) : void
      {
         this.update(param1,"discount",param2,false);
         this.update(param1,"timerDiscount",param3,false);
         this.updateCost(param1,param4);
      }
      
      private function addListeners(param1:Event) : void
      {
         this.list.horizontalScrollBar.addEventListener("enterFrame",this.f42d1996);
         this.list.addEventListener("itemClick",this.e1fc868c);
         this.list.addEventListener("itemDoubleClick",this.b1da7797);
         addEventListener("mouseWheel",this.b53487a0);
         addEventListener("mouseDown",this.onMouseDown);
      }
      
      private function f26c158() : void
      {
         var _loc1_:GarageListRendererData = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5214236864236877123423632234§.length)
         {
            _loc1_ = GarageListRendererData(this.§5214236864236877123423632234§.getItemAt(_loc2_));
            _loc1_.preview.§super switch set§(this);
            _loc2_++;
         }
      }
   }
}

