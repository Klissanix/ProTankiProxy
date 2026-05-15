package §5214235891235904123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import §do package if§.ItemViewCategoryEnum;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class CategoryButtonsList extends DiscreteSprite
   {
      
      private static const §5214238919238932123423632234§:int = 5;
      
      private var §5214237790237803123423632234§:ItemViewCategoryEnum;
      
      private var §5214238853238866123423632234§:Vector.<ItemCategoryButton> = new Vector.<ItemCategoryButton>();
      
      private var §with package switch§:Dictionary = new Dictionary();
      
      private var §521423139012313914123423632234§:int;
      
      private var §5214234025234038123423632234§:int;
      
      private var §extends use return§:int = 100;
      
      public function CategoryButtonsList()
      {
         super();
         this.b5e6ba61(ItemViewCategoryEnum.WEAPON);
         this.b5e6ba61(ItemViewCategoryEnum.ARMOR);
         this.b5e6ba61(ItemViewCategoryEnum.PAINT);
         this.b5e6ba61(ItemViewCategoryEnum.INVENTORY);
         this.b5e6ba61(ItemViewCategoryEnum.KIT);
         this.b5e6ba61(ItemViewCategoryEnum.SPECIAL);
         this.b5e6ba61(ItemViewCategoryEnum.GIVEN_PRESENTS);
         var _loc1_:ItemCategoryButton = this.§5214238853238866123423632234§[0];
         _loc1_.enabled = false;
         this.§5214237790237803123423632234§ = _loc1_.getCategory();
         this.calculateWidth();
      }
      
      public function setCategoryButtonVisibility(param1:ItemViewCategoryEnum, param2:Boolean) : void
      {
         this.§with package switch§[param1].visible = param2;
         this.calculateWidth();
      }
      
      private function calculateWidth() : void
      {
         this.§521423139012313914123423632234§ = this.§5214234025234038123423632234§ = 0;
         for each(var _loc1_ in this.§5214238853238866123423632234§)
         {
            if(_loc1_.visible)
            {
               _loc1_.setTextState();
               this.§521423139012313914123423632234§ = Math.max(this.§521423139012313914123423632234§,_loc1_.width);
               _loc1_.setIconTextState();
               this.§5214234025234038123423632234§ = Math.max(this.§5214234025234038123423632234§,_loc1_.width);
            }
         }
         this.d5e4d3e3();
      }
      
      public function destroy() : void
      {
         for each(var _loc1_ in this.§5214238853238866123423632234§)
         {
            _loc1_.removeEventListener("click",this.onButtonClick);
         }
         this.§5214238853238866123423632234§ = null;
         this.§with package switch§ = null;
      }
      
      public function findVisibleCategory() : ItemViewCategoryEnum
      {
         for each(var _loc1_ in this.§5214238853238866123423632234§)
         {
            if(_loc1_.visible)
            {
               return _loc1_.getCategory();
            }
         }
         throw new Error("No category to show");
      }
      
      public function getSelectedCategory() : ItemViewCategoryEnum
      {
         return this.§5214237790237803123423632234§;
      }
      
      public function showDiscountIndicator(param1:ItemViewCategoryEnum) : void
      {
         var _loc2_:ItemCategoryButton = ItemCategoryButton(this.§with package switch§[param1]);
         _loc2_.showDiscountIndicator();
      }
      
      private function b5e6ba61(param1:ItemViewCategoryEnum) : void
      {
         var _loc2_:ItemCategoryButton = new ItemCategoryButton(param1);
         this.§5214238853238866123423632234§[§5214238853238866123423632234§.length] = _loc2_;
         this.§with package switch§[param1] = _loc2_;
         _loc2_.addEventListener("click",this.onButtonClick);
         addChild(_loc2_);
      }
      
      override public function get width() : Number
      {
         return this.§extends use return§;
      }
      
      private function d5e4d3e3() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(var _loc1_ in this.§5214238853238866123423632234§)
         {
            if(_loc1_.visible)
            {
               _loc3_++;
            }
         }
         var _loc4_:int = (this.§extends use return§ - (_loc3_ - 1) * 5) / _loc3_;
         if(_loc4_ >= this.§5214234025234038123423632234§)
         {
            _loc4_ = Math.min(_loc4_,this.§5214234025234038123423632234§ + 7);
         }
         else if(_loc4_ >= this.§521423139012313914123423632234§)
         {
            _loc4_ = Math.min(_loc4_,this.§521423139012313914123423632234§ + 14);
         }
         for each(_loc1_ in this.§5214238853238866123423632234§)
         {
            if(_loc1_.visible)
            {
               if(this.§5214234025234038123423632234§ <= _loc4_)
               {
                  _loc1_.setIconTextState();
                  _loc1_.width = _loc4_;
               }
               else if(this.§521423139012313914123423632234§ <= _loc4_)
               {
                  _loc1_.setTextState();
                  _loc1_.width = _loc4_;
               }
               else
               {
                  _loc1_.setIconState();
               }
               _loc1_.x = _loc2_;
               _loc2_ += _loc1_.width;
               _loc2_ += 5;
            }
         }
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         if(param1.target is ItemCategoryButton)
         {
            this.select(ItemCategoryButton(param1.target).getCategory());
         }
      }
      
      public function hideNewItemIndicator(param1:ItemViewCategoryEnum) : void
      {
         var _loc2_:ItemCategoryButton = ItemCategoryButton(this.§with package switch§[param1]);
         _loc2_.hideNewItemIndicator();
      }
      
      public function select(param1:ItemViewCategoryEnum) : void
      {
         this.§with package switch§[this.§5214237790237803123423632234§].enabled = true;
         this.§with package switch§[param1].enabled = false;
         this.§5214237790237803123423632234§ = param1;
         dispatchEvent(new CategoryButtonsListEvent("CategoryButtonsListEvent:CategorySelected",this.§5214237790237803123423632234§));
      }
      
      public function getCategoryButtonVisibility(param1:ItemViewCategoryEnum) : Boolean
      {
         return this.§with package switch§[param1].visible;
      }
      
      public function hideDiscountIndicator(param1:ItemViewCategoryEnum) : void
      {
         var _loc2_:ItemCategoryButton = ItemCategoryButton(this.§with package switch§[param1]);
         _loc2_.hideDiscountIndicator();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§extends use return§ = param1;
         this.d5e4d3e3();
      }
      
      public function showNewItemIndicator(param1:ItemViewCategoryEnum) : void
      {
         var _loc2_:ItemCategoryButton = ItemCategoryButton(this.§with package switch§[param1]);
         _loc2_.showNewItemIndicator();
      }
   }
}

