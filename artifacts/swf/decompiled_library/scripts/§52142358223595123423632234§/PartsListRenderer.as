package §52142358223595123423632234§
{
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214233087233100123423632234§.§include catch with§;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   
   public class PartsListRenderer extends CellRenderer implements §5214238033238046123423632234§
   {
      
      private static var defaultStyles:Object = {
         "upSkin":null,
         "downSkin":null,
         "overSkin":null,
         "disabledSkin":null,
         "selectedDisabledSkin":null,
         "selectedUpSkin":null,
         "selectedDownSkin":null,
         "selectedOverSkin":null,
         "textFormat":null,
         "disabledTextFormat":null,
         "embedFonts":null,
         "textPadding":5
      };
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      private var §521423128192312832123423632234§:DisplayObject;
      
      public function PartsListRenderer()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      override protected function drawLayout() : void
      {
      }
      
      override protected function drawBackground() : void
      {
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
      }
      
      override protected function drawIcon() : void
      {
         var _loc1_:String = null;
         var _loc2_:DisplayObject = icon;
         _loc1_ = enabled ? mouseState : "disabled";
         if(selected)
         {
            _loc1_ = "selected" + _loc1_.substr(0,1).toUpperCase() + _loc1_.substr(1);
         }
         _loc1_ += "Icon";
         var _loc3_:Object = getStyleValue(_loc1_);
         if(_loc3_ == null)
         {
            _loc3_ = getStyleValue("icon");
         }
         if(_loc3_ != null)
         {
            icon = getDisplayObjectInstance(_loc3_);
         }
         if(icon != null)
         {
            addChildAt(icon,1);
         }
         if(_loc2_ != null && _loc2_ != icon && _loc2_.parent == this)
         {
            removeChild(_loc2_);
         }
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         this.§5214234691234704123423632234§ = param1.iconNormal;
         this.§521423128192312832123423632234§ = param1.iconSelected;
      }
      
      override public function set listData(param1:ListData) : void
      {
         var _loc2_:§include catch with§ = _data.dat.preview as §include catch with§;
         if(_loc2_ != null)
         {
            if(_loc2_.data == null)
            {
               _loc2_.§5214234169234182123423632234§(this);
            }
         }
         _listData = param1;
         label = _listData.label;
         if(this.§5214234691234704123423632234§ != null && this.§521423128192312832123423632234§ != null)
         {
            setStyle("icon",this.§5214234691234704123423632234§);
            setStyle("selectedUpIcon",this.§521423128192312832123423632234§);
            setStyle("selectedOverIcon",this.§521423128192312832123423632234§);
            setStyle("selectedDownIcon",this.§521423128192312832123423632234§);
         }
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
      }
   }
}

