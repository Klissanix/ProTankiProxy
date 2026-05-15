package alternativa.tanks.service.garage
{
   import alternativa.tanks.gui.GarageWindow;
   
   public interface GarageService
   {
      
      function registerView(param1:GarageWindow) : void;
      
      function getView() : GarageWindow;
      
      function unregisterView() : void;
   }
}

