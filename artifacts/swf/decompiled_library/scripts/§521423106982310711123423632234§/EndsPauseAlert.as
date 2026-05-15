package §521423106982310711123423632234§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.utils.removeDisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class EndsPauseAlert extends DialogWindow
   {
      
      public static var display:IDisplay;
      
      public static var §with catch override§:IBlurService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §switch var class§:String = "{time}";
      
      private static const §521423111592311172123423632234§:int = 25;
      
      private static const §521423123002312313123423632234§:int = 6;
      
      private static const §5214231646231659123423632234§:int = 15;
      
      private var §5214234497234510123423632234§:§native for dynamic§;
      
      private var §5214235006235019123423632234§:§5214237085237098123423632234§;
      
      private var §521423106652310678123423632234§:§5214237085237098123423632234§;
      
      private var §include use for§:§5214231141231154123423632234§;
      
      private var §5214235383235396123423632234§:§5214231141231154123423632234§;
      
      private var §class package in§:int;
      
      private var §521423110442311057123423632234§:String;
      
      public function EndsPauseAlert()
      {
         super();
         this.§521423110442311057123423632234§ = §5214236363236376123423632234§.getText("REARM_PAUSE_ALERT");
         this.§5214234497234510123423632234§ = new §native for dynamic§();
         addChild(this.§5214234497234510123423632234§);
         this.§include use for§ = this.c341e10b();
         this.§5214235383235396123423632234§ = this.c341e10b();
         this.§5214235006235019123423632234§ = new §5214237085237098123423632234§();
         this.§5214235006235019123423632234§.label = AlertAnswer.§521423109842310997123423632234§;
         addChild(this.§5214235006235019123423632234§);
         this.§521423106652310678123423632234§ = new §5214237085237098123423632234§();
         this.§521423106652310678123423632234§.label = AlertAnswer.§521423128132312826123423632234§;
         addChild(this.§521423106652310678123423632234§);
         this.resize();
      }
      
      private function onStageResize(param1:Event) : void
      {
         this.resize();
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
         var _loc4_:Array = this.§521423110442311057123423632234§.replace("{time}",_loc2_ + ":" + _loc3_).split("\n");
         this.§include use for§.text = _loc4_[0];
         this.§5214235383235396123423632234§.text = _loc4_[1];
      }
      
      private function f245e24c(param1:MouseEvent = null) : void
      {
         dispatchEvent(new NotificationEndsPausedAlertEvent("NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE"));
      }
      
      private function removeEvents() : void
      {
         this.§5214235006235019123423632234§.removeEventListener("click",this.f245e24c);
         this.§521423106652310678123423632234§.removeEventListener("click",this.c179b99b);
         display.stage.removeEventListener("resize",this.onStageResize);
         display.stage.removeEventListener("keyUp",this.a55cd9c4);
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         §with catch override§.unblurAllContent();
         removeDisplayObject(this);
         this.§5214234497234510123423632234§ = null;
         this.§5214235006235019123423632234§ = null;
         this.§521423106652310678123423632234§ = null;
         this.§include use for§ = null;
         this.§5214235383235396123423632234§ = null;
      }
      
      public function show() : void
      {
         §with catch override§.blurAllContent();
         this.resize();
         display.stage.addChild(this);
         display.stage.focus = this;
         this.setEvents();
      }
      
      private function resize() : void
      {
         var _loc1_:int = Math.max(this.§include use for§.width + 2 * 25,this.§5214235383235396123423632234§.width + 2 * 25);
         this.§5214234497234510123423632234§.width = Math.max(_loc1_,this.§521423106652310678123423632234§.width + this.§5214235006235019123423632234§.width + 6 + 2 * 25);
         this.§5214234497234510123423632234§.x = -(int(this.§5214234497234510123423632234§.width / 2));
         this.§include use for§.x = -(int(this.§include use for§.width / 2));
         this.§5214235383235396123423632234§.x = -(int(this.§5214235383235396123423632234§.width / 2));
         this.§5214235383235396123423632234§.y = this.§include use for§.y + this.§include use for§.height;
         this.§5214235006235019123423632234§.y = this.§5214235383235396123423632234§.y + this.§5214235383235396123423632234§.height + 15;
         this.§521423106652310678123423632234§.y = this.§5214235383235396123423632234§.y + this.§5214235383235396123423632234§.height + 15;
         this.§5214235006235019123423632234§.x = -this.§5214235006235019123423632234§.width - 6 / 2;
         this.§521423106652310678123423632234§.x = 6 / 2;
         this.§5214234497234510123423632234§.height = this.§521423106652310678123423632234§.y + this.§521423106652310678123423632234§.height + 25;
         this.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ >> 1;
         this.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - this.height >> 1;
      }
      
      private function a55cd9c4(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.c179b99b();
         }
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.f245e24c();
         }
      }
      
      private function c341e10b() : §5214231141231154123423632234§
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.y = 25;
         _loc1_.autoSize = "left";
         _loc1_.§521423102842310297123423632234§ = 14;
         _loc1_.width = 10;
         _loc1_.height = 10;
         _loc1_.multiline = true;
         addChild(_loc1_);
         return _loc1_;
      }
      
      private function setEvents() : void
      {
         this.§5214235006235019123423632234§.addEventListener("click",this.f245e24c);
         this.§521423106652310678123423632234§.addEventListener("click",this.c179b99b);
         display.stage.addEventListener("resize",this.onStageResize);
         display.stage.addEventListener("keyUp",this.a55cd9c4);
      }
      
      private function c179b99b(param1:MouseEvent = null) : void
      {
         dispatchEvent(new NotificationEndsPausedAlertEvent("NotificationEndsPausedAlertEvent.CLOSE_ALERT"));
      }
   }
}

