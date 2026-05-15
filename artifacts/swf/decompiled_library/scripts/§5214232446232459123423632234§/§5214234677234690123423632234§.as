package §5214232446232459123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TargetingInputModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import §finally catch with§.§throw for continue§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §5214234677234690123423632234§ extends §break switch default§ implements §if use default§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §extends package override§:KeysBindingService;
      
      private static const §5214234419234432123423632234§:int = 16;
      
      private var §5214234460234473123423632234§:§extends throw§;
      
      private var §set use super§:int;
      
      private var §final set each§:Boolean = true;
      
      public function §5214234677234690123423632234§(param1:§5214239411239424123423632234§, param2:§extends throw§)
      {
         super(param1);
         this.§5214234460234473123423632234§ = param2;
         §5214235917235930123423632234§.stage.addEventListener("keyDown",this.§each const break§);
         §5214235917235930123423632234§.stage.addEventListener("keyUp",this.§each const break§);
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§521423128212312834123423632234§);
         §with set include§.addBattleEventListener(TargetingInputModeChangedEvent,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:TargetingInputModeChangedEvent = null;
         if(param1 is TargetingInputModeChangedEvent)
         {
            _loc2_ = TargetingInputModeChangedEvent(param1);
            if(!this.§final set each§ && _loc2_.enabled && !_loc2_.§5214234830234843123423632234§)
            {
               §521423127992312812123423632234§(0);
            }
            this.§final set each§ = _loc2_.enabled;
         }
      }
      
      public function §break set override§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§set use super§ = 16;
         }
         else
         {
            this.§set use super§ = 0;
            §const var import§ &= ~0x10;
         }
      }
      
      private function §each const break§(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         var _loc5_:GameActionEnum = §extends package override§.getBindingAction(param1.keyCode,false);
         if(!_loc5_)
         {
            return;
         }
         var _loc4_:int = §const var import§;
         var _loc3_:Boolean = param1.type == "keyDown";
         switch(_loc5_)
         {
            case GameActionEnum.CHASSIS_FORWARD_MOVEMENT:
               _loc4_ = §throw for continue§.§return finally§(§const var import§,0,_loc3_);
               break;
            case GameActionEnum.CHASSIS_BACKWARD_MOVEMENT:
               _loc4_ = §throw for continue§.§return finally§(§const var import§,1,_loc3_);
               break;
            case GameActionEnum.CHASSIS_LEFT_MOVEMENT:
               _loc4_ = §throw for continue§.§return finally§(§const var import§,2,_loc3_);
               break;
            case GameActionEnum.CHASSIS_RIGHT_MOVEMENT:
               _loc4_ = §throw for continue§.§return finally§(§const var import§,3,_loc3_);
         }
         if(_loc4_ != §const var import§)
         {
            _loc2_ = _loc4_ | this.§set use super§;
            §521423127992312812123423632234§(_loc2_);
         }
      }
      
      override public function close() : void
      {
         super.close();
         §5214235917235930123423632234§.stage.removeEventListener("keyDown",this.§each const break§);
         §5214235917235930123423632234§.stage.removeEventListener("keyUp",this.§each const break§);
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§521423128212312834123423632234§);
         §with set include§.removeBattleEventListener(TargetingInputModeChangedEvent,this);
      }
      
      private function §521423128212312834123423632234§(param1:Event) : void
      {
         §521423127992312812123423632234§(0);
      }
      
      override protected function §package use final§(param1:int) : void
      {
         this.§5214234460234473123423632234§.onChassisControlChanged(param1);
      }
   }
}

