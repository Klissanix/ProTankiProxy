package alternativa.tanks.models.statistics
{
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §return catch implements§.ControlsHelper;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class ControlsHelpSupport implements §521423117662311779123423632234§
   {
      
      public static var §else var include§:IHelpService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private var §case package dynamic§:ControlsHelper;
      
      public function ControlsHelpSupport()
      {
         super();
         this.init();
      }
      
      private static function c745b859(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state == LayoutState.BATTLE)
         {
            e765f463();
         }
      }
      
      private static function e765f463() : void
      {
         §else var include§.unregisterHelper("Tank.ControlsHelper",1);
      }
      
      private function b2914900(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state == LayoutState.BATTLE)
         {
            this.b4ffbf14();
         }
      }
      
      public function close() : void
      {
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",c745b859);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
         e765f463();
         this.§case package dynamic§ = null;
      }
      
      private function init() : void
      {
         this.§case package dynamic§ = new ControlsHelper();
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",c745b859);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.b2914900);
      }
      
      private function b4ffbf14() : void
      {
         §else var include§.registerHelper("Tank.ControlsHelper",1,this.§case package dynamic§,true);
      }
   }
}

