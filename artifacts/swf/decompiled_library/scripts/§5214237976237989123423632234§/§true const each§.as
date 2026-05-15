package §5214237976237989123423632234§
{
   import §5214232683232696123423632234§.§5214233329233342123423632234§;
   import §5214238361238374123423632234§.§package package do§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.PauseActivationEvent;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.TargetingInputModeChangedEvent;
   import alternativa.tanks.battle.events.TargetingModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.targeting.§521423108262310839123423632234§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   
   public class §true const each§ implements §if use default§, §521423108262310839123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public static var §5214235930235943123423632234§:TargetingModeService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §extends package override§:KeysBindingService;
      
      private var §for catch do§:§package package do§;
      
      private var §try use include§:Boolean;
      
      private var §5214231440231453123423632234§:Boolean;
      
      private var §super catch function§:Boolean = false;
      
      private var §5214239442239455123423632234§:Vector.<Boolean> = new Vector.<Boolean>(255);
      
      private var §521423125792312592123423632234§:Boolean;
      
      private var §5214231604231617123423632234§:int;
      
      public function §true const each§()
      {
         super();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:TargetingInputModeChangedEvent = null;
         if(param1 is PauseDeactivationEvent)
         {
            this.§521423125792312592123423632234§ = false;
         }
         else if(param1 is PauseActivationEvent)
         {
            this.§521423125792312592123423632234§ = true;
         }
         else if(param1 is TargetingModeChangedEvent)
         {
            this.§5214231604231617123423632234§ = TargetingModeChangedEvent(param1).targetingMode;
         }
         else if(param1 is TargetingInputModeChangedEvent)
         {
            _loc2_ = TargetingInputModeChangedEvent(param1);
            if(this.§try use include§ && this.§super catch function§ && !_loc2_.§5214234830234843123423632234§)
            {
               this.§5214235337235350123423632234§();
            }
            this.§521423125792312592123423632234§ = !TargetingInputModeChangedEvent(param1).enabled;
         }
         else if(param1 is §5214233329233342123423632234§)
         {
            if(this.§try use include§)
            {
               this.§5214235337235350123423632234§();
            }
         }
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
         if(this.§try use include§ && this.§super catch function§)
         {
            this.§5214235337235350123423632234§();
         }
      }
      
      public function §throw finally catch§(param1:§package package do§) : void
      {
         this.§for catch do§ = param1;
      }
      
      private function §set const super§(param1:Event) : void
      {
         this.§5214235337235350123423632234§();
      }
      
      private function §implements package native§(param1:Boolean) : void
      {
         this.§try use include§ = true;
         this.§5214231440231453123423632234§ = true;
         §5214235930235943123423632234§.blockModeChange();
         if(this.§for catch do§ != null)
         {
            if(param1 && this.§5214231604231617123423632234§ == 1)
            {
               return;
            }
            this.§for catch do§.§implements package native§();
         }
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      private function §521423128212312834123423632234§(param1:Event) : void
      {
         var _loc2_:int = 0;
         this.§try use include§ = false;
         this.§5214231440231453123423632234§ = false;
         if(this.§for catch do§ != null)
         {
            this.§for catch do§.§5214235337235350123423632234§();
         }
         while(_loc2_ < this.§5214239442239455123423632234§.length)
         {
            this.§5214239442239455123423632234§[_loc2_] = false;
            _loc2_++;
         }
         §5214235930235943123423632234§.unblockModeChange();
      }
      
      public function init() : void
      {
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§521423128212312834123423632234§);
         §5214235917235930123423632234§.stage.addEventListener("mouseLeave",this.§set const super§);
         §5214235917235930123423632234§.stage.addEventListener("fullScreen",this.§true return§);
         §with set include§.addBattleEventListener(PauseDeactivationEvent,this);
         §with set include§.addBattleEventListener(PauseActivationEvent,this);
         §with set include§.addBattleEventListener(TargetingModeChangedEvent,this);
         §with set include§.addBattleEventListener(TargetingInputModeChangedEvent,this);
         §with set include§.addBattleEventListener(§5214233329233342123423632234§,this);
         §5214234884234897123423632234§.addListener(this);
         this.§521423125792312592123423632234§ = false;
      }
      
      public function §include finally use§() : Boolean
      {
         return this.§try use include§ || this.§5214231440231453123423632234§;
      }
      
      public function destroy() : void
      {
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§521423128212312834123423632234§);
         §5214235917235930123423632234§.stage.removeEventListener("mouseLeave",this.§set const super§);
         §5214235917235930123423632234§.stage.removeEventListener("fullScreen",this.§true return§);
         §with set include§.removeBattleEventListener(PauseDeactivationEvent,this);
         §with set include§.removeBattleEventListener(PauseActivationEvent,this);
         §with set include§.removeBattleEventListener(TargetingModeChangedEvent,this);
         §with set include§.removeBattleEventListener(TargetingInputModeChangedEvent,this);
         §with set include§.removeBattleEventListener(§5214233329233342123423632234§,this);
         §5214234884234897123423632234§.removeListener(this);
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      private function §true return§(param1:FullScreenEvent) : void
      {
         this.§5214235337235350123423632234§();
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         if(!this.§521423125792312592123423632234§ && §521423998231011123423632234§.mouseControl && §5214235930235943123423632234§.getCurrentMode() == 2)
         {
            if(!this.§try use include§ && param1)
            {
               this.§implements package native§(true);
               this.§super catch function§ = false;
            }
            else if(this.§try use include§ && !this.§super catch function§ && !param1)
            {
               this.§5214235337235350123423632234§();
            }
         }
         return true;
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      private function §5214235337235350123423632234§() : void
      {
         var _loc1_:Boolean = this.§try use include§;
         this.§try use include§ = false;
         if(_loc1_ && this.§for catch do§ != null)
         {
            this.§for catch do§.§5214235337235350123423632234§();
         }
         §5214235930235943123423632234§.unblockModeChange();
      }
      
      public function §5214233699233712123423632234§() : void
      {
         this.§5214231440231453123423632234§ = false;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function §false var in§(param1:uint) : Boolean
      {
         return param1 < 256 ? this.§5214239442239455123423632234§[param1] : false;
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         var _loc4_:GameActionEnum = §extends package override§.getBindingAction(param1,false);
         if(param2)
         {
            if(_loc4_ == GameActionEnum.SHOT && !this.§try use include§)
            {
               this.§implements package native§(false);
               this.§super catch function§ = true;
            }
            if(param1 < 256)
            {
               this.§5214239442239455123423632234§[param1] = true;
            }
         }
         else
         {
            if(_loc4_ == GameActionEnum.SHOT && this.§try use include§ && this.§super catch function§)
            {
               this.§5214235337235350123423632234§();
            }
            if(param1 < 256)
            {
               this.§5214239442239455123423632234§[param1] = false;
            }
         }
         return true;
      }
      
      public function §class for final§() : Boolean
      {
         return this.§try use include§;
      }
   }
}

