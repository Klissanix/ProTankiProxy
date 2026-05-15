package §52142358223595123423632234§
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §521423107782310791123423632234§.IconGarageMod;
   import §521423107782310791123423632234§.§while for set§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214236602236615123423632234§.§while var catch§;
   import §5214236800236813123423632234§.§else const if§;
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
   import flash.display.BitmapData;
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
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.disposeBitmapsData;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.ScrollStyleUtils;
   
   public class PartsList extends Sprite implements §5214238033238046123423632234§, §else const if§
   {
      
      private static const §in finally catch§:Number = 70;
      
      private static const §package use implements§:Number = 7;
      
      private static const §for use throw§:Number = 3;
      
      private static const §5214231135231148123423632234§:int = 118;
      
      private static const §false var return§:int = 58;
      
      private static const §native switch extends§:Bitmap = §while var catch§.§5214238189238202123423632234§();
      
      private var list:TileList;
      
      private var §5214236864236877123423632234§:DataProvider;
      
      private var d4b54530:Array = [ItemCategoryEnum.WEAPON,ItemCategoryEnum.ARMOR,ItemCategoryEnum.COLOR,ItemCategoryEnum.PLUGIN,ItemCategoryEnum.INVENTORY,ItemCategoryEnum.KIT];
      
      private var §true package do§:§521423120252312038123423632234§ = null;
      
      private var §class else§:Number;
      
      private var §521423112652311278123423632234§:Number;
      
      private var §5214232748232761123423632234§:Number;
      
      private var §null package continue§:int;
      
      private var §default catch with§:int;
      
      private var currentTime:int;
      
      private var §include const static§:Number = 0;
      
      private var §try switch dynamic§:Array;
      
      private var _width:int;
      
      private var _height:int;
      
      public function PartsList()
      {
         super();
         this.§try switch dynamic§ = [];
         this.§5214236864236877123423632234§ = new DataProvider();
         this.list = new TileList();
         this.list.dataProvider = this.§5214236864236877123423632234§;
         this.list.rowCount = 1;
         this.list.rowHeight = 130;
         this.list.columnWidth = 203;
         this.list.setStyle("cellRenderer",PartsListRenderer);
         this.list.direction = "horizontal";
         this.list.focusEnabled = false;
         this.list.horizontalScrollBar.focusEnabled = false;
         addChild(this.list);
         addEventListener("addedToStage",this.c6faf260);
         addEventListener("removedFromStage",this.e73f1135);
         ScrollStyleUtils.setGreenStyle(this.list);
      }
      
      public function itemsCount() : int
      {
         return this.§5214236864236877123423632234§.length;
      }
      
      public function getItemAt(param1:int) : §521423120252312038123423632234§
      {
         return this.§5214236864236877123423632234§.getItemAt(param1).dat.id;
      }
      
      public function destroy() : void
      {
         disposeBitmapsData(this.§try switch dynamic§);
         this.§try switch dynamic§ = null;
         removeDisplayObject(this.list);
         this.f26c158();
         this.f1caae84();
         this.list.removeAll();
         this.list = null;
         this.§5214236864236877123423632234§ = null;
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = Math.ceil(param1);
         this.list.height = this._height;
      }
      
      public function scrollTo(param1:§521423120252312038123423632234§) : void
      {
         this.§include const static§ = 0;
         var _loc2_:int = this.indexById(param1);
         this.list.scrollToIndex(_loc2_);
      }
      
      public function onCompleteBefore(param1:§include switch var§, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§5214236864236877123423632234§.length)
         {
            _loc3_ = this.§5214236864236877123423632234§.getItemAt(_loc4_).dat;
            if(_loc3_.timer == param1)
            {
               this.c1526113(_loc4_,"timer",null,false);
            }
            _loc4_++;
         }
      }
      
      public function updateCost(param1:§521423120252312038123423632234§, param2:int) : void
      {
         this.update(param1,"crystalPrice",param2);
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
      
      public function updateCount(param1:§521423120252312038123423632234§, param2:int) : void
      {
         this.update(param1,"count",param2);
      }
      
      public function updatePreview(param1:§include catch with§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc2_ = this.§5214236864236877123423632234§.getItemAt(_loc3_);
            var _loc4_:§include catch with§ = _loc2_.dat.preview as §include catch with§;
            var _loc5_:§include catch with§;
            if(_loc4_.§5214239618239631123423632234§.id == (_loc5_ = param1).§5214239618239631123423632234§.id)
            {
               this.update(_loc2_.dat.id,"preview",param1 as §include catch with§);
            }
            _loc3_++;
         }
      }
      
      private function c1526113(param1:int, param2:String, param3:*, param4:Boolean) : void
      {
         var _loc6_:Object = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         var _loc5_:Object = this.§5214236864236877123423632234§.getItemAt(param1);
         _loc6_ = _loc5_.dat;
         _loc6_[param2] = param3;
         if(param4)
         {
            _loc7_ = this.myIcon(_loc6_,false);
            _loc8_ = this.myIcon(_loc6_,true);
            _loc5_.dat = _loc6_;
            _loc5_.iconNormal = _loc7_;
            _loc5_.iconSelected = _loc8_;
            this.§5214236864236877123423632234§.replaceItemAt(_loc5_,param1);
            this.§5214236864236877123423632234§.sortOn(["rank","sort"],[16,16]);
            this.§5214236864236877123423632234§.invalidateItemAt(param1);
         }
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         this.updatePreview(param1 as §include catch with§);
      }
      
      private function e1fc868c(param1:ListEvent) : void
      {
         var _loc2_:Object = null;
         if(this.§5214232748232761123423632234§ < 7)
         {
            _loc2_ = param1.item;
            this.§include const static§ = 0;
            if(this.§true package do§ != _loc2_.dat.id)
            {
               this.§true package do§ = _loc2_.dat.id;
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
      
      private function b73f2cd8(param1:Object) : §include implements§
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
      
      public function get columnWidth() : int
      {
         return Math.ceil(this.list.columnWidth);
      }
      
      public function removeDiscountItem(param1:§521423120252312038123423632234§) : void
      {
         this.update(param1,"saleImage",null);
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
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
      
      override public function set width(param1:Number) : void
      {
         this._width = Math.ceil(param1);
         this.list.width = this._width;
      }
      
      public function updateShowLockPremium(param1:§521423120252312038123423632234§, param2:Boolean) : void
      {
         this.update(param1,"showLockPremium",param2);
      }
      
      private function f5133bf6(param1:MouseEvent) : void
      {
         this.§class else§ = this.§521423112652311278123423632234§;
         this.§521423112652311278123423632234§ = param1.stageX;
         this.§default catch with§ = this.currentTime;
         this.currentTime = getTimer();
         var _loc2_:Number = this.§521423112652311278123423632234§ - this.§class else§;
         this.§5214232748232761123423632234§ += Math.abs(_loc2_);
         if(this.§5214232748232761123423632234§ > 7)
         {
            this.list.horizontalScrollPosition -= _loc2_;
         }
         param1.updateAfterEvent();
      }
      
      private function e69677d7(param1:Object, param2:Sprite) : void
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
      
      public function selectByIndex(param1:uint) : void
      {
         var _loc2_:Object = null;
         this.§include const static§ = 0;
         if(this.list.selectedIndex != param1)
         {
            _loc2_ = (this.§5214236864236877123423632234§.getItemAt(param1) as Object).dat;
            this.list.selectedIndex = param1;
            this.§true package do§ = _loc2_.id;
            dispatchEvent(new §52142345223465123423632234§("SelectPartsListItem"));
         }
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      private function myIcon(param1:Object, param2:Boolean) : DisplayObject
      {
         var _loc16_:BitmapData = null;
         var _loc17_:GarageItemBackground = null;
         var _loc14_:String = null;
         var _loc15_:Bitmap = null;
         var _loc10_:IconGarageMod = null;
         var _loc12_:§include switch var§ = null;
         var _loc9_:§521423101352310148123423632234§ = null;
         var _loc4_:Sprite = new DiscreteSprite();
         var _loc3_:Sprite = new DiscreteSprite();
         var _loc8_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         var _loc7_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         var _loc6_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         var _loc5_:§if use implements§ = new §if use implements§();
         var _loc13_:§while for set§ = new §while for set§();
         if((param1.preview as §include catch with§).data == null)
         {
            _loc3_.addChild(_loc13_);
            _loc13_.gotoAndStop(1);
            _loc13_.x = 200 - _loc13_.width >> 1;
            _loc13_.y = 130 - _loc13_.height >> 1;
            (param1.preview as §include catch with§).§5214236623236636123423632234§(this);
         }
         else
         {
            _loc15_ = new Bitmap((param1.preview as §include catch with§).data);
            _loc15_.x = 19;
            _loc15_.y = 18;
            _loc3_.addChild(_loc15_);
         }
         if(param1.rank > 0 || Boolean(param1.showLockPremium))
         {
            if(param1.type != ItemCategoryEnum.PLUGIN)
            {
               this.e69677d7(param1,_loc3_);
            }
            _loc14_ = "OFF";
            param1.installed = false;
            _loc6_.color = _loc7_.color = _loc8_.color = 12632256;
         }
         else
         {
            _loc6_.color = _loc7_.color = _loc8_.color = 5898034;
            if(Boolean(param1.garageElement) && param1.mod != -1)
            {
               _loc10_ = new IconGarageMod(param1.mod);
               _loc3_.addChild(_loc10_);
               _loc10_.x = 159;
               _loc10_.y = 7;
            }
            switch(param1.type)
            {
               case ItemCategoryEnum.WEAPON:
                  if(Boolean(param1.garageElement) && Boolean(param1.installed))
                  {
                     _loc8_.color = 8693863;
                  }
                  _loc14_ = "GUN";
                  break;
               case ItemCategoryEnum.ARMOR:
                  if(Boolean(param1.garageElement) && Boolean(param1.installed))
                  {
                     _loc8_.color = 9411748;
                  }
                  _loc14_ = "SHIELD";
                  break;
               case ItemCategoryEnum.COLOR:
                  _loc14_ = "COLOR";
                  if(param1.installed)
                  {
                     _loc8_.color = 11049390;
                  }
                  break;
               case ItemCategoryEnum.INVENTORY:
                  _loc14_ = "ENGINE";
                  param1.installed = false;
                  _loc3_.addChild(_loc6_);
                  _loc6_.x = 15;
                  _loc6_.y = 100;
                  _loc6_.autoSize = "none";
                  _loc6_.§521423102842310297123423632234§ = 16;
                  _loc6_.align = "left";
                  _loc6_.width = 100;
                  _loc6_.height = 25;
                  _loc6_.text = param1.count == 0 ? " " : "×" + String(param1.count);
                  break;
               default:
                  _loc14_ = "PLUGIN";
            }
         }
         _loc14_ += (param1.installed ? "_INSTALLED" : "_NORMAL") + (param2 ? "_SELECTED" : "");
         _loc17_ = new GarageItemBackground(GarageItemBackground.idByName(_loc14_));
         _loc8_.text = param1.name;
         if(!param1.garageElement || param1.type == ItemCategoryEnum.INVENTORY)
         {
            if(param1.crystalPrice > 0)
            {
               _loc7_.text = §521423133302313343123423632234§.§get catch catch§(param1.crystalPrice,false);
               _loc7_.x = 181 - _loc7_.textWidth;
               _loc7_.y = 2;
               _loc3_.addChild(_loc5_);
               _loc3_.addChild(_loc7_);
               _loc5_.x = 186;
               _loc5_.y = 6;
            }
         }
         _loc8_.y = 2;
         _loc8_.x = 3;
         _loc3_.addChildAt(_loc17_,0);
         _loc3_.addChild(_loc8_);
         var _loc11_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         if(param1.discount > 0 && (param1.rank <= 0 || param1.garageElement))
         {
            §native switch extends§.y = _loc17_.height - §native switch extends§.height - 8;
            §native switch extends§.x = _loc17_.width - §native switch extends§.width - 2;
            _loc3_.addChild(§native switch extends§);
            _loc11_.color = 16777215;
            _loc11_.align = "center";
            _loc11_.text = "-" + String(param1.discount) + "%";
            _loc11_.§521423102842310297123423632234§ = 13;
            _loc11_.x = int(§native switch extends§.x + §native switch extends§.width / 2 - _loc11_.textWidth / 2);
            _loc11_.y = §native switch extends§.y + 6;
            _loc3_.addChild(_loc11_);
            if(param1.timerDiscount != null)
            {
               _loc12_ = param1.timerDiscount;
               if(_loc12_.§521423133692313382123423632234§() > getTimer())
               {
                  _loc9_ = new §521423101352310148123423632234§();
                  _loc9_.color = 15258050;
                  _loc9_.§native var include§(param1.timerDiscount);
                  _loc9_.y = §native switch extends§.y + 18;
                  _loc9_.autoSize = "none";
                  _loc9_.align = "center";
                  _loc9_.width = §native switch extends§.width - 8;
                  _loc9_.x = int(§native switch extends§.x + §native switch extends§.width / 2 - _loc9_.width / 2);
                  _loc4_.addChild(_loc9_);
               }
               else
               {
                  param1.timerDiscount = null;
                  _loc11_.y += 5;
               }
            }
            else
            {
               _loc11_.y += 5;
            }
         }
         _loc16_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         this.§try switch dynamic§.push(_loc16_);
         _loc16_.draw(_loc3_);
         _loc4_.addChildAt(new Bitmap(_loc16_),0);
         if(param1.timer != null)
         {
            if(param1.isUpgradingInAvailableItemsAlert)
            {
               _loc9_ = new §521423101352310148123423632234§();
               _loc9_.§native var include§(param1.timer);
               _loc9_.y = _loc17_.height - _loc9_.textHeight - 7;
               _loc9_.width = _loc17_.width - 7;
               _loc9_.autoSize = "none";
               _loc9_.align = "right";
               _loc9_.x = 0;
               _loc4_.addChild(_loc9_);
            }
         }
         return _loc4_;
      }
      
      private function b4320062() : Bitmap
      {
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.x = 118;
         _loc1_.y = 58;
         return _loc1_;
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
      
      public function mount(param1:§521423120252312038123423632234§) : void
      {
         this.update(param1,"installed",true);
      }
      
      public function addItem(param1:§521423120252312038123423632234§, param2:String, param3:ItemCategoryEnum, param4:int, param5:int, param6:int, param7:Boolean, param8:Boolean, param9:int, param10:§include catch with§, param11:int = 0, param12:§include switch var§ = null, param13:int = -1, param14:§include switch var§ = null, param15:Boolean = false) : void
      {
         var _loc16_:Object = null;
         var _loc18_:DisplayObject = null;
         var _loc17_:DisplayObject = null;
         _loc16_ = {};
         _loc16_.id = param1;
         _loc16_.name = param2;
         _loc16_.type = param3;
         _loc16_.d4b54530 = this.d4b54530[param3];
         _loc16_.mod = param13;
         _loc16_.crystalPrice = param5;
         _loc16_.rank = param6 == 0 && !param7 ? -1 : param6;
         _loc16_.showLockPremium = param7;
         _loc16_.installed = false;
         _loc16_.garageElement = param8;
         _loc16_.count = param9;
         _loc16_.preview = param10;
         _loc16_.sort = param4;
         _loc16_.discount = param11;
         _loc16_.timer = param12;
         _loc16_.timerDiscount = param14;
         _loc16_.isUpgradingInAvailableItemsAlert = param15;
         if(param12 != null && param15)
         {
            _loc16_.timer.addListener(§else const if§,this);
         }
         _loc18_ = this.myIcon(_loc16_,false);
         _loc17_ = this.myIcon(_loc16_,true);
         this.§5214236864236877123423632234§.addItem({
            "iconNormal":_loc18_,
            "iconSelected":_loc17_,
            "dat":_loc16_,
            "rank":_loc16_.rank,
            "type":param3,
            "typesort":_loc16_.d4b54530,
            "sort":param4
         });
         this.§5214236864236877123423632234§.sortOn(["rank","sort"],[16,16]);
      }
      
      public function unmount(param1:§521423120252312038123423632234§) : void
      {
         this.update(param1,"installed",false);
      }
      
      public function updateDiscountAndCost(param1:§521423120252312038123423632234§, param2:int, param3:§include switch var§, param4:int) : void
      {
         this.update(param1,"discount",param2,false);
         this.update(param1,"timerDiscount",param3,false);
         this.updateCost(param1,param4);
      }
      
      public function unselect() : void
      {
         this.§true package do§ = null;
         this.list.selectedItem = null;
      }
      
      public function get selectedItem() : §521423120252312038123423632234§
      {
         return this.§true package do§;
      }
      
      public function updateDiscountWithTimer(param1:§521423120252312038123423632234§, param2:int, param3:§include switch var§) : void
      {
         this.update(param1,"discount",param2,false);
         this.update(param1,"timerDiscount",param3);
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
      }
      
      private function f1caae84() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§include switch var§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc1_ = this.§5214236864236877123423632234§.getItemAt(_loc3_).dat;
            if(_loc1_.timer != null)
            {
               _loc2_ = _loc1_.timer;
               _loc2_.§return use var§(§else const if§,this);
            }
            _loc3_++;
         }
         this.§5214236864236877123423632234§.removeAll();
      }
      
      private function e73f1135(param1:Event) : void
      {
         this.list.horizontalScrollBar.removeEventListener("enterFrame",this.f42d1996);
         this.list.removeEventListener("itemClick",this.e1fc868c);
         removeEventListener("enterFrame",this.e1d1903);
         removeEventListener("mouseWheel",this.b53487a0);
         removeEventListener("mouseDown",this.onMouseDown);
         stage.removeEventListener("mouseUp",this.onMouseUp);
         stage.removeEventListener("mouseMove",this.f5133bf6);
      }
      
      private function update(param1:§521423120252312038123423632234§, param2:String, param3:* = null, param4:Boolean = true) : void
      {
         var _loc5_:int = this.indexById(param1);
         this.c1526113(_loc5_,param2,param3,param4);
      }
      
      private function c6faf260(param1:Event) : void
      {
         this.list.horizontalScrollBar.addEventListener("enterFrame",this.f42d1996);
         this.list.addEventListener("itemClick",this.e1fc868c);
         addEventListener("mouseWheel",this.b53487a0);
         addEventListener("mouseDown",this.onMouseDown);
      }
      
      private function b53487a0(param1:MouseEvent) : void
      {
         this.§include const static§ = 0;
         this.list.horizontalScrollPosition -= param1.delta * (Capabilities.os.search("Linux") != -1 ? 50 : 10);
      }
      
      private function f42d1996(param1:Event) : void
      {
         var _loc2_:Sprite = null;
         var _loc4_:Sprite = null;
         _loc2_ = null;
         _loc4_ = null;
         var _loc5_:ScrollBar = this.list.horizontalScrollBar;
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_.numChildren)
         {
            _loc2_ = Sprite(_loc5_.getChildAt(_loc3_));
            if(_loc2_.hitArea != null)
            {
               _loc4_ = _loc2_.hitArea;
               _loc4_.graphics.clear();
            }
            else
            {
               _loc4_ = new Sprite();
               _loc4_.mouseEnabled = false;
               _loc2_.hitArea = _loc4_;
               this.list.addChild(_loc4_);
            }
            _loc4_.graphics.beginFill(0,0);
            if(_loc2_ is LabelButton)
            {
               _loc4_.graphics.drawRect(_loc2_.y - 14,_loc5_.y - 3,_loc2_.height + 28,_loc2_.width + 3);
            }
            else
            {
               _loc4_.graphics.drawRect(_loc2_.y,_loc5_.y - 3,_loc2_.height,_loc2_.width + 3);
            }
            _loc4_.graphics.endFill();
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
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      private function f13a6a7e(param1:Event) : void
      {
         this.list.selectedIndex = this.§null package continue§;
         this.list.removeEventListener("change",this.f13a6a7e);
      }
      
      private function e1d1903(param1:Event) : void
      {
         this.§default catch with§ = this.currentTime;
         this.currentTime = getTimer();
         var _loc2_:Number = (this.currentTime - this.§default catch with§) / 1000;
         this.list.horizontalScrollPosition -= this.§include const static§ * _loc2_;
         var _loc3_:Number = this.list.horizontalScrollPosition;
         var _loc4_:Number = this.list.maxHorizontalScrollPosition;
         if((§include const static§ > 0 ? §include const static§ : -§include const static§) > 70 && 0 < _loc3_ && _loc3_ < _loc4_)
         {
            this.§include const static§ *= Math.exp(-1.5 * _loc2_);
         }
         else
         {
            this.§include const static§ = 0;
            removeEventListener("enterFrame",this.e1d1903);
         }
      }
      
      public function indexById(param1:§521423120252312038123423632234§) : int
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc2_ = this.§5214236864236877123423632234§.getItemAt(_loc3_);
            if(_loc2_.dat.id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function f26c158() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§include catch with§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214236864236877123423632234§.length)
         {
            _loc1_ = this.§5214236864236877123423632234§.getItemAt(_loc3_);
            _loc2_ = _loc1_.dat.preview as §include catch with§;
            _loc2_.§super switch set§(this);
            _loc3_++;
         }
      }
   }
}

