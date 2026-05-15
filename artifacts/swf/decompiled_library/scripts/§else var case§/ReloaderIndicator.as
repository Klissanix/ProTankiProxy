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
   
   public class ReloaderIndicator extends §with package true§
   {
      
      public static var display:IDisplay;
      
      public static var §use package do§:BattleGUIService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §switch var class§:String = "{time}";
      
      private static const §else catch try§:Class = §c1067gd_png$6aeb4c307ca93cbf5fdb19117c00538a-229530196§;
      
      private var §break for import§:§5214231141231154123423632234§;
      
      private var §52142350223515123423632234§:String;
      
      private var §class package in§:int;
      
      private var §5214239869239882123423632234§:Boolean;
      
      public function ReloaderIndicator()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         var _loc3_:§5214231141231154123423632234§ = null;
         var _loc1_:int = 0;
         var _loc5_:Bitmap = null;
         _loc1_ = 0;
         this.§52142350223515123423632234§ = §5214236363236376123423632234§.getText("REARM_SELFDISTRUCTION");
         var _loc2_:int = 33;
         var _loc6_:int = 33;
         var _loc7_:int = 5;
         var _loc4_:int = 16;
         _loc5_ = new Bitmap(new §else catch try§().bitmapData);
         addChild(_loc5_);
         _loc5_.y = _loc2_ - 5;
         _loc1_ = _loc5_.y + _loc5_.height + 2 * _loc7_;
         _loc3_ = new §5214231141231154123423632234§();
         _loc3_.§521423102842310297123423632234§ = _loc4_;
         _loc3_.text = §5214236363236376123423632234§.getText("REARM_APPLY");
         _loc3_.y = _loc1_;
         addChild(_loc3_);
         width = _loc3_.textWidth;
         _loc1_ += _loc3_.height;
         this.§break for import§ = new §5214231141231154123423632234§();
         this.§break for import§.§521423102842310297123423632234§ = _loc4_;
         this.§break for import§.autoSize = "left";
         this.§break for import§.text = this.§52142350223515123423632234§.replace("{time}"," 99:99");
         this.§break for import§.y = _loc1_;
         addChild(this.§break for import§);
         if(width < this.§break for import§.textWidth)
         {
            width = this.§break for import§.textWidth;
         }
         width += 2 * _loc6_;
         _loc5_.x = width - _loc5_.width >> 1;
         _loc3_.x = width - _loc3_.width >> 1;
         height = _loc1_ + this.§break for import§.height + _loc2_ - 5;
      }
      
      public function destroy() : void
      {
         this.hide();
         this.§break for import§ = null;
      }
      
      private function onResize(param1:Event = null) : void
      {
         this.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this.width >> 1;
         this.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - this.height >> 1;
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
   }
}

