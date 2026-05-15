package §5214233949233962123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.system.Capabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   
   public class FullscreenServiceImpl implements FullscreenService
   {
      
      private static const §521423113782311391123423632234§:String = "StandAlone";
      
      private static const §5214239475239488123423632234§:String = "Desktop";
      
      private var §function const use§:IDisplay;
      
      private var §include set final§:Boolean;
      
      private var §else package set§:Boolean;
      
      public function FullscreenServiceImpl(param1:IDisplay)
      {
         super();
         this.§function const use§ = param1;
         this.§include set final§ = false;
         this.§else package set§ = Capabilities.playerType == "StandAlone" || Capabilities.playerType == "Desktop";
      }
      
      private function deactivate() : void
      {
         this.§function const use§.stage.displayState = "normal";
      }
      
      public function isFullScreenNow() : Boolean
      {
         return this.§function const use§.stage.displayState == "fullScreenInteractive";
      }
      
      public function requestMouseLock() : void
      {
         if(this.isFullScreenNow() && this.isAvailable() && !this.isMouseLockDisabled())
         {
            this.§function const use§.stage.mouseLock = true;
         }
      }
      
      public function isMouseLocked() : Boolean
      {
         return this.a597a037() ? this.§function const use§.stage.mouseLock : false;
      }
      
      public function isMouseLockDisabled() : Boolean
      {
         return this.§include set final§;
      }
      
      public function isStandAlone() : Boolean
      {
         return this.§else package set§;
      }
      
      public function switchFullscreen() : void
      {
         if(this.§function const use§.stage.displayState == "normal")
         {
            this.activate();
         }
         else
         {
            this.deactivate();
         }
      }
      
      public function isAvailable() : Boolean
      {
         if(Capabilities.version.charAt() == "A")
         {
            return false;
         }
         var _loc1_:Array = this.c5642ffb();
         return int(_loc1_[0]) == 11 && int(_loc1_[1]) >= 3 || int(_loc1_[0]) > 11;
      }
      
      private function activate() : void
      {
         if(this.isAvailable())
         {
            this.§function const use§.stage.displayState = "fullScreenInteractive";
         }
      }
      
      private function a597a037() : Boolean
      {
         return this.§function const use§.stage.displayState != "normal";
      }
      
      private function c5642ffb() : Array
      {
         return Capabilities.version.substr(Capabilities.version.indexOf(" ") + 1).split(",");
      }
   }
}

