package alternativa.tanks.service.settings.keybinding
{
   import flash.events.Event;
   
   public class KeyBindingChangeEvent extends Event
   {
      
      public static const §5214231868231881123423632234§:String = "a483e340 changed: ";
      
      private var §521423138202313833123423632234§:GameActionEnum;
      
      public function KeyBindingChangeEvent(param1:String, param2:GameActionEnum)
      {
         super(param1,true,false);
         this.§521423138202313833123423632234§ = param2;
      }
      
      public function getAction() : GameActionEnum
      {
         return this.§521423138202313833123423632234§;
      }
   }
}

