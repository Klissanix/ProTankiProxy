package alternativa.tanks.models.battle.battlefield
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import flash.events.KeyboardEvent;
   
   public class SpectatorFogToggleSupport
   {
      
      public static var §5214234893234906123423632234§:IDisplay;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §5214237996238009123423632234§:uint = 119;
      
      public function SpectatorFogToggleSupport()
      {
         super();
         §5214234893234906123423632234§.stage.addEventListener("keyDown",this.onKeyDown);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 119 && !§521423131302313143123423632234§.isInputLocked())
         {
            §52142380523818123423632234§.getBattleScene3D().§521423113552311368123423632234§();
         }
      }
      
      public function close() : void
      {
         §5214234893234906123423632234§.stage.removeEventListener("keyDown",this.onKeyDown);
      }
   }
}

