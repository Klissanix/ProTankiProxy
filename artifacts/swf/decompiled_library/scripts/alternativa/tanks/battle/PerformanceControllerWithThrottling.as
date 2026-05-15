package alternativa.tanks.battle
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.PerformanceController;
   import alternativa.tanks.service.settings.ISettingsService;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class PerformanceControllerWithThrottling extends PerformanceController
   {
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private var stage:Stage;
      
      private var §else for set§:Boolean = false;
      
      public function PerformanceControllerWithThrottling()
      {
         super();
      }
      
      override public function stop() : void
      {
         super.stop();
         this.stage.removeEventListener("activate",this.a3067026);
         this.stage.removeEventListener("deactivate",this.c69ff9b2);
         this.stage = null;
      }
      
      private function c69ff9b2(param1:Event) : void
      {
         block = true;
      }
      
      private function a3067026(param1:Event) : void
      {
         block = false;
      }
      
      private function init() : void
      {
         if(!this.§else for set§)
         {
            addFeature("shadows",0.2,true);
            addFeature("shadowMap",0.2,false);
            addFeature("deferredLighting",0.2,false);
            if(!§5214232551232564123423632234§.forceDisabledTankShadows)
            {
               addFeature("fog",0.2,true);
            }
            addFeature("softTransparency",0.2,false);
            addFeature("ssao",0.2,false);
            addFeature("antiAlias",0.2,false);
            this.§else for set§ = true;
         }
      }
      
      public function start1(param1:Stage, param2:Camera3D, param3:String) : void
      {
         this.init();
         this.stage = param1;
         param1.addEventListener("activate",this.a3067026);
         param1.addEventListener("deactivate",this.c69ff9b2);
         start(param1,param2,30,0.15,20,5,1,param3);
      }
   }
}

