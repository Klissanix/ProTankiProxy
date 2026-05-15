package alternativa.tanks.service.garage
{
   import alternativa.tanks.gui.GarageWindow;
   
   public class GarageServiceImpl implements GarageService
   {
      
      private var view:GarageWindow;
      
      public function GarageServiceImpl()
      {
         super();
      }
      
      public function getView() : GarageWindow
      {
         return this.view;
      }
      
      public function registerView(param1:GarageWindow) : void
      {
         this.view = param1;
      }
      
      public function unregisterView() : void
      {
         this.view = null;
      }
   }
}

