package alternativa.tanks.battle.events
{
   import flash.utils.Dictionary;
   
   public class BattleEventSupport implements §if use default§
   {
      
      private var dispatcher:BattleEventDispatcher;
      
      private var listener:§if use default§;
      
      private var §521423106872310700123423632234§:Dictionary;
      
      public function BattleEventSupport(param1:BattleEventDispatcher, param2:§if use default§ = null)
      {
         super();
         this.§521423106872310700123423632234§ = new Dictionary();
         this.dispatcher = param1;
         if(param2 == null)
         {
            param2 = this;
         }
         this.listener = param2;
      }
      
      public function dispatchEvent(param1:Object) : void
      {
         this.dispatcher.dispatchEvent(param1);
      }
      
      public function deactivateHandlers() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§521423106872310700123423632234§)
         {
            this.dispatcher.removeBattleEventListener(_loc1_,this.listener);
         }
      }
      
      public function activateHandlers() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§521423106872310700123423632234§)
         {
            this.dispatcher.addBattleEventListener(_loc1_,this.listener);
         }
      }
      
      public function addEventHandler(param1:Class, param2:Function) : void
      {
         this.§521423106872310700123423632234§[param1] = param2;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:Function = this.§521423106872310700123423632234§[param1.constructor];
         if(_loc2_ != null)
         {
            _loc2_(param1);
         }
      }
   }
}

