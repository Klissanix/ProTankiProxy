package §get const continue§
{
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import §package catch while§.*;
   
   public class §use set default§ extends CellRenderer
   {
      
      private var §521423109152310928123423632234§:Boolean = true;
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      private var §521423128192312832123423632234§:DisplayObject;
      
      public function §use set default§()
      {
         super();
      }
      
      override public function set listData(param1:ListData) : void
      {
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
      
      override protected function drawBackground() : void
      {
         var _loc1_:String = enabled ? mouseState : "disabled";
         if(selected)
         {
            _loc1_ = "selected" + _loc1_.substr(0,1).toUpperCase() + _loc1_.substr(1);
         }
         _loc1_ += "Skin";
         var _loc2_:DisplayObject = background;
         background = getDisplayObjectInstance(getStyleValue(_loc1_));
         addChildAt(background,0);
         if(_loc2_ != null && _loc2_ != background)
         {
            removeChild(_loc2_);
         }
      }
      
      override protected function drawIcon() : void
      {
         var _loc1_:DisplayObject = icon;
         var _loc2_:String = enabled ? mouseState : "disabled";
         if(selected)
         {
            _loc2_ = "selected" + _loc2_.substr(0,1).toUpperCase() + _loc2_.substr(1);
         }
         _loc2_ += "Icon";
         var _loc3_:Object = getStyleValue(_loc2_);
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
         if(_loc1_ != null && _loc1_ != icon && _loc1_.parent == this)
         {
            removeChild(_loc1_);
         }
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         background.width = width - 4;
         background.height = height;
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         this.§521423109152310928123423632234§ = param1.accessible;
         this.§5214234691234704123423632234§ = param1.iconNormal;
         this.§521423128192312832123423632234§ = param1.iconSelected;
         if(!this.§521423109152310928123423632234§)
         {
            setStyle("upSkin",CellOffUp);
            setStyle("downSkin",CellRenderer_disabledDownSkin);
            setStyle("overSkin",CellOffUp);
            setStyle("selectedUpSkin",CellOffSelected);
            setStyle("selectedOverSkin",CellOffSelected);
            setStyle("selectedDownSkin",CellRenderer_disabledSelectedDownSkin);
         }
         else
         {
            setStyle("upSkin",CellNormalUp);
            setStyle("downSkin",CellRenderer_downSkin);
            setStyle("overSkin",CellNormalUp);
            setStyle("selectedUpSkin",CellNormalSelected);
            setStyle("selectedOverSkin",CellNormalSelected);
            setStyle("selectedDownSkin",CellRenderer_selectedDownSkin);
         }
      }
   }
}

