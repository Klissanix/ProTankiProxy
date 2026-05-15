package §import implements§
{
   import §521423140392314052123423632234§.§5214237242237255123423632234§;
   import §5214233214233227123423632234§.§521423104102310423123423632234§;
   import §5214239706239719123423632234§.§5214236901236914123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §package for final§.§5214237456237469123423632234§;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import services.contextmenu.IContextMenuService;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §5214233541233554123423632234§ extends CellRenderer
   {
      
      public static var §5214231686231699123423632234§:IBattleLinkActivatorService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      public static const §override package include§:int = 18;
      
      private var §5214239801239814123423632234§:DisplayObject;
      
      private var §521423107212310734123423632234§:§5214234011234024123423632234§;
      
      private var §521423140552314068123423632234§:§5214237242237255123423632234§;
      
      private var §5214236679236692123423632234§:§521423104102310423123423632234§;
      
      private var §5214237112237125123423632234§:§5214231141231154123423632234§;
      
      private var §5214232035232048123423632234§:§class switch case§;
      
      private var §5214233346233359123423632234§:Bitmap;
      
      public function §5214233541233554123423632234§()
      {
         super();
      }
      
      private function §5214231776231789123423632234§(param1:MouseEvent) : void
      {
         this.§5214236679236692123423632234§.visible = false;
         if(_data.isNew)
         {
            if(this.§5214237112237125123423632234§ != null)
            {
               this.§5214237112237125123423632234§.visible = true;
            }
         }
         super.selected = false;
      }
      
      private function §override use while§(param1:MouseEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         mouseEnabled = false;
         mouseChildren = true;
         useHandCursor = false;
         buttonMode = false;
         this.§5214239801239814123423632234§ = this.§5214236343236356123423632234§(_data);
         var _loc2_:DisplayObject = new §5214236901236914123423632234§(this.§521423107212310734123423632234§.§import for final§);
         var _loc3_:DisplayObject = new §5214236901236914123423632234§(this.§521423107212310734123423632234§.§import for final§,true);
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc3_);
         setStyle("selectedOverSkin",_loc3_);
         setStyle("selectedDownSkin",_loc3_);
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
      
      private function §521423118722311885123423632234§(param1:MouseEvent) : void
      {
         if(this.§521423140552314068123423632234§.§5214233528233541123423632234§() && !this.§521423140552314068123423632234§.data.isSelfBattle())
         {
            §5214231686231699123423632234§.navigateToBattleUrl(this.§521423140552314068123423632234§.data.battleId,false,_data.availableBattle);
         }
      }
      
      private function §5214236343236356123423632234§(param1:Object) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         if(param1.id != null)
         {
            if(this.§5214233346233359123423632234§ == null)
            {
               this.§5214233346233359123423632234§ = new Bitmap(§5214237456237469123423632234§.§5214231317231330123423632234§);
            }
            this.§5214233346233359123423632234§.x = 0;
            this.§5214233346233359123423632234§.y = (18 - this.§5214233346233359123423632234§.height) / 2;
            this.§5214233346233359123423632234§.visible = false;
            _loc2_.addChild(this.§5214233346233359123423632234§);
            this.§521423107212310734123423632234§ = new §5214234011234024123423632234§(param1.id);
            this.§521423107212310734123423632234§.§for override§ = true;
            this.§521423107212310734123423632234§.x = this.§5214233346233359123423632234§.x + this.§5214233346233359123423632234§.width + 4;
            this.§521423107212310734123423632234§.y = 0;
            _loc2_.addChild(this.§521423107212310734123423632234§);
            if(param1.isNew)
            {
               if(this.§5214237112237125123423632234§ == null)
               {
                  this.§5214237112237125123423632234§ = new §5214231141231154123423632234§();
                  this.§5214237112237125123423632234§.text = §5214236363236376123423632234§.getText("FRIENDS_NEW_FRIEND");
                  this.§5214237112237125123423632234§.color = 5898034;
                  this.§5214237112237125123423632234§.mouseEnabled = false;
               }
               this.§5214237112237125123423632234§.visible = true;
               this.§5214237112237125123423632234§.x = 223 - this.§5214237112237125123423632234§.width;
               this.§5214237112237125123423632234§.y = 0;
               _loc2_.addChild(this.§5214237112237125123423632234§);
            }
            else if(this.§5214237112237125123423632234§ != null)
            {
               this.§5214237112237125123423632234§.visible = false;
            }
            if(this.§5214236679236692123423632234§ != null)
            {
               this.§5214236679236692123423632234§.removeEventListener("click",this.§static use finally§);
            }
            if(this.§5214236679236692123423632234§ == null)
            {
               this.§5214236679236692123423632234§ = new §521423104102310423123423632234§(1);
            }
            this.§5214236679236692123423632234§.visible = false;
            this.§5214236679236692123423632234§.x = 223 - this.§5214236679236692123423632234§.width;
            this.§5214236679236692123423632234§.y = 0;
            this.§5214236679236692123423632234§.addEventListener("click",this.§static use finally§,false,0,true);
            _loc2_.addChild(this.§5214236679236692123423632234§);
            if(this.§521423140552314068123423632234§ != null)
            {
               this.§521423140552314068123423632234§.removeEvents();
               this.§521423140552314068123423632234§.§switch switch§.removeEventListener("click",this.§521423118722311885123423632234§);
            }
            this.§521423140552314068123423632234§ = new §5214237242237255123423632234§(param1.id);
            this.§521423140552314068123423632234§.§switch switch§.addEventListener("click",this.§521423118722311885123423632234§,false,0,true);
            _loc2_.addChild(this.§521423140552314068123423632234§);
            this.§521423140552314068123423632234§.x = 233;
            if(this.§5214232035232048123423632234§ != null)
            {
               this.§5214232035232048123423632234§.removeEventListener("click",this.§override use while§);
            }
            if(this.§5214232035232048123423632234§ == null)
            {
               this.§5214232035232048123423632234§ = new §class switch case§();
            }
            this.§5214232035232048123423632234§.addEventListener("click",this.§override use while§,false,0,true);
            _loc2_.addChild(this.§5214232035232048123423632234§);
            this.§521423135302313543123423632234§();
            this.addEventListener("rollOver",this.§native const include§,false,0,true);
            this.addEventListener("rollOut",this.§5214231776231789123423632234§,false,0,true);
         }
         return _loc2_;
      }
      
      private function §native const include§(param1:MouseEvent) : void
      {
         this.§5214236679236692123423632234§.visible = true;
         if(_data.isNew)
         {
            if(this.§5214237112237125123423632234§ != null)
            {
               this.§5214237112237125123423632234§.visible = false;
            }
         }
         super.selected = true;
      }
      
      private function §521423135302313543123423632234§() : void
      {
         _data.online = this.§521423107212310734123423632234§.§import for final§;
         _data.serverNumber = this.§521423107212310734123423632234§.§5214235402235415123423632234§;
         this.§521423107212310734123423632234§.§5214234846234859123423632234§(this.§521423107212310734123423632234§.§import for final§ ? 5898034 : 11645361,true);
         if(this.§5214232035232048123423632234§ != null)
         {
            this.§5214232035232048123423632234§.visible = this.§521423107212310734123423632234§.§import for final§;
            this.§5214232035232048123423632234§.§extends for native§(String(this.§521423107212310734123423632234§.§5214235402235415123423632234§),true);
         }
         this.§5214233346233359123423632234§.visible = this.§521423107212310734123423632234§.§import for final§ && Boolean(_data.availableInvite);
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
         if(this.§5214232035232048123423632234§ != null)
         {
            this.§5214232035232048123423632234§.x = _width - this.§5214232035232048123423632234§.width - 11;
         }
         if(_loc2_ != null && _loc2_ != background)
         {
            removeChild(_loc2_);
         }
      }
      
      private function §static use finally§(param1:MouseEvent) : void
      {
         §52142335623369123423632234§.removeFromFriends(this.§521423107212310734123423632234§.§each use get§,this.§521423107212310734123423632234§.uid);
      }
      
      override public function set selected(param1:Boolean) : void
      {
      }
   }
}

