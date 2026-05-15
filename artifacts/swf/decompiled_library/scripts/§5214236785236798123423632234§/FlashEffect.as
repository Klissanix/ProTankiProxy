package §5214236785236798123423632234§
{
   import alternativa.tanks.service.fps.FPSService;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.ColorTransform;
   
   public class FlashEffect extends EventDispatcher
   {
      
      public static var §521423130032313016123423632234§:FPSService;
      
      private const §catch use§:Number = 1.25;
      
      private var numFrames:int;
      
      private var A:Number;
      
      private var §5214234579234592123423632234§:int;
      
      private var target:DisplayObject;
      
      public function FlashEffect()
      {
         super();
      }
      
      public static function flash(param1:DisplayObject) : void
      {
         var _loc2_:FlashEffect = new FlashEffect();
         _loc2_.flash(param1);
      }
      
      public function flash(param1:DisplayObject) : void
      {
         this.numFrames = Math.ceil(§521423130032313016123423632234§.getFps() * 1.25);
         this.A = 4 / (this.numFrames * this.numFrames);
         this.target = param1;
         param1.addEventListener("enterFrame",this.f5c5eb56);
         this.§5214234579234592123423632234§ = 0;
      }
      
      private function f5c5eb56(param1:Event) : void
      {
         ++this.§5214234579234592123423632234§;
         if(this.§5214234579234592123423632234§ == this.numFrames)
         {
            this.stop();
            dispatchEvent(new Event("complete"));
            return;
         }
         var _loc2_:Number = 1 - this.A * (this.§5214234579234592123423632234§ * (this.§5214234579234592123423632234§ - this.numFrames));
         this.setTransform(this.target,_loc2_);
      }
      
      private function setTransform(param1:DisplayObject, param2:Number) : void
      {
         param1.transform.colorTransform = new ColorTransform(param2,param2,param2);
      }
      
      public function stop() : void
      {
         if(this.target != null)
         {
            this.setTransform(this.target,1);
            this.target.removeEventListener("enterFrame",this.f5c5eb56);
            this.target = null;
         }
      }
   }
}

