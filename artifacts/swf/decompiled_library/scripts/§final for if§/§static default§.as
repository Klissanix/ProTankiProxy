package §final for if§
{
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §get use set§.TanksFontService;
   import §package catch while§.CellBlue;
   import §package catch while§.CellNormalUp;
   import §package catch while§.CellRed;
   import §package catch while§.CellShape;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §static default§ extends CellRenderer
   {
      
      private var §const var for§:TextFormat = TanksFontService.getTextFormat(13);
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      private var §5214237534237547123423632234§:CellShape = new CellNormalUp();
      
      private var §package catch use§:CellShape = new CellRed();
      
      private var §521423132692313282123423632234§:CellShape = new CellBlue();
      
      public function §static default§()
      {
         super();
         this.§const var for§.color = 16777215;
         setStyle("textFormat",this.§const var for§);
         setStyle("embedFonts",TanksFontService.isEmbedFonts());
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
      
      private function myIcon(param1:Object) : Sprite
      {
         var _loc3_:Sprite = null;
         var _loc2_:§5214234011234024123423632234§ = null;
         var _loc4_:§5214231141231154123423632234§ = null;
         var _loc5_:§5214231141231154123423632234§ = null;
         if(_width < 0)
         {
            _width = 20;
         }
         _loc3_ = new Sprite();
         if(param1.id != null)
         {
            _loc2_ = new §5214234011234024123423632234§(param1.id);
            if(param1.suspicious)
            {
               _loc2_.§5214234846234859123423632234§(16048128,true);
            }
            else
            {
               _loc2_.§5214234846234859123423632234§(16777215);
            }
            _loc2_.x = -4;
            _loc2_.y = 0;
            _loc3_.addChild(_loc2_);
            _loc4_ = new §5214231141231154123423632234§();
            _loc4_.mouseEnabled = false;
            _loc4_.color = 16777215;
            _loc4_.autoSize = "none";
            _loc4_.align = "right";
            _loc4_.text = param1.kills;
            _loc4_.height = 20;
            _loc4_.width = 120;
            _loc4_.x = _width - 135;
            _loc4_.y = 0;
            _loc3_.addChild(_loc4_);
         }
         else
         {
            _loc5_ = new §5214231141231154123423632234§();
            _loc5_.text = param1.noNameText;
            _loc5_.alpha = 0.5;
            _loc5_.x = 10;
            _loc3_.addChild(_loc5_);
         }
         return _loc3_;
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         background.width = width - 4;
         background.height = height;
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = "";
         if(this.§5214234691234704123423632234§ != null)
         {
            setStyle("icon",this.§5214234691234704123423632234§);
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:CellShape = null;
         _data = param1;
         this.mouseChildren = true;
         this.buttonMode = this.useHandCursor = false;
         this.§5214234691234704123423632234§ = this.myIcon(_data);
         switch(_data.style)
         {
            case "green":
               _loc2_ = this.§5214237534237547123423632234§;
               break;
            case "red":
               _loc2_ = this.§package catch use§;
               break;
            case "blue":
               _loc2_ = this.§521423132692313282123423632234§;
         }
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc2_);
         setStyle("selectedOverSkin",_loc2_);
         setStyle("selectedDownSkin",_loc2_);
      }
   }
}

