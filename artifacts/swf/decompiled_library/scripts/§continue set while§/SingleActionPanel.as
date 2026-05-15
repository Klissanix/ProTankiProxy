package §continue set while§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import §false switch if§.§do switch include§;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class SingleActionPanel implements §521423117662311779123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      protected var §super package case§:§do switch include§;
      
      private var §521423138202313833123423632234§:Function;
      
      public function SingleActionPanel(param1:String, param2:Function)
      {
         super();
         this.§super package case§ = new §do switch include§();
         this.§521423138202313833123423632234§ = param2;
         this.§super package case§.label = §5214236363236376123423632234§.getText(param1);
         this.§super package case§.visible = param2 != null;
         this.§super package case§.addEventListener("click",this.e17777e6);
         this.§super package case§.x = 11;
      }
      
      public function updateActionElements(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this.§super package case§);
      }
      
      public function get enabled() : Boolean
      {
         return this.§super package case§.enabled;
      }
      
      private function e17777e6(param1:MouseEvent) : void
      {
         this.§521423138202313833123423632234§();
      }
      
      public function close() : void
      {
         this.§super package case§.removeEventListener("click",this.e17777e6);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§super package case§.enabled = param1;
      }
   }
}

