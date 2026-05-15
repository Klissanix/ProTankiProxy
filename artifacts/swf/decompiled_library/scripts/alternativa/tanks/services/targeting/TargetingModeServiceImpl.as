package alternativa.tanks.services.targeting
{
   import §5214232446232459123423632234§.§5214231834231847123423632234§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TargetingModeChangedEvent;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import flash.events.FullScreenEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   
   public class TargetingModeServiceImpl implements TargetingModeService, §521423108262310839123423632234§
   {
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var display:IDisplay;
      
      public static var §5214235885235898123423632234§:FullscreenStateService;
      
      public static var §5214237407237420123423632234§:FullscreenService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §extends package override§:KeysBindingService;
      
      private var §5214234750234763123423632234§:int;
      
      private var §521423134302313443123423632234§:int;
      
      private var §52142353923552123423632234§:§5214231834231847123423632234§;
      
      private var §true catch import§:int;
      
      public function TargetingModeServiceImpl()
      {
         super();
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function setKeyMap(param1:§5214231834231847123423632234§) : void
      {
         this.§52142353923552123423632234§ = param1;
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         if(!§5214237407237420123423632234§.isMouseLockDisabled() && §521423998231011123423632234§.mouseControl && this.§true catch import§ == 0 && param1)
         {
            if(this.a597a037() && !§5214237407237420123423632234§.isMouseLocked())
            {
               §5214234884234897123423632234§.requestMouseLock();
               return false;
            }
            if(param2 && !this.a597a037())
            {
               §5214237407237420123423632234§.switchFullscreen();
               return false;
            }
         }
         return true;
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function blockModeChange() : void
      {
         ++this.§true catch import§;
      }
      
      public function tick() : void
      {
         if(this.§5214234750234763123423632234§ == 2 && !§521423998231011123423632234§.mouseControl)
         {
            this.setTargetingMode(1);
         }
         if(this.§521423134302313443123423632234§ != this.§5214234750234763123423632234§)
         {
            if(this.§5214234750234763123423632234§ == 2)
            {
               §5214234884234897123423632234§.unlockMouse();
            }
            this.§5214234750234763123423632234§ = this.§521423134302313443123423632234§;
            §with set include§.dispatchEvent(new TargetingModeChangedEvent(this.§5214234750234763123423632234§));
         }
      }
      
      public function getCurrentMode() : int
      {
         return this.§5214234750234763123423632234§;
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
         this.setTargetingMode(2);
         §5214234884234897123423632234§.ignoreInput();
      }
      
      private function e748d537(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen && (param1.type == "fullScreenInteractiveAccepted" || §5214237407237420123423632234§.isStandAlone()) && §521423998231011123423632234§.mouseControl)
         {
            §5214234884234897123423632234§.requestMouseLock();
            §5214234884234897123423632234§.ignoreInput();
         }
         else if(!param1.fullScreen && this.§5214234750234763123423632234§ == 2)
         {
            this.setTargetingMode(1);
         }
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      private function d7552b36(param1:uint, param2:Vector.<uint>) : Boolean
      {
         return param2 != null ? param2.indexOf(param1) >= 0 : false;
      }
      
      private function a597a037() : Boolean
      {
         return display.stage.displayState != "normal";
      }
      
      private function setTargetingMode(param1:int) : void
      {
         if(param1 != this.§5214234750234763123423632234§ && this.§true catch import§ == 0)
         {
            this.§521423134302313443123423632234§ = param1;
         }
      }
      
      public function close() : void
      {
         display.stage.removeEventListener("fullScreenInteractiveAccepted",this.e748d537);
         display.stage.removeEventListener("fullScreen",this.e748d537);
         §5214234884234897123423632234§.removeListener(this);
      }
      
      public function init() : void
      {
         this.§5214234750234763123423632234§ = 0;
         this.§521423134302313443123423632234§ = 1;
         §5214234884234897123423632234§.addListener(this);
         display.stage.addEventListener("fullScreen",this.e748d537);
         display.stage.addEventListener("fullScreenInteractiveAccepted",this.e748d537);
         this.§true catch import§ = 0;
         if(§5214235885235898123423632234§.isFullscreen())
         {
            §5214234884234897123423632234§.requestMouseLock();
         }
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param2 && this.§5214234750234763123423632234§ != 1 && this.§52142353923552123423632234§ != null)
         {
            _loc4_ = §extends package override§.getBindingAction(param1,false) == this.§52142353923552123423632234§.§5214234885234898123423632234§;
            if(!_loc4_)
            {
               _loc4_ = §extends package override§.getBindingAction(param1,false) == this.§52142353923552123423632234§.§5214231099231112123423632234§;
            }
            if(!_loc4_)
            {
               _loc4_ = §extends package override§.getBindingAction(param1,false) == this.§52142353923552123423632234§.§super set extends§;
            }
            if(_loc4_)
            {
               this.setTargetingMode(1);
               return false;
            }
         }
         return true;
      }
      
      public function unblockModeChange() : void
      {
         --this.§true catch import§;
         if(this.§true catch import§ < 0)
         {
            this.§true catch import§ = 0;
         }
      }
      
      public function getKeyMap() : §5214231834231847123423632234§
      {
         return this.§52142353923552123423632234§;
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
   }
}

