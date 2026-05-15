package alternativa.tanks.bg
{
   import flash.geom.Rectangle;
   
   public interface IBackgroundService
   {
      
      function hideBg() : void;
      
      function drawBg(param1:Rectangle = null) : void;
      
      function showBg() : void;
   }
}

