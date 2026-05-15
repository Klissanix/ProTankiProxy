package §return catch implements§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   
   public class ControlsMiniHelp extends Sprite
   {
      
      public static var §else var include§:IHelpService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §break use package§:Bitmap;
      
      private var §521423139102313923123423632234§:Bitmap;
      
      public function ControlsMiniHelp()
      {
         super();
         this.§break use package§ = new Bitmap(§5214236363236376123423632234§.getImage("HELP_CONTROLS_MINI"));
         this.§521423139102313923123423632234§ = new Bitmap(§5214236363236376123423632234§.getImage("HELP_MOUSE_MINI"));
         addEventListener("click",a2bdc92f);
         this.setTargetingMode(1);
      }
      
      private static function a2bdc92f(param1:MouseEvent) : void
      {
         §else var include§.showHelp();
         param1.stopPropagation();
      }
      
      public function setTargetingMode(param1:int) : void
      {
         if(this.§break use package§.parent != null)
         {
            removeChild(this.§break use package§);
         }
         if(this.§521423139102313923123423632234§.parent != null)
         {
            removeChild(this.§521423139102313923123423632234§);
         }
         if(param1 == 1)
         {
            addChild(this.§break use package§);
         }
         else
         {
            addChild(this.§521423139102313923123423632234§);
         }
      }
   }
}

