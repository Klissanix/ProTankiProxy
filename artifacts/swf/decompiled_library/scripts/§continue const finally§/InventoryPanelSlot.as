package §continue const finally§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214233785233798123423632234§.§do set break§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   
   public class InventoryPanelSlot
   {
      
      private static const §5214231846231859123423632234§:int = 10;
      
      private static const §5214232166232179123423632234§:int = 1;
      
      private static const §521423104242310437123423632234§:int = 2;
      
      private static const §521423104762310489123423632234§:int = 3;
      
      private var §import for return§:int;
      
      private var §5214234660234673123423632234§:§5214238529238542123423632234§;
      
      private var item:InventoryItem;
      
      private var §521423110492311062123423632234§:DisplayObjectContainer;
      
      private var §5214233624233637123423632234§:CooldownIndicator;
      
      private var §521423124172312430123423632234§:§5214238529238542123423632234§;
      
      private var §class set case§:int;
      
      private var §5214237175237188123423632234§:§do set break§ = new §do set break§(7);
      
      private var §throw catch false§:int = 3;
      
      private var colorTransform:ColorTransform = new ColorTransform();
      
      private var §true use final§:int;
      
      private var §implements set use§:Number = 1;
      
      public function InventoryPanelSlot(param1:int)
      {
         super();
         this.§import for return§ = param1;
         §521423110492311062123423632234§ = new Sprite();
         var _loc2_:String = param1.toString();
         §521423110492311062123423632234§.name = _loc2_;
         §521423110492311062123423632234§.addChild(§5214237175237188123423632234§);
         §5214234660234673123423632234§ = new §5214238529238542123423632234§();
         §5214234660234673123423632234§.§521423102842310297123423632234§ = 10;
         §5214234660234673123423632234§.text = _loc2_;
         §5214234660234673123423632234§.x = 3;
         §5214234660234673123423632234§.y = 1;
         §521423110492311062123423632234§.addChild(§5214234660234673123423632234§);
         setLockMask(1,true);
      }
      
      private function initItemSlot() : void
      {
         if(§521423110492311062123423632234§.contains(§5214237175237188123423632234§))
         {
            §521423110492311062123423632234§.removeChild(§5214237175237188123423632234§);
         }
         var _loc1_:§do set break§ = item.getIcon();
         §521423110492311062123423632234§.addChildAt(_loc1_,0);
         if(§5214233624233637123423632234§ == null)
         {
            §5214233624233637123423632234§ = new CooldownIndicator(_loc1_.width - 4,8);
            §5214233624233637123423632234§.x = 2;
            §5214233624233637123423632234§.y = 2;
            §521423110492311062123423632234§.addChild(§5214233624233637123423632234§);
         }
         §5214233624233637123423632234§.visible = false;
         if(§521423124172312430123423632234§ == null)
         {
            §521423124172312430123423632234§ = new §5214238529238542123423632234§();
            §521423124172312430123423632234§.§521423102842310297123423632234§ = 10;
            §521423110492311062123423632234§.addChild(§521423124172312430123423632234§);
         }
      }
      
      private function c6782e04(param1:uint) : void
      {
         colorTransform.redOffset = param1;
         colorTransform.greenOffset = param1;
         colorTransform.blueOffset = param1;
         colorTransform.alphaOffset = param1;
         §521423110492311062123423632234§.transform.colorTransform = colorTransform;
      }
      
      public function setLockMask(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            §class set case§ |= param1;
         }
         else
         {
            §class set case§ &= ~param1;
         }
      }
      
      public function startFlash(param1:int) : void
      {
         §throw catch false§ = 1;
         §true use final§ = param1;
      }
      
      public function isLocked() : Boolean
      {
         return §class set case§ != 0;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(item == null)
         {
            return;
         }
         if(isLocked())
         {
            §5214233624233637123423632234§.visible = true;
            §5214233624233637123423632234§.draw(0);
            §implements set use§ = 1;
         }
         else
         {
            _loc2_ = item == null ? 0 : item.getCooldownStatus(param1);
            if(_loc2_ == 1)
            {
               §5214233624233637123423632234§.visible = false;
               if(§implements set use§ < 1)
               {
                  startFlash(param1);
               }
               updateFlash(param1);
            }
            else
            {
               f6f926e6();
               §5214233624233637123423632234§.visible = true;
               §5214233624233637123423632234§.draw(_loc2_);
            }
            §implements set use§ = _loc2_;
         }
      }
      
      public function updateCounter() : void
      {
         var _loc2_:§do set break§ = null;
         if(item == null)
         {
            return;
         }
         var _loc1_:int = item.count;
         if(_loc1_ > 0)
         {
            §521423124172312430123423632234§.text = _loc1_.toString();
            §521423124172312430123423632234§.x = item.getIcon().width - §521423124172312430123423632234§.width - 3;
            §521423124172312430123423632234§.y = item.getIcon().height - §521423124172312430123423632234§.height - 1;
            §521423124172312430123423632234§.visible = true;
         }
         else if(_loc1_ == -1)
         {
            §521423124172312430123423632234§.visible = false;
         }
         else
         {
            if(!this.§521423110492311062123423632234§.contains(this.§5214237175237188123423632234§))
            {
               if(this.item != null)
               {
                  _loc2_ = this.item.getIcon();
                  if(this.§521423110492311062123423632234§.contains(_loc2_))
                  {
                     this.§521423110492311062123423632234§.removeChild(_loc2_);
                  }
               }
               this.§521423110492311062123423632234§.addChildAt(this.§5214237175237188123423632234§,0);
            }
            if(this.§521423124172312430123423632234§ != null)
            {
               this.§521423124172312430123423632234§.visible = false;
            }
         }
      }
      
      public function getCanvas() : DisplayObject
      {
         return §521423110492311062123423632234§;
      }
      
      private function f6f926e6() : void
      {
         if(§throw catch false§ != 3)
         {
            §throw catch false§ = 3;
            c6782e04(0);
         }
      }
      
      public function updateFlash(param1:int) : void
      {
         var _loc4_:uint = 255;
         var _loc3_:uint = 100;
         var _loc2_:uint = 300;
         switch(§throw catch false§ - 1)
         {
            case 0:
               if(param1 < §true use final§ + _loc3_)
               {
                  c6782e04(_loc4_ * (param1 - §true use final§) / _loc3_);
                  break;
               }
               c6782e04(_loc4_);
               §true use final§ += _loc3_ + _loc2_;
               §throw catch false§ = 2;
               break;
            case 1:
               if(param1 < §true use final§)
               {
                  c6782e04(_loc4_ * (§true use final§ - param1) / _loc2_);
                  break;
               }
               f6f926e6();
         }
      }
      
      public function updateSlot() : void
      {
         this.initItemSlot();
      }
      
      public function getItem() : InventoryItem
      {
         return item;
      }
      
      public function setItem(param1:InventoryItem) : void
      {
         var _loc2_:§do set break§ = null;
         if(this.item == param1)
         {
            return;
         }
         if(this.item != null)
         {
            _loc2_ = this.item.getIcon();
            if(§521423110492311062123423632234§.contains(_loc2_))
            {
               §521423110492311062123423632234§.removeChild(this.item.getIcon());
            }
         }
         this.item = param1;
         if(param1 != null)
         {
            initItemSlot();
         }
         updateCounter();
      }
   }
}

