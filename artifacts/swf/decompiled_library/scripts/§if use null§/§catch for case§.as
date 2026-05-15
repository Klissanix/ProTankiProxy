package §if use null§
{
   import §5214232472232485123423632234§.§521423140312314044123423632234§;
   import §5214232472232485123423632234§.§include native§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214233785233798123423632234§.§5214235531235544123423632234§;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §implements for each§.§5214237300237313123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §catch for case§ extends CellRenderer
   {
      
      protected var §5214234691234704123423632234§:DisplayObject;
      
      public function §catch for case§()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         var _loc2_:DisplayObject = new §521423140312314044123423632234§();
         var _loc3_:DisplayObject = new §include native§();
         this.§5214234691234704123423632234§ = this.myIcon(_data);
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc3_);
         setStyle("selectedOverSkin",_loc3_);
         setStyle("selectedDownSkin",_loc3_);
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
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = _listData.label;
         if(this.§5214234691234704123423632234§ != null)
         {
            setStyle("icon",this.§5214234691234704123423632234§);
         }
      }
      
      protected function myIcon(param1:Object) : Sprite
      {
         var _loc4_:§5214231141231154123423632234§ = null;
         var _loc6_:§5214231141231154123423632234§ = null;
         var _loc8_:§5214231141231154123423632234§ = null;
         var _loc2_:int = 0;
         var _loc7_:Sprite = new Sprite();
         _loc4_ = new §5214231141231154123423632234§();
         var _loc3_:§5214237300237313123423632234§ = new §5214237300237313123423632234§(_data.rank);
         var _loc5_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc6_ = new §5214231141231154123423632234§();
         _loc4_.autoSize = "none";
         _loc4_.align = "right";
         _loc4_.width = 45;
         _loc4_.text = _data.pos < 0 ? " " : _data.pos;
         _loc7_.addChild(_loc4_);
         if(_data.rank > 0)
         {
            _loc3_.y = 3;
            _loc3_.x = 53;
            _loc7_.addChild(_loc3_);
            _loc5_.text = §5214235531235544123423632234§.§extends set case§(int(_data.rank));
            _loc5_.x = 63;
            _loc7_.addChild(_loc5_);
         }
         _loc6_.autoSize = "none";
         _loc6_.height = 18;
         _loc6_.text = _data.callsign;
         _loc6_.selectable = true;
         _loc6_.x = 178;
         _loc6_.width = _width - 520;
         _loc7_.addChild(_loc6_);
         _loc2_ = _width - 375;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 60;
         _loc8_.x = _loc2_;
         _loc8_.text = _data.score > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.score,false) : " ";
         _loc7_.addChild(_loc8_);
         _loc2_ += 60;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 70;
         _loc8_.x = _loc2_;
         _loc8_.text = _data.kills > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.kills,false) : " ";
         _loc7_.addChild(_loc8_);
         _loc2_ += 70;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 50;
         _loc8_.x = _loc2_;
         _loc8_.text = _data.deaths > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.deaths,false) : " ";
         _loc7_.addChild(_loc8_);
         _loc2_ += 50;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 40;
         _loc8_.x = _loc2_;
         _loc8_.text = _data.ratio > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.ratio) : (_data.ratio == -11 ? " " : "—");
         _loc7_.addChild(_loc8_);
         _loc2_ += 40;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 65;
         _loc8_.x = _loc2_;
         _loc8_.htmlText = _data.wealth > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.wealth,false) : " ";
         _loc7_.addChild(_loc8_);
         _loc2_ += 75;
         _loc8_ = new §5214231141231154123423632234§();
         _loc8_.autoSize = "none";
         _loc8_.align = "right";
         _loc8_.width = 69;
         _loc8_.x = _loc2_;
         _loc8_.text = _data.rating > -1 ? §521423133302313343123423632234§.§get catch catch§(_data.rating) : " ";
         _loc7_.addChild(_loc8_);
         return _loc7_;
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
      }
      
      protected function §521423104052310418123423632234§(param1:Boolean) : DisplayObject
      {
         return new Sprite();
      }
      
      override protected function drawBackground() : void
      {
         var _loc2_:String = enabled ? mouseState : "disabled";
         if(selected)
         {
            _loc2_ = "selected" + _loc2_.substr(0,1).toUpperCase() + _loc2_.substr(1);
         }
         _loc2_ += "Skin";
         var _loc1_:DisplayObject = background;
         background = getDisplayObjectInstance(getStyleValue(_loc2_));
         addChildAt(background,0);
         if(_loc1_ != null && _loc1_ != background)
         {
            removeChild(_loc1_);
         }
      }
   }
}

