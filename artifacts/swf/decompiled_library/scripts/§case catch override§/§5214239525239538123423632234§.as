package §case catch override§
{
   import alternativa.tanks.gui.CrystalLabel;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §implements for each§.§5214237300237313123423632234§;
   import §set package throw§.ComboListOverState;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214239525239538123423632234§ extends CellRenderer
   {
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      private var §throw switch static§:Bitmap;
      
      private var §5214236770236783123423632234§:ComboListOverState = new ComboListOverState();
      
      public function §5214239525239538123423632234§()
      {
         super();
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = "";
         this.§5214234691234704123423632234§ = this.myIcon(_data);
         if(this.§5214234691234704123423632234§ != null)
         {
            setStyle("icon",this.§5214234691234704123423632234§);
         }
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         background.width = width - 6;
         background.height = height;
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
      
      override public function set data(param1:Object) : void
      {
         this.§throw switch static§ = new Bitmap(new BitmapData(1,1,true,0));
         _data = param1;
         setStyle("upSkin",this.§throw switch static§);
         setStyle("downSkin",this.§5214236770236783123423632234§);
         setStyle("overSkin",this.§5214236770236783123423632234§);
         setStyle("selectedUpSkin",this.§throw switch static§);
         setStyle("selectedOverSkin",this.§5214236770236783123423632234§);
         setStyle("selectedDownSkin",this.§5214236770236783123423632234§);
      }
      
      protected function myIcon(param1:Object) : Sprite
      {
         var _loc4_:§5214237300237313123423632234§ = null;
         var _loc2_:§5214231141231154123423632234§ = null;
         var _loc3_:CrystalLabel = null;
         _loc2_ = null;
         var _loc5_:Sprite = new Sprite();
         _loc2_ = new §5214231141231154123423632234§();
         _loc2_.autoSize = "none";
         _loc2_.alpha = param1.rang > 0 ? 0.5 : 1;
         _loc2_.text = param1.gameName;
         _loc2_.height = 20;
         _loc2_.width = _width - 20;
         _loc2_.x = 12;
         _loc2_.y = 0;
         if(param1.rang > 0)
         {
            _loc4_ = new §5214237300237313123423632234§(param1.rang);
            _loc4_.x = -2;
            _loc4_.y = 2;
            _loc5_.addChild(_loc4_);
         }
         _loc5_.addChild(_loc2_);
         if(param1.additionalCrystalsPercent > 0)
         {
            _loc2_.color = 16048128;
            _loc3_ = new CrystalLabel();
            _loc3_.setText("+" + param1.additionalCrystalsPercent + "%");
            _loc3_.x = _loc2_.x + _loc2_.textWidth + 4;
            _loc5_.addChild(_loc3_);
         }
         return _loc5_;
      }
   }
}

