package §5214234056234069123423632234§
{
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §set package in§.ClientObject;
   
   public class §switch switch default§ implements §if use default§, §521423117662311779123423632234§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §native switch include§:ModelRegistry;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §const const finally§:ClientObject;
      
      private var §521423119912312004123423632234§:int;
      
      public function §switch switch default§(param1:ClientObject, param2:int)
      {
         super();
         this.§const const finally§ = param1;
         this.§521423119912312004123423632234§ = param2;
         §with set include§.addBattleEventListener(TankAddedToBattleEvent,this);
      }
      
      public function close() : void
      {
         this.§const const finally§ = null;
         §with set include§.removeBattleEventListener(TankAddedToBattleEvent,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§5214232742232755123423632234§ = null;
         var _loc3_:TankAddedToBattleEvent = TankAddedToBattleEvent(param1);
         if(_loc3_.tank == §5214237923237936123423632234§.getTankData(this.§const const finally§).§521423122212312234123423632234§)
         {
            _loc2_ = §5214232742232755123423632234§(§native switch include§.getModel(Long.getLong(170775304,-1579436046)));
            _loc2_.§implements const import§(_loc3_.tank,this.§521423119912312004123423632234§);
            this.close();
         }
      }
   }
}

