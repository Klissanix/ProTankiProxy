package §else var case§
{
   import §5214232472232485123423632234§.§with package true§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import flash.display.Bitmap;
   import flash.events.Event;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class SuicideIndicator extends §with package true§
   {
      
      public static var display:IDisplay;
      
      public static var §use package do§:BattleGUIService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §switch var class§:String = "{time}";
      
      private static const §else catch try§:Class = §b6a0hfb_png$62c56cc79dd2ad6aa22d04741c18dacb-1322078515§;
      
      private var §break for import§:§5214231141231154123423632234§;
      
      private var §52142350223515123423632234§:String;
      
      private var §class package in§:int;
      
      private var §5214239869239882123423632234§:Boolean;
      
      public function SuicideIndicator()
      {
         super();
         this.init();
      }
      
      public function hide() : void
      {
         if(!this.§5214239869239882123423632234§)
         {
            return;
         }
         this.§5214239869239882123423632234§ = false;
         removeDisplayObject(this);
         display.stage.removeEventListener("resize",this.onResize);
      }
      
      public function destroy() : void
      {
         this.hide();
         this.§break for import§ = null;
      }
      
      public function set seconds(param1:int) : void
      {
         if(this.§class package in§ == param1)
         {
            return;
         }
         this.§class package in§ = param1;
         var _loc2_:int = this.§class package in§ / 60;
         this.§class package in§ -= _loc2_ * 60;
         var _loc3_:String = this.§class package in§ < 10 ? "0" + this.§class package in§ : this.§class package in§.toString();
         this.§break for import§.text = this.§52142350223515123423632234§.replace("{time}",_loc2_ + ":" + _loc3_);
         this.§break for import§.x = width - this.§break for import§.width >> 1;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         this.§52142350223515123423632234§ = §5214236363236376123423632234§.getText("REARM_SELFDISTRUCTION");
         var _loc2_:int = 33;
         var _loc5_:int = 33;
         var _loc6_:int = 5;
         var _loc3_:int = 16;
         var _loc4_:Bitmap = new Bitmap(new §else catch try§().bitmapData);
         addChild(_loc4_);
         _loc4_.y = _loc2_ - 5;
         _loc1_ = _loc4_.y + _loc4_.height + 2 * _loc6_;
         this.§break for import§ = new §5214231141231154123423632234§();
         this.§break for import§.§521423102842310297123423632234§ = _loc3_;
         this.§break for import§.autoSize = "left";
         this.§break for import§.text = this.§52142350223515123423632234§.replace("{time}"," 99:99");
         this.§break for import§.y = _loc1_;
         addChild(this.§break for import§);
         if(width < this.§break for import§.textWidth)
         {
            width = this.§break for import§.textWidth;
         }
         width += 2 * _loc5_;
         _loc4_.x = width - _loc4_.width >> 1;
         height = _loc1_ + this.§break for import§.height + _loc2_ - 5;
      }
      
      public function show(param1:int) : void
      {
         if(this.§5214239869239882123423632234§)
         {
            return;
         }
         this.§5214239869239882123423632234§ = true;
         this.seconds = param1;
         §use package do§.getViewportContainer().addChild(this);
         this.onResize();
         display.stage.addEventListener("resize",this.onResize);
      }
      
      private function onResize(param1:Event = null) : void
      {
         this.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this.width >> 1;
         this.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - this.height >> 1;
      }
   }
}

