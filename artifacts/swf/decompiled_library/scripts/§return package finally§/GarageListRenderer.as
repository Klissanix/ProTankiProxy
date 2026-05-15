package §return package finally§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   
   public class GarageListRenderer extends CellRenderer implements §5214235988236001123423632234§
   {
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      private var §521423128192312832123423632234§:DisplayObject;
      
      public function GarageListRenderer()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      private function loadLazyResource() : void
      {
         var _loc1_:§include catch with§ = _data.preview as §include catch with§;
         if(_loc1_ != null && (_loc2_.§else for include§ & 1) == 0)
         {
            _loc1_.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
         }
      }
      
      override protected function drawBackground() : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         this.§5214234691234704123423632234§ = param1.iconNormal;
         this.§521423128192312832123423632234§ = param1.iconSelected;
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
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
      }
      
      override public function set listData(param1:ListData) : void
      {
         this.loadLazyResource();
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
      
      override protected function drawLayout() : void
      {
      }
   }
}

