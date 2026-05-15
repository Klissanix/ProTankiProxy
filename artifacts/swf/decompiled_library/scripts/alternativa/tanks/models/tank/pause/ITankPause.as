package alternativa.tanks.models.tank.pause
{
   public interface ITankPause
   {
      
      function disablePause() : void;
      
      function enablePause() : void;
      
      function resetIdleKickTime() : void;
   }
}

