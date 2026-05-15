package §521423106982310711123423632234§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.PauseActivationEvent;
   import alternativa.tanks.battle.events.PauseDeactivationEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class NotificationEndsPauseSupport implements §521423117662311779123423632234§, §if use default§, §dynamic switch break§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private static const §521423100152310028123423632234§:int = 60;
      
      private var §throw var else§:int;
      
      private var §5214231165231178123423632234§:EndsPauseAlert;
      
      private var §5214235697235710123423632234§:Boolean;
      
      public function NotificationEndsPauseSupport()
      {
         super();
         this.init();
      }
      
      private static function d26ed4ef() : Boolean
      {
         return !§continue for final§.isSwitchInProgress() && §continue for final§.isWindowOpenOverBattle();
      }
      
      private static function d28656ea() : void
      {
         var _loc1_:LayoutState = §continue for final§.getCurrentState();
         if(_loc1_ != LayoutState.BATTLE)
         {
            §continue for final§.method_1058();
         }
      }
      
      private function b7147f1d() : void
      {
         if(!this.§5214235697235710123423632234§)
         {
            return;
         }
         this.§5214235697235710123423632234§ = false;
         §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
         this.a35b4e12();
      }
      
      private function init() : void
      {
         §with set include§.addBattleEventListener(PauseActivationEvent,this);
         §with set include§.addBattleEventListener(PauseDeactivationEvent,this);
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         var _loc3_:int = (this.§throw var else§ - param1) / 1000;
         if(_loc3_ <= 60)
         {
            if(this.d62867f7())
            {
               this.§5214231165231178123423632234§.seconds = Math.max(_loc3_,0);
            }
            else if(d26ed4ef())
            {
               this.afbc166(_loc3_);
            }
         }
      }
      
      private function b4668ba4(param1:NotificationEndsPausedAlertEvent) : void
      {
         §5214238240238253123423632234§.forciblyClose();
         d28656ea();
         this.b7147f1d();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is PauseActivationEvent)
         {
            this.bb0c2f4(PauseActivationEvent(param1));
         }
         else if(param1 is PauseDeactivationEvent)
         {
            this.b7147f1d();
         }
      }
      
      private function d62867f7() : Boolean
      {
         return this.§5214231165231178123423632234§ != null;
      }
      
      public function close() : void
      {
         this.a35b4e12();
         §with set include§.removeBattleEventListener(PauseActivationEvent,this);
         §with set include§.removeBattleEventListener(PauseDeactivationEvent,this);
      }
      
      private function a35b4e12() : void
      {
         if(this.d62867f7())
         {
            this.§5214231165231178123423632234§.removeEventListener("NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE",this.b4668ba4);
            this.§5214231165231178123423632234§.removeEventListener("NotificationEndsPausedAlertEvent.CLOSE_ALERT",this.f14321ad);
            this.§5214231165231178123423632234§.destroy();
            this.§5214231165231178123423632234§ = null;
         }
      }
      
      private function afbc166(param1:int) : void
      {
         this.§5214231165231178123423632234§ = new EndsPauseAlert();
         this.§5214231165231178123423632234§.addEventListener("NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE",this.b4668ba4);
         this.§5214231165231178123423632234§.addEventListener("NotificationEndsPausedAlertEvent.CLOSE_ALERT",this.f14321ad);
         this.§5214231165231178123423632234§.seconds = param1;
         this.§5214231165231178123423632234§.show();
      }
      
      private function f14321ad(param1:NotificationEndsPausedAlertEvent = null) : void
      {
         this.b7147f1d();
      }
      
      private function bb0c2f4(param1:PauseActivationEvent) : void
      {
         if(this.§5214235697235710123423632234§)
         {
            return;
         }
         this.§5214235697235710123423632234§ = true;
         this.§throw var else§ = getTimer() + param1.§function use import§;
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(this);
      }
   }
}

