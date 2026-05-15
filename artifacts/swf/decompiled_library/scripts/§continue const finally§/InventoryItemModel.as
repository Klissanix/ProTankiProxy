package §continue const finally§
{
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import flash.utils.Dictionary;
   import §function implements§.§521423117452311758123423632234§;
   import §function implements§.§break for in§;
   import §override catch default§.Long;
   
   public class InventoryItemModel extends §521423117452311758123423632234§ implements §break for in§, §5214233525233538123423632234§
   {
      
      public static var §with set include§:BattleEventDispatcher;
      
      private var §521423122162312229123423632234§:§finally set var§;
      
      private var §521423131242313137123423632234§:Dictionary = new Dictionary();
      
      public function InventoryItemModel()
      {
         super();
      }
      
      public function activated(param1:String, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:InventoryItem = this.§521423131242313137123423632234§[param1];
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.startCooldown(param2);
         if(param3)
         {
            --_loc4_.count;
         }
         this.§521423122162312229123423632234§.itemActivated(_loc4_);
      }
      
      public function updateCount(param1:String, param2:int) : void
      {
         var _loc3_:InventoryItem = this.§521423131242313137123423632234§[param1];
         if(_loc3_ != null)
         {
            if(_loc3_.count <= 0 && param2 > 0)
            {
               InventoryModel(modelRegistry.getModel(Long.getLong(-1967712540,-458647807))).initItemSlot(_loc3_);
            }
            _loc3_.count = param2;
            InventoryModel(modelRegistry.getModel(Long.getLong(-1967712540,-458647807))).itemUpdateCount(_loc3_);
         }
      }
      
      public function initObject(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         if(this.§521423122162312229123423632234§ == null)
         {
            this.§521423122162312229123423632234§ = §finally set var§(modelRegistry.getModel(Long.getLong(-1967712540,-458647807)));
         }
         var _loc6_:InventoryItem = new InventoryItem(param1,param4,param2,(param5 + param3) * 1000);
         this.§521423131242313137123423632234§[param1] = _loc6_;
         var _loc7_:int = param4 - 1;
         this.§521423122162312229123423632234§.assignItemToSlot(_loc6_,_loc7_);
      }
      
      public function requestActivation(param1:InventoryItem) : void
      {
         if(param1.canActivate())
         {
            this.activate(param1.getItemID());
         }
      }
      
      private function activate(param1:String) : void
      {
         §with set include§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.activate(param1);
      }
   }
}

