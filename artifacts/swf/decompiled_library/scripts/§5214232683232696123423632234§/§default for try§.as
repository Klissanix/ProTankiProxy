package §5214232683232696123423632234§
{
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §default for try§ implements §521423117662311779123423632234§
   {
      
      public static var §5214236492236505123423632234§:BattleInputService;
      
      private var §final implements§:§if package final§;
      
      public function §default for try§(param1:§if package final§)
      {
         super();
         this.§final implements§ = param1;
         §5214236492236505123423632234§.addEventListener("BattleInputLockEvent.CHAT_LOCKED",this.§with switch else§);
         §5214236492236505123423632234§.addEventListener("BattleInputLockEvent.CHAT_UNLOCKED",this.§override package true§);
      }
      
      private function §override package true§(param1:BattleInputLockEvent) : void
      {
         this.§final implements§.locked = false;
      }
      
      public function close() : void
      {
         §5214236492236505123423632234§.removeEventListener("BattleInputLockEvent.CHAT_LOCKED",this.§with switch else§);
         §5214236492236505123423632234§.removeEventListener("BattleInputLockEvent.CHAT_UNLOCKED",this.§override package true§);
         this.§final implements§ = null;
      }
      
      private function §with switch else§(param1:BattleInputLockEvent) : void
      {
         this.§final implements§.§function switch static§();
         this.§final implements§.locked = true;
      }
   }
}

