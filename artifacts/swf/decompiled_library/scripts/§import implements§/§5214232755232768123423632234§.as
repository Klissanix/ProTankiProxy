package §import implements§
{
   import §5214233214233227123423632234§.§521423104102310423123423632234§;
   import §5214239706239719123423632234§.§import use final§;
   import alternativa.osgi.service.locale.ILocaleService;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import services.contextmenu.IContextMenuService;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §5214232755232768123423632234§ extends CellRenderer
   {
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §5214239801239814123423632234§:DisplayObject;
      
      private var §521423107212310734123423632234§:§5214234011234024123423632234§;
      
      private var §import const class§:§521423104102310423123423632234§;
      
      private var §5214235203235216123423632234§:§521423104102310423123423632234§;
      
      private var §5214237112237125123423632234§:§5214231141231154123423632234§;
      
      public function §5214232755232768123423632234§()
      {
         super();
      }
      
      private function resize() : void
      {
         this.§5214235203235216123423632234§.x = _width - this.§5214235203235216123423632234§.width - 6;
         this.§import const class§.x = this.§5214235203235216123423632234§.x - this.§import const class§.width - 1;
         this.§5214237112237125123423632234§.x = _width - this.§5214237112237125123423632234§.width - 6;
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = _listData.label;
         if(this.§5214239801239814123423632234§ != null)
         {
            setStyle("icon",this.§5214239801239814123423632234§);
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
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         mouseEnabled = false;
         mouseChildren = true;
         useHandCursor = false;
         buttonMode = false;
         var _loc2_:§import use final§ = new §import use final§(false);
         var _loc3_:§import use final§ = new §import use final§(true);
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc3_);
         setStyle("selectedOverSkin",_loc3_);
         setStyle("selectedDownSkin",_loc3_);
         this.§5214239801239814123423632234§ = this.§5214236343236356123423632234§(_data);
         if(this.§import const class§ == null)
         {
            this.§import const class§ = new §521423104102310423123423632234§(0);
            addChild(this.§import const class§);
         }
         this.§import const class§.visible = false;
         if(this.§5214235203235216123423632234§ == null)
         {
            this.§5214235203235216123423632234§ = new §521423104102310423123423632234§(1);
            addChild(this.§5214235203235216123423632234§);
         }
         this.§5214235203235216123423632234§.visible = false;
         if(this.§5214237112237125123423632234§ == null)
         {
            this.§5214237112237125123423632234§ = new §5214231141231154123423632234§();
            this.§5214237112237125123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_NEW") + "!";
            this.§5214237112237125123423632234§.height = 18;
            this.§5214237112237125123423632234§.y = -1;
            this.§5214237112237125123423632234§.color = 5898034;
            addChild(this.§5214237112237125123423632234§);
            this.§5214237112237125123423632234§.mouseEnabled = false;
         }
         this.§5214237112237125123423632234§.visible = _data.isNew;
         this.addEventListener("resize",this.§52142326923282123423632234§,false,0,true);
         this.addEventListener("rollOver",this.§native const include§,false,0,true);
         this.addEventListener("rollOut",this.§5214231776231789123423632234§,false,0,true);
         this.resize();
         this.§import const class§.addEventListener("click",this.§521423139842313997123423632234§,false,0,true);
         this.§5214235203235216123423632234§.addEventListener("click",this.§super set get§,false,0,true);
      }
      
      private function §5214231776231789123423632234§(param1:MouseEvent) : void
      {
         this.§import const class§.visible = false;
         this.§5214235203235216123423632234§.visible = false;
         if(_data.isNew)
         {
            this.§5214237112237125123423632234§.visible = true;
         }
         super.selected = false;
      }
      
      private function §52142326923282123423632234§(param1:Event) : void
      {
         this.resize();
      }
      
      private function §native const include§(param1:MouseEvent) : void
      {
         this.§import const class§.visible = true;
         this.§5214235203235216123423632234§.visible = true;
         if(_data.isNew)
         {
            this.§5214237112237125123423632234§.visible = false;
         }
         super.selected = true;
      }
      
      override public function set selected(param1:Boolean) : void
      {
      }
      
      private function §521423139842313997123423632234§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.acceptRequest(this.§521423107212310734123423632234§.§each use get§,this.§521423107212310734123423632234§.uid);
      }
      
      private function §5214236343236356123423632234§(param1:Object) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         if(param1.id != null)
         {
            this.§521423107212310734123423632234§ = new §5214234011234024123423632234§(param1.id);
            this.§521423107212310734123423632234§.x = -3;
            this.§521423107212310734123423632234§.y = -1;
            _loc2_.addChild(this.§521423107212310734123423632234§);
            this.§521423107212310734123423632234§.§5214234846234859123423632234§(5898034);
         }
         return _loc2_;
      }
      
      private function §super set get§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.rejectRequest(this.§521423107212310734123423632234§.§each use get§,this.§521423107212310734123423632234§.uid);
      }
   }
}

