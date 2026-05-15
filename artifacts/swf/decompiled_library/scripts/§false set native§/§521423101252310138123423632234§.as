package §false set native§
{
   import §5214232548232561123423632234§.§5214234804234817123423632234§;
   import §5214232548232561123423632234§.§5214234946234959123423632234§;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §521423101252310138123423632234§ extends CellRenderer
   {
      
      private var §5214233160233173123423632234§:§const package var§;
      
      public function §521423101252310138123423632234§()
      {
         super();
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = _listData.label;
         if(this.§5214233160233173123423632234§ != null)
         {
            setStyle("icon",this.§5214233160233173123423632234§);
         }
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§5214233160233173123423632234§.width = _width;
      }
      
      private function §5214236343236356123423632234§(param1:Object) : void
      {
         if(param1.type == "INCOMING")
         {
            this.§5214233160233173123423632234§ = new §return use default§(param1.id);
         }
         else
         {
            this.§5214233160233173123423632234§ = new §do const finally§(param1.id);
         }
         addChild(this.§5214233160233173123423632234§);
      }
      
      public function §native const include§() : void
      {
         var _loc1_:§return use default§ = null;
         super.selected = true;
         if(this.§5214233160233173123423632234§ is §return use default§)
         {
            _loc1_ = §return use default§(this.§5214233160233173123423632234§);
            if(_loc1_.§package set for§ != null)
            {
               _loc1_.§package set for§.visible = false;
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         mouseEnabled = false;
         mouseChildren = true;
         buttonMode = useHandCursor = false;
         this.§5214236343236356123423632234§(_data);
         var _loc3_:DisplayObject = new §5214234946234959123423632234§();
         var _loc2_:DisplayObject = new §5214234804234817123423632234§();
         setStyle("upSkin",_loc3_);
         setStyle("downSkin",_loc3_);
         setStyle("overSkin",_loc3_);
         setStyle("selectedUpSkin",_loc2_);
         setStyle("selectedOverSkin",_loc2_);
         setStyle("selectedDownSkin",_loc2_);
         this.§5214233160233173123423632234§.width = _width;
         addEventListener("resize",this.§52142326923282123423632234§,false,0,true);
         this.§52142326923282123423632234§();
      }
      
      public function §5214231776231789123423632234§() : void
      {
         var _loc1_:§return use default§ = null;
         super.selected = false;
         if(this.§5214233160233173123423632234§ is §return use default§)
         {
            _loc1_ = §return use default§(this.§5214233160233173123423632234§);
            if(_loc1_.§package set for§ != null)
            {
               _loc1_.§package set for§.updateNotifications();
            }
         }
      }
   }
}

