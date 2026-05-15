package alternativa.tanks.service.panel
{
   import §521423106142310627123423632234§.Alert;
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214232607232620123423632234§.§function set else§;
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.EventDispatcher;
   
   public class PanelView extends EventDispatcher implements IPanelView
   {
      
      public static var display:IDisplay;
      
      private var panel:§function set else§;
      
      public function PanelView()
      {
         super();
      }
      
      public function getPanel() : §function set else§
      {
         return this.panel;
      }
      
      public function lock() : void
      {
         this.panel.mouseEnabled = false;
         this.panel.mouseChildren = false;
      }
      
      public function setPanel(param1:Boolean, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.panel = new §function set else§();
      }
      
      public function unlock() : void
      {
         this.panel.mouseEnabled = true;
         this.panel.mouseChildren = true;
      }
      
      public function showAlert(param1:String) : void
      {
         var _loc2_:Alert = new Alert();
         _loc2_.showAlert(param1,Vector.<String>([AlertAnswer.OK]));
         display.dialogsLayer.addChild(_loc2_);
      }
   }
}

