package §5214236914236927123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §521423119352311948123423632234§.§5214237558237571123423632234§;
   import §521423132072313220123423632234§.§5214233197233210123423632234§;
   import §521423132072313220123423632234§.§dynamic finally switch§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.battlefield.§else catch switch§;
   import §class set do§.§52142318623199123423632234§;
   import flash.utils.Dictionary;
   import §import catch implements§.§5214236921236934123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BattlefieldBonusesModel extends §5214233197233210123423632234§ implements §dynamic finally switch§, §if use default§, §else catch switch§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var bonuses:Dictionary = new Dictionary();
      
      private var §true set break§:int;
      
      public function BattlefieldBonusesModel()
      {
         super();
         §with set include§.addBattleEventListener(BattleFinishEvent,this);
      }
      
      public function spawnBonuses(param1:Vector.<§5214236921236934123423632234§>) : void
      {
         var _loc2_:§5214236921236934123423632234§ = null;
         if(param1 != null)
         {
            for each(_loc2_ in param1)
            {
               this.a41da0f5(_loc2_.§5214234940234953123423632234§,_loc2_.§521423101402310153123423632234§,_loc2_.§catch package try§,0);
            }
         }
      }
      
      public function bonusTaken(param1:String) : void
      {
         var _loc2_:§52142318623199123423632234§ = this.bonuses[param1];
         if(_loc2_ != null)
         {
            delete this.bonuses[param1];
            _loc2_.pickup();
         }
      }
      
      private function e307fd3d(param1:§52142318623199123423632234§) : void
      {
         §with set include§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function c730161b() : void
      {
         var _loc1_:§5214236921236934123423632234§ = null;
         for each(_loc1_ in §switch var switch§().§include for try§)
         {
            this.a41da0f5(_loc1_.§5214234940234953123423632234§,_loc1_.§521423101402310153123423632234§,_loc1_.§catch package try§,_loc1_.§var set default§);
         }
         this.§true set break§ = §switch var switch§().§true set break§;
         §switch var switch§().§include for try§ = null;
      }
      
      public function onBattleLoaded() : void
      {
         this.c730161b();
      }
      
      private function a41da0f5(param1:§521423120252312038123423632234§, param2:String, param3:§52142320823221123423632234§, param4:int) : void
      {
         var _loc5_:§5214237558237571123423632234§ = null;
         var _loc6_:§52142318623199123423632234§ = null;
         if(param1 != null)
         {
            _loc5_ = §5214237558237571123423632234§(modelRegistry.getModel(Long.getLong(-872532560,127564657)));
            _loc6_.spawn(new Vector3(param3.x,param3.y,param3.§continue package false§),param4,§switch var switch§().§true set break§,false,getFunctionWrapper(this.e307fd3d));
            this.bonuses[_loc6_.bonusId] = _loc6_;
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.e3e230c7();
      }
      
      private function removeBonus(param1:String) : void
      {
         var _loc2_:§52142318623199123423632234§ = this.bonuses[param1];
         if(_loc2_ != null)
         {
            delete this.bonuses[param1];
            _loc2_.remove();
         }
      }
      
      public function removeBonuses(param1:Vector.<String>) : void
      {
         var _loc2_:* = null;
         if(param1 != null)
         {
            for each(_loc2_ in param1)
            {
               this.removeBonus(_loc2_);
            }
         }
      }
      
      private function e3e230c7() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.bonuses)
         {
            this.removeBonus(_loc1_);
         }
      }
      
      public function attemptToTakeBonusFailedTankNotActive(param1:String) : void
      {
         var _loc2_:§52142318623199123423632234§ = this.bonuses[param1];
         if(_loc2_ != null)
         {
            _loc2_.enableTrigger();
         }
      }
   }
}

