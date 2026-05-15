package alternativa.tanks.services.battleinput
{
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import §finally catch with§.§5214238205238218123423632234§;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class BattleInputServiceImpl extends EventDispatcher implements BattleInputService
   {
      
      public static var §extends package override§:KeysBindingService;
      
      private const §case switch for§:§5214238205238218123423632234§ = new §5214238205238218123423632234§();
      
      private var §521423113112311324123423632234§:Dictionary = new Dictionary();
      
      private const §switch package switch§:Vector.<§default catch break§> = new Vector.<§default catch break§>();
      
      private const §5214234595234608123423632234§:Dictionary = new Dictionary();
      
      public function BattleInputServiceImpl(param1:Stage)
      {
         super();
      }
      
      public function unlock(param1:BattleInputLockType) : void
      {
         var _loc2_:Boolean = this.b396abd7();
         var _loc3_:Boolean = this.isInputLocked();
         this.§case switch for§.§5214237892237905123423632234§(param1.getMask());
         if(_loc2_ && !this.b396abd7())
         {
            dispatchEvent(new BattleInputLockEvent("BattleInputLockEvent.CHAT_UNLOCKED"));
         }
         if(_loc3_ && !this.isInputLocked())
         {
            dispatchEvent(new BattleInputLockEvent("BattleInputLockEvent.INPUT_UNLOCKED"));
         }
      }
      
      private function e61cb6bb() : Boolean
      {
         return this.§case switch for§.§use catch get§();
      }
      
      public function isInputLocked() : Boolean
      {
         return !this.§case switch for§.§use catch get§();
      }
      
      public function lock(param1:BattleInputLockType) : void
      {
         var _loc2_:Boolean = this.b396abd7();
         var _loc3_:Boolean = this.isInputLocked();
         this.§case switch for§.§dynamic use throw§(param1.getMask());
         if(!_loc2_ && this.b396abd7())
         {
            dispatchEvent(new BattleInputLockEvent("BattleInputLockEvent.CHAT_LOCKED"));
         }
         if(!_loc3_ && this.isInputLocked())
         {
            dispatchEvent(new BattleInputLockEvent("BattleInputLockEvent.INPUT_LOCKED"));
         }
      }
      
      private function b396abd7() : Boolean
      {
         return this.§case switch for§.§52142393323946123423632234§(BattleInputLockType.§final package false§.getMask());
      }
   }
}

