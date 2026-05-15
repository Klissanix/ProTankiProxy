package §5214235774235787123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.MainLoopExecutionErrorEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §set package in§.ClientObject;
   
   public class §native finally set§ implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §5214233072233085123423632234§:ClientObject;
      
      public function §native finally set§(param1:ClientObject)
      {
         super();
         this.§5214233072233085123423632234§ = param1;
         §with set include§.addBattleEventListener(MainLoopExecutionErrorEvent,this);
      }
      
      public function close() : void
      {
         this.§5214233072233085123423632234§ = null;
         §with set include§.removeBattleEventListener(MainLoopExecutionErrorEvent,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService));
         _loc2_.§5214233827233840123423632234§();
         _loc2_.§return use function§(this.§5214233072233085123423632234§,4);
         _loc2_.§5214237440237453123423632234§(this.§5214233072233085123423632234§).§get catch import§(4,false);
      }
   }
}

