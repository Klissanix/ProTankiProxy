package alternativa.tanks.services.battlereadiness
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class BattleReadinessServiceImpl implements BattleReadinessService
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §521423101112310124123423632234§:ILoaderWindowService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private var §package set static§:Boolean;
      
      private var §return set const§:Boolean;
      
      public function BattleReadinessServiceImpl()
      {
         super();
      }
      
      public function isBattleReady() : Boolean
      {
         return this.§package set static§ && this.§return set const§;
      }
      
      public function isMapReady() : Boolean
      {
         return this.§package set static§;
      }
      
      public function unlockUser() : void
      {
         if(!this.§return set const§)
         {
            this.§return set const§ = true;
            this.d70a0aa3();
         }
      }
      
      private function d70a0aa3() : void
      {
         if(this.isBattleReady())
         {
            §continue for final§.setBattleReady(true);
            §521423101112310124123423632234§.hideLoaderWindow();
            §52142380523818123423632234§.unlockBattle();
         }
      }
      
      public function unlockMap() : void
      {
         if(!this.§package set static§)
         {
            this.§package set static§ = true;
            this.d70a0aa3();
         }
      }
      
      public function reset() : void
      {
         §continue for final§.setBattleReady(false);
         this.§package set static§ = false;
         this.§return set const§ = false;
      }
   }
}

