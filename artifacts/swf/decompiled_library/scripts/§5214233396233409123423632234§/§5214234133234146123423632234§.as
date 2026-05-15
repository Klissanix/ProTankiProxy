package §5214233396233409123423632234§
{
   import §5214231644231657123423632234§.§continue for case§;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import alternativa.tanks.service.clan.user.ClanUserServiceEvent;
   import alternativa.tanks.service.panel.IPanelView;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import services.buttonbar.IButtonBarService;
   import §while set with§.§5214232631232644123423632234§;
   import §while set with§.§5214233307233320123423632234§;
   
   public class §5214234133234146123423632234§ extends §5214233307233320123423632234§ implements §5214232631232644123423632234§, §5214234168234181123423632234§, §throw catch var§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §52142384323856123423632234§:IButtonBarService;
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §521423101112310124123423632234§:ILoaderWindowService;
      
      public static var §import use with§:IPanelView;
      
      public function §5214234133234146123423632234§()
      {
         super();
      }
      
      private function §if var false§(param1:ClanUserServiceEvent) : void
      {
         §521423120492312062123423632234§.§include catch do§();
      }
      
      public function objectLoadedPost() : void
      {
         §switch use var§.addEventListener("ClanUserServiceEvent.HIDE_CLAN_WINDOW",this.§if var false§);
      }
      
      public function objectUnloaded() : void
      {
         §switch use var§.removeEventListener("ClanUserServiceEvent.HIDE_CLAN_WINDOW",getFunctionWrapper(this.§if var false§));
         if(§const for import§.notInClanPanel != null)
         {
            §const for import§.notInClanPanel.destroy();
         }
      }
      
      public function §dynamic package each§() : void
      {
         §521423101112310124123423632234§.hideLoaderWindow();
         var _loc1_:§continue for case§ = new §continue for case§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         §const for import§.notInClanPanel = _loc1_;
      }
      
      public function §5214235312235325123423632234§() : void
      {
         §521423120492312062123423632234§.§5214235312235325123423632234§();
      }
   }
}

