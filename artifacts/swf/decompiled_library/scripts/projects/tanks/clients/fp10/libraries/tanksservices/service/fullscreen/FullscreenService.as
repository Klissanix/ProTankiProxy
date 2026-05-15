package projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen
{
   public interface FullscreenService
   {
      
      function switchFullscreen() : void;
      
      function isAvailable() : Boolean;
      
      function isFullScreenNow() : Boolean;
      
      function isMouseLocked() : Boolean;
      
      function isStandAlone() : Boolean;
      
      function isMouseLockDisabled() : Boolean;
      
      function requestMouseLock() : void;
   }
}

