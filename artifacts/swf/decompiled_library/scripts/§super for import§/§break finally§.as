package §super for import§
{
   import §5214232548232561123423632234§.§5214234804234817123423632234§;
   import §5214232548232561123423632234§.§5214234946234959123423632234§;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §break finally§ extends CellRenderer
   {
      
      protected var §5214235052235065123423632234§:§implements switch extends§;
      
      public function §break finally§()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         mouseEnabled = false;
         mouseChildren = true;
         buttonMode = useHandCursor = false;
         var _loc3_:DisplayObject = new §5214234946234959123423632234§();
         var _loc2_:DisplayObject = new §5214234804234817123423632234§();
         setStyle("upSkin",_loc3_);
         setStyle("downSkin",_loc3_);
         setStyle("overSkin",_loc3_);
         setStyle("selectedUpSkin",_loc2_);
         setStyle("selectedOverSkin",_loc2_);
         setStyle("selectedDownSkin",_loc2_);
         addEventListener("resize",this.§52142326923282123423632234§,false,0,true);
         addEventListener("rollOver",this.§native const include§,false,0,true);
         addEventListener("rollOut",this.§5214231776231789123423632234§,false,0,true);
         addChild(this.§5214235052235065123423632234§);
         this.§52142326923282123423632234§();
      }
      
      protected function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.§5214235052235065123423632234§.height = height;
         this.§5214235052235065123423632234§.width = width;
         this.§5214235052235065123423632234§.y = 1;
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = _listData.label;
         if(this.§5214235052235065123423632234§ != null)
         {
            setStyle("icon",this.§5214235052235065123423632234§);
         }
      }
      
      protected function §native const include§(param1:MouseEvent) : void
      {
         this.§5214235052235065123423632234§.§catch finally§.updateActions();
         super.selected = true;
      }
      
      protected function §5214231776231789123423632234§(param1:MouseEvent) : void
      {
         this.§5214235052235065123423632234§.§catch finally§.visible = false;
         super.selected = false;
      }
   }
}

