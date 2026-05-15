package §521423131192313132123423632234§
{
   import §5214231637231650123423632234§.§5214232277232290123423632234§;
   import §5214231637231650123423632234§.§5214236651236664123423632234§;
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.tanks.service.clan.ClanPanelNotificationService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutServiceEvent;
   
   public class §import package false§ extends §5214236651236664123423632234§ implements §5214232277232290123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §521423108572310870123423632234§:ClanPanelNotificationService;
      
      public static var §switch use var§:ClanUserService;
      
      private var §finally package with§:Long;
      
      public function §import package false§()
      {
         super();
      }
      
      public function §5214233734233747123423632234§(param1:Long) : void
      {
         this.§finally package with§ = null;
         §521423108572310870123423632234§.remove();
      }
      
      private function §521423130582313071123423632234§() : void
      {
         var _loc1_:§521423120252312038123423632234§ = null;
         if(this.§finally package with§ != null)
         {
            _loc1_ = §switch use var§.getObjectById(this..clanId);
            §521423120492312062123423632234§.§5214237599237612123423632234§(_loc1_.name);
         }
      }
      
      private function §5214233982233995123423632234§(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state == LayoutState.CLAN)
         {
            this.§521423130582313071123423632234§();
         }
      }
      
      public function §5214232305232318123423632234§(param1:Long) : void
      {
         this.§finally package with§ = param1;
         §521423108572310870123423632234§.add();
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",getFunctionWrapper(this.§5214233982233995123423632234§));
         if(§switch var switch§().§5214237990238003123423632234§.length > 0)
         {
            this.§finally package with§ = §switch var switch§().§5214237990238003123423632234§[0];
         }
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",getFunctionWrapper(this.§5214233982233995123423632234§));
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
   }
}

