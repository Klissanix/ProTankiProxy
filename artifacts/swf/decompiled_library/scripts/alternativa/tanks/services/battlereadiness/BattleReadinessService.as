package alternativa.tanks.services.battlereadiness
{
   public interface BattleReadinessService
   {
      
      function isMapReady() : Boolean;
      
      function reset() : void;
      
      function unlockMap() : void;
      
      function isBattleReady() : Boolean;
      
      function unlockUser() : void;
   }
}

