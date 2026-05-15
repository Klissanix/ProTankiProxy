package alternativa.tanks.service.fps
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class FPSServiceImpl implements FPSService
   {
      
      public static var display:IDisplay;
      
      private var fps:Number;
      
      private var §if switch default§:Number;
      
      private var §do use super§:int;
      
      private var numFrames:int;
      
      private var §static const while§:Boolean;
      
      private var §set var var§:Boolean;
      
      public function FPSServiceImpl()
      {
         super();
      }
      
      public function getFps() : Number
      {
         return this.fps;
      }
      
      private function c69ff9b2(param1:Event) : void
      {
         if(param1.target == display.stage)
         {
            display.stage.addEventListener("activate",this.a3067026);
            this.§static const while§ = true;
         }
      }
      
      public function getFrameTimeMS() : Number
      {
         return this.§if switch default§;
      }
      
      public function start() : void
      {
         this.b4a10667(display.stage.frameRate);
         display.stage.addEventListener("enterFrame",this.e1d1903);
         display.stage.addEventListener("deactivate",this.c69ff9b2);
         this.§static const while§ = false;
         this.§set var var§ = true;
      }
      
      private function a3067026(param1:Event) : void
      {
         if(param1.target == display.stage)
         {
            display.stage.removeEventListener("activate",this.a3067026);
            this.§static const while§ = false;
            this.§set var var§ = true;
         }
      }
      
      private function e1d1903(param1:Event) : void
      {
         if(this.§static const while§)
         {
            return;
         }
         if(this.§set var var§)
         {
            this.§do use super§ = getTimer();
            this.numFrames = 0;
            this.§set var var§ = false;
            return;
         }
         var _loc2_:int = getTimer();
         ++this.numFrames;
         if(_loc2_ - this.§do use super§ > 2000)
         {
            this.b4a10667(1000 * this.numFrames / (_loc2_ - this.§do use super§));
            this.§do use super§ = _loc2_;
            this.numFrames = 0;
         }
      }
      
      private function b4a10667(param1:Number) : void
      {
         this.fps = param1;
         this.§if switch default§ = 1000 / param1;
      }
   }
}

