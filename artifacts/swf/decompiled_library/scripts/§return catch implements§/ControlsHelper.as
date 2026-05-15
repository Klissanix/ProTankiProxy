package §return catch implements§
{
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.Helper;
   
   public class ControlsHelper extends Helper
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §5214231315231328123423632234§:String = "Tank.ControlsHelper";
      
      public static const §52142368323696123423632234§:int = 1;
      
      private var §5214237998238011123423632234§:Bitmap;
      
      public function ControlsHelper()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§5214237998238011123423632234§ = new Bitmap(§5214236363236376123423632234§.getImage("FULL_BATTLE_HELP"));
         addChild(this.§5214237998238011123423632234§);
         §5214231245231258123423632234§ = 10;
         §5214238801238814123423632234§ = 8000;
      }
      
      override public function align(param1:int, param2:int) : void
      {
         this.§5214237998238011123423632234§.scaleX = this.§5214237998238011123423632234§.scaleY = 1 / Display.§521423132512313264123423632234§;
         this.§5214237998238011123423632234§.x = (param1 - this.§5214237998238011123423632234§.width) / 2;
         this.§5214237998238011123423632234§.y = (param2 - this.§5214237998238011123423632234§.height) / 2;
      }
   }
}

