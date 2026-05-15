package alternativa.tanks.models.statistics
{
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.ShowPauseIndicatorEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import §else var case§.PauseIndicator;
   import flash.events.Event;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class PauseIndicatorSupport implements §521423117662311779123423632234§, §if use default§, §dynamic switch break§
   {
      
      public static var display:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §use package do§:BattleGUIService;
      
      private var §class set import§:PauseIndicator;
      
      private var §5214231279231292123423632234§:Boolean;
      
      private var §override set in§:int;
      
      public function PauseIndicatorSupport()
      {
         super();
         this.init();
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         this.§class set import§.seconds = Math.max((this.§override set in§ - param1) / 1000,0);
      }
      
      private function a4f57c3b() : void
      {
         if(this.§class set import§.parent != null)
         {
            this.§class set import§.parent.removeChild(this.§class set import§);
            display.stage.removeEventListener("resize",this.onStageResize);
         }
      }
      
      private function e741ca06() : void
      {
         if(!this.§5214231279231292123423632234§)
         {
            return;
         }
         this.§5214231279231292123423632234§ = false;
         this.a4f57c3b();
         §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
      }
      
      private function c26dc35a(param1:ShowPauseIndicatorEvent) : void
      {
         if(this.§5214231279231292123423632234§)
         {
            return;
         }
         this.§5214231279231292123423632234§ = true;
         this.b671ccda();
         this.§override set in§ = getTimer() + param1.§function use import§;
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(this);
      }
      
      private function init() : void
      {
         §with set include§.addBattleEventListener(PauseDeactivationEvent,this);
         §with set include§.addBattleEventListener(ShowPauseIndicatorEvent,this);
         this.§class set import§ = new PauseIndicator(§5214236363236376123423632234§.getText("REARM_PAUSE_1"),§5214236363236376123423632234§.getText("REARM_PAUSE_2"),§5214236363236376123423632234§.getText("REARM_PAUSE_3"));
      }
      
      private function setPosition() : void
      {
         this.§class set import§.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this.§class set import§.width >> 1;
         this.§class set import§.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - this.§class set import§.height >> 1;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is PauseDeactivationEvent)
         {
            this.e741ca06();
         }
         else if(param1 is ShowPauseIndicatorEvent)
         {
            this.c26dc35a(ShowPauseIndicatorEvent(param1));
         }
      }
      
      private function b671ccda() : void
      {
         if(this.§class set import§.parent == null)
         {
            §use package do§.getViewportContainer().addChild(this.§class set import§);
            display.stage.addEventListener("resize",this.onStageResize);
            this.setPosition();
         }
      }
      
      private function onStageResize(param1:Event) : void
      {
         this.setPosition();
      }
      
      public function close() : void
      {
         this.a4f57c3b();
         §with set include§.removeBattleEventListener(ShowPauseIndicatorEvent,this);
         §with set include§.removeBattleEventListener(PauseDeactivationEvent,this);
      }
   }
}

