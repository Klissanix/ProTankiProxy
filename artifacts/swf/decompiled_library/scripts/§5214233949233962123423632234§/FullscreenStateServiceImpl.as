package §5214233949233962123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.FullScreenEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   
   public class FullscreenStateServiceImpl implements FullscreenStateService
   {
      
      private static const §52142314923162123423632234§:int = 250;
      
      private var §5214234653234666123423632234§:Boolean;
      
      private var §5214235651235664123423632234§:uint;
      
      public function FullscreenStateServiceImpl(param1:IDisplay, param2:Boolean)
      {
         super();
         if(param2)
         {
            param1.stage.addEventListener("fullScreen",this.f14ca360);
            this.§5214234653234666123423632234§ = param1.stage.displayState != "normal";
         }
      }
      
      private function e236e117() : void
      {
         this.§5214234653234666123423632234§ = false;
      }
      
      public function isFullscreen() : Boolean
      {
         return this.§5214234653234666123423632234§;
      }
      
      private function f14ca360(param1:FullScreenEvent) : void
      {
         clearTimeout(this.§5214235651235664123423632234§);
         if(param1.fullScreen)
         {
            this.§5214234653234666123423632234§ = true;
         }
         else
         {
            this.§5214235651235664123423632234§ = setTimeout(this.e236e117,250);
         }
      }
   }
}

