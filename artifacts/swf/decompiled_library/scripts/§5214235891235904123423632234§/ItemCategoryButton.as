package §5214235891235904123423632234§
{
   import §521423107142310727123423632234§.§5214231260231273123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §do package if§.ItemViewCategoryEnum;
   import flash.display.Bitmap;
   import §switch set for§.§52142393623949123423632234§;
   
   public class ItemCategoryButton extends §52142393623949123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §const for static§:Class = b5b9bga_png$a9218e024c1a710c32c56f62caf687291857591276;
      
      private static const §5214236242236255123423632234§:Class = a15f497_png$ac61d266b0e0297b84c9850b553a48c41423051443;
      
      private static const §break var true§:Class = b25gb05_png$a782f757d55c3f7fe59d6e751eb106f0835481759;
      
      private static const §return switch implements§:Class = e521b77_png$0734215ce04d8558974d5c18766b90ca806371213;
      
      private static const §continue const try§:Class = §S4a219d_png$6cdcac2e7cf10eba07e4315ff8bda199-700840236§;
      
      private static const §521423121692312182123423632234§:Class = §S404d1c_png$a5ac648b32eb54627cc09a117a4ad14a-876082477§;
      
      private static const §in set super§:Class = §b3f9d34_png$bf78cabb4f330fb163ac0a597127a70b-678037085§;
      
      private static const §override const while§:Class = §a14e207_png$aca715ee5b50310c38c9085ee6154a0e-377464246§;
      
      private var category:ItemViewCategoryEnum;
      
      private var §52142315923172123423632234§:Bitmap;
      
      private var §5214231595231608123423632234§:Bitmap;
      
      private var _width:int;
      
      public function ItemCategoryButton(param1:ItemViewCategoryEnum)
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         this.§52142315923172123423632234§ = new §5214231260231273123423632234§.§521423103532310366123423632234§();
         this.§5214231595231608123423632234§ = new §in set super§();
         switch(param1)
         {
            case ItemViewCategoryEnum.SPECIAL:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_SPECIAL");
               _loc3_ = §const for static§;
               break;
            case ItemViewCategoryEnum.WEAPON:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_TURRETS");
               _loc3_ = §5214236242236255123423632234§;
               break;
            case ItemViewCategoryEnum.ARMOR:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_HULLS");
               _loc3_ = §break var true§;
               break;
            case ItemViewCategoryEnum.PAINT:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_PAINTS");
               _loc3_ = §return switch implements§;
               break;
            case ItemViewCategoryEnum.KIT:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_KITS");
               _loc3_ = §continue const try§;
               break;
            case ItemViewCategoryEnum.INVENTORY:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_SUPPLIES");
               _loc3_ = §521423121692312182123423632234§;
               break;
            case ItemViewCategoryEnum.GIVEN_PRESENTS:
               _loc2_ = §5214236363236376123423632234§.getText("STRING_GARAGE_CATEGORY_BUTTON_PRESENTS");
               _loc3_ = §override const while§;
         }
         super(_loc2_,_loc3_);
         enabled = true;
         this.category = param1;
         addChild(this.§52142315923172123423632234§);
         this.§52142315923172123423632234§.y = -5;
         this.§52142315923172123423632234§.visible = false;
         addChild(this.§5214231595231608123423632234§);
         this.§5214231595231608123423632234§.y = -5;
         this.§5214231595231608123423632234§.visible = false;
         §do import§();
      }
      
      public function setIconState() : void
      {
         icon.visible = true;
         §521423139392313952123423632234§.visible = false;
         this.width = 30;
      }
      
      public function setTextState() : void
      {
         icon.visible = false;
         §521423139392313952123423632234§.visible = true;
         this.width = 6 + §521423139392313952123423632234§.width + 6;
      }
      
      public function hideNewItemIndicator() : void
      {
         this.§52142315923172123423632234§.visible = false;
      }
      
      public function getCategory() : ItemViewCategoryEnum
      {
         return this.category;
      }
      
      public function showDiscountIndicator() : void
      {
         this.§5214231595231608123423632234§.visible = true;
      }
      
      public function setIconTextState() : void
      {
         icon.visible = true;
         §521423139392313952123423632234§.visible = true;
         this.width = 27 + §521423139392313952123423632234§.width + 6;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         if(§521423139392313952123423632234§.visible)
         {
            if(Boolean(icon) && icon.visible)
            {
               §521423139392313952123423632234§.x = 21 + (this._width - 21 - §521423139392313952123423632234§.width >> 1);
            }
            else
            {
               §521423139392313952123423632234§.x = this._width - §521423139392313952123423632234§.width >> 1;
            }
         }
         this.§52142315923172123423632234§.x = param1 - (this.§52142315923172123423632234§.width >> 1) - 4;
         this.§5214231595231608123423632234§.x = param1 - (this.§5214231595231608123423632234§.width >> 1) - 4;
         super.width = this._width;
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      public function showNewItemIndicator() : void
      {
         this.§52142315923172123423632234§.visible = true;
      }
      
      public function hideDiscountIndicator() : void
      {
         this.§5214231595231608123423632234§.visible = false;
      }
   }
}

