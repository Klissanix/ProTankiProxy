package §5214231664231677123423632234§
{
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import §try use throw§.§class use get§;
   import §try use throw§.§while catch catch§;
   
   public class DefaultLayout implements §class use get§
   {
      
      public static var display:IDisplay;
      
      public static var §use package do§:BattleGUIService;
      
      private var §return set continue§:Vector.<§while catch catch§>;
      
      private var §implements switch try§:Vector.<§while catch catch§>;
      
      private var §if set null§:Boolean;
      
      public function DefaultLayout()
      {
         super();
         this.§return set continue§ = new Vector.<§while catch catch§>();
         this.§implements switch try§ = new Vector.<§while catch catch§>();
         display.stage.addEventListener("resize",this.onResize);
      }
      
      public function init() : void
      {
         var _loc1_:§while catch catch§ = null;
         if(!this.§if set null§)
         {
            this.§if set null§ = true;
            for each(_loc1_ in this.§return set continue§)
            {
               this.§implements switch try§.push(_loc1_);
            }
            this.§return set continue§ = null;
         }
         this.layoutWidgets();
      }
      
      public function addWidget(param1:§while catch catch§) : void
      {
         if(this.§if set null§)
         {
            this.§implements switch try§[§implements switch try§.length] = param1;
         }
         else
         {
            this.§return set continue§[§return set continue§.length] = param1;
         }
         param1.setLayoutManager(this);
         this.onWidgetChanged(param1);
      }
      
      private function onResize(param1:Event) : void
      {
         this.layoutWidgets();
      }
      
      private function c1e52e93() : void
      {
         var _loc1_:§while catch catch§ = null;
         var _loc2_:DisplayObject = null;
         for each(_loc1_ in this.§implements switch try§)
         {
            _loc2_ = DisplayObject(_loc1_);
            if(_loc2_.parent != null)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
         }
      }
      
      public function destroy() : void
      {
         display.stage.removeEventListener("resize",this.onResize);
         this.c1e52e93();
      }
      
      public function layoutWidgets() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = display.stage.stageWidth / Display.§521423132512313264123423632234§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§implements switch try§.length)
         {
            _loc1_ = DisplayObject(this.§implements switch try§[_loc3_]);
            _loc1_.x = _loc2_ - _loc1_.width - 10;
            _loc1_.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - _loc1_.height - 10;
            _loc2_ = _loc1_.x;
            _loc3_++;
         }
         §use package do§.setPositionXDefaultLayout(_loc2_);
      }
      
      public function addWidget2(param1:§while catch catch§) : void
      {
         this.§implements switch try§.push(param1);
         param1.setLayoutManager(this);
      }
      
      public function onWidgetChanged(param1:§while catch catch§) : void
      {
         this.layoutWidgets();
      }
   }
}

