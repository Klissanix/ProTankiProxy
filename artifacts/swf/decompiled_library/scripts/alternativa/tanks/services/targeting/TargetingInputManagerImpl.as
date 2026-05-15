package alternativa.tanks.services.targeting
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.PauseActivationEvent;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.TargetingInputModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class TargetingInputManagerImpl implements TargetingInputManager, §if use default§
   {
      
      public static var display:IDisplay;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §5214232770232783123423632234§:FullscreenService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private static const §5214231477231490123423632234§:String = Capabilities.version.charAt();
      
      private var listeners:Vector.<§521423108262310839123423632234§>;
      
      private var §super catch switch§:int = 0;
      
      private var active:Boolean = true;
      
      private var §catch switch with§:Boolean = false;
      
      private var §for use import§:Boolean = false;
      
      private var §catch switch return§:Boolean = false;
      
      private var §5214232434232447123423632234§:int = 0;
      
      private var §null package in§:Boolean = false;
      
      private var §include use finally§:Boolean = false;
      
      private var §5214234685234698123423632234§:Boolean = false;
      
      private var pause:Boolean = false;
      
      private var activate:Boolean = false;
      
      private var §else for set§:Boolean = false;
      
      private var §5214234830234843123423632234§:Boolean = false;
      
      public function TargetingInputManagerImpl()
      {
         super();
         this.listeners = new Vector.<§521423108262310839123423632234§>();
      }
      
      public function endDialog() : void
      {
         if(this.§else for set§)
         {
            --this.§super catch switch§;
            if(this.§super catch switch§ <= 0)
            {
               this.§super catch switch§ = 0;
               §with set include§.dispatchEvent(new TargetingInputModeChangedEvent(true,this.§5214234830234843123423632234§));
               this.§5214234830234843123423632234§ = false;
               if(this.§5214234685234698123423632234§ != this.§include use finally§)
               {
                  if(!this.c5303())
                  {
                     this.f705bd7(this.§5214234685234698123423632234§,false);
                  }
                  this.§include use finally§ = this.§5214234685234698123423632234§;
               }
            }
         }
      }
      
      public function addListener(param1:§521423108262310839123423632234§) : void
      {
         if(this.listeners.indexOf(param1) < 0)
         {
            this.listeners[listeners.length] = param1;
         }
      }
      
      public function requestMouseLock() : void
      {
         if(this.§else for set§)
         {
            if(!this.c5303())
            {
               §5214232770232783123423632234§.requestMouseLock();
            }
            else
            {
               this.§for use import§ = true;
            }
            if(§5214232770232783123423632234§.isMouseLocked())
            {
               this.a9a7434(true);
               this.§catch switch with§ = true;
               this.§for use import§ = true;
            }
         }
      }
      
      private function b5d059df(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen)
         {
            this.ignoreInput();
         }
         this.§null package in§ = false;
      }
      
      private function e4104f8c(param1:Boolean) : void
      {
         if(this.§else for set§)
         {
            this.§5214234830234843123423632234§ = param1;
            ++this.§super catch switch§;
            if(this.§super catch switch§ == 1)
            {
               §with set include§.dispatchEvent(new TargetingInputModeChangedEvent(false,param1));
            }
         }
      }
      
      private function a9a7434(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.listeners.length)
         {
            §521423108262310839123423632234§(this.listeners[_loc2_]).mouseLocked(param1);
            _loc2_++;
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         if(this.e24eb2e(param1) && this.§5214232434232447123423632234§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§521423108262310839123423632234§(this.listeners[_loc2_]).keyboardButton(param1.keyCode,true,param1.ctrlKey))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function a3067026(param1:Event) : void
      {
         if(!this.active)
         {
            this.activate = true;
            this.ignoreInput();
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§5214234685234698123423632234§ = false;
         if(this.d6067306(param1) && this.§5214232434232447123423632234§ == 0)
         {
            this.§include use finally§ = false;
            this.f705bd7(false,true);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is PauseActivationEvent)
         {
            this.pause = true;
         }
         else if(param1 is PauseDeactivationEvent)
         {
            this.pause = false;
         }
      }
      
      public function close() : void
      {
         if(this.§else for set§)
         {
            display.stage.removeEventListener("mouseMove",this.f5133bf6);
            display.stage.removeEventListener("mouseDown",this.onMouseDown);
            display.stage.removeEventListener("mouseUp",this.onMouseUp);
            display.stage.removeEventListener("rightMouseDown",this.b2efb42a);
            display.stage.removeEventListener("rightMouseUp",this.f33d65ce);
            display.stage.removeEventListener("mouseWheel",this.c29e3d9);
            display.stage.removeEventListener("keyDown",this.onKeyDown);
            display.stage.removeEventListener("keyUp",this.onKeyUp);
            display.stage.removeEventListener("activate",this.a3067026);
            display.stage.removeEventListener("deactivate",this.c69ff9b2);
            display.stage.removeEventListener("fullScreen",this.e748d537);
            display.stage.removeEventListener("fullScreenInteractiveAccepted",this.b5d059df);
            §with set include§.removeBattleEventListener(PauseActivationEvent,this);
            §with set include§.removeBattleEventListener(PauseDeactivationEvent,this);
            this.listeners.length = 0;
            this.§else for set§ = false;
         }
      }
      
      private function b2efb42a(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.d6067306(param1))
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§521423108262310839123423632234§(this.listeners[_loc2_]).mouseRightButton(true,true))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function e748d537(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen)
         {
            this.ignoreInput();
         }
         this.§null package in§ = param1.fullScreen && !§5214232770232783123423632234§.isStandAlone();
      }
      
      private function f5915960(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = !(param1.target is Stage);
         return this.active && !this.pause && !_loc2_ && !this.c5303();
      }
      
      private function c69ff9b2(param1:Event) : void
      {
         this.active = false;
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         if(this.e24eb2e(param1) && this.§5214232434232447123423632234§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§521423108262310839123423632234§(this.listeners[_loc2_]).keyboardButton(param1.keyCode,false,param1.ctrlKey))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      public function startDialog() : void
      {
         this.e4104f8c(false);
      }
      
      private function f705bd7(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.listeners.length)
         {
            if(!§521423108262310839123423632234§(this.listeners[_loc3_]).mouseLeftButton(param1,param2))
            {
               return;
            }
            _loc3_++;
         }
      }
      
      public function init() : void
      {
         if(!this.§else for set§)
         {
            display.stage.addEventListener("mouseMove",this.f5133bf6);
            display.stage.addEventListener("mouseDown",this.onMouseDown);
            display.stage.addEventListener("mouseUp",this.onMouseUp);
            display.stage.addEventListener("rightMouseDown",this.b2efb42a);
            display.stage.addEventListener("rightMouseUp",this.f33d65ce);
            display.stage.addEventListener("mouseWheel",this.c29e3d9);
            display.stage.addEventListener("keyDown",this.onKeyDown);
            display.stage.addEventListener("keyUp",this.onKeyUp);
            display.stage.addEventListener("activate",this.a3067026);
            display.stage.addEventListener("deactivate",this.c69ff9b2);
            display.stage.addEventListener("fullScreen",this.e748d537);
            display.stage.addEventListener("fullScreenInteractiveAccepted",this.b5d059df);
            §with set include§.addBattleEventListener(PauseActivationEvent,this);
            §with set include§.addBattleEventListener(PauseDeactivationEvent,this);
            this.listeners.length = 0;
            this.§super catch switch§ = 0;
            this.active = true;
            this.activate = false;
            this.pause = false;
            this.§null package in§ = false;
            this.§5214232434232447123423632234§ = 0;
            this.§for use import§ = false;
            this.§catch switch with§ = false;
            this.§5214234830234843123423632234§ = false;
            this.§else for set§ = true;
         }
      }
      
      public function startDialogWithAllowedKeyboardInput() : void
      {
         this.e4104f8c(true);
      }
      
      private function f5133bf6(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.d6067306(param1) && this.§5214232434232447123423632234§ == 0)
         {
            if(this.§catch switch with§)
            {
               this.§catch switch with§ = false;
               return;
            }
            _loc2_ = 0;
            if(§5214232770232783123423632234§.isMouseLocked())
            {
               while(_loc2_ < this.listeners.length)
               {
                  this.listeners[_loc2_].mouseRelativeMovement(param1.movementX,param1.movementY);
                  _loc2_++;
               }
            }
            else
            {
               while(_loc2_ < this.listeners.length)
               {
                  this.listeners[_loc2_].mouseAbsoluteMovement(param1.stageX,param1.stageY);
                  _loc2_++;
               }
            }
         }
      }
      
      private function e24eb2e(param1:KeyboardEvent) : Boolean
      {
         return !§521423131302313143123423632234§.isInputLocked() && !this.pause && (!this.c3c923f3() || this.§5214234830234843123423632234§);
      }
      
      public function tick() : void
      {
         if(this.§else for set§ && this.active)
         {
            if(this.§catch switch return§ && !this.c5303())
            {
               if(this.§for use import§)
               {
                  this.requestMouseLock();
               }
            }
            else if(!this.§catch switch return§ && this.c5303())
            {
               if(this.a597a037() && §5214231477231490123423632234§ != "A")
               {
                  display.stage.mouseLock = false;
               }
            }
            this.§catch switch return§ = this.c5303();
            if(this.§5214232434232447123423632234§ > 0)
            {
               --this.§5214232434232447123423632234§;
            }
         }
         if(this.activate)
         {
            this.active = true;
            this.activate = false;
            if(this.a597a037() && this.§for use import§)
            {
               this.requestMouseLock();
            }
         }
      }
      
      private function f33d65ce(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.d6067306(param1) && this.§5214232434232447123423632234§ == 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.listeners.length)
            {
               if(!§521423108262310839123423632234§(this.listeners[_loc2_]).mouseRightButton(false,true))
               {
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      private function d6067306(param1:MouseEvent) : Boolean
      {
         return !§521423131302313143123423632234§.isInputLocked() && this.f5915960(param1);
      }
      
      public function unlockMouse() : void
      {
         if(this.a597a037())
         {
            display.stage.mouseLock = false;
            this.a9a7434(false);
            this.§for use import§ = false;
         }
      }
      
      private function c29e3d9(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(this.d6067306(param1) && this.§5214232434232447123423632234§ == 0)
         {
            _loc2_ = 0;
            if(§5214232770232783123423632234§.isMouseLocked())
            {
               while(_loc2_ < this.listeners.length)
               {
                  §521423108262310839123423632234§(this.listeners[_loc2_]).mouseWheel(param1.delta);
                  _loc2_++;
               }
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.§5214234685234698123423632234§ = true;
         if(this.d6067306(param1) && this.§5214232434232447123423632234§ == 0)
         {
            this.§include use finally§ = true;
            this.f705bd7(true,true);
         }
      }
      
      public function ignoreInput(param1:int = 1) : void
      {
         this.§5214232434232447123423632234§ = param1;
      }
      
      public function removeListener(param1:§521423108262310839123423632234§) : void
      {
         this.listeners.removeAt(this.listeners.indexOf(param1));
      }
      
      private function c5303() : Boolean
      {
         return this.§super catch switch§ > 0 || this.c3c923f3();
      }
      
      private function c3c923f3() : Boolean
      {
         return !§continue for final§.inBattle() || §continue for final§.isSwitchInProgress() || §continue for final§.isWindowOpenOverBattle() || this.§null package in§;
      }
      
      private function a597a037() : Boolean
      {
         return display.stage.displayState != "normal";
      }
   }
}

