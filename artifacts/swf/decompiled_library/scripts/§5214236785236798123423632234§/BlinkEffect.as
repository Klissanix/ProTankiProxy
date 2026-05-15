package §5214236785236798123423632234§
{
   import alternativa.tanks.service.fps.FPSService;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class BlinkEffect
   {
      
      public static var §521423130032313016123423632234§:FPSService;
      
      private var state:int;
      
      private var §function use try§:DisplayObject;
      
      private var §5214234335234348123423632234§:Number = 0.15;
      
      private var §5214232167232180123423632234§:Number = 0.3;
      
      public function BlinkEffect(param1:Number = 0.15, param2:Number = 0.3)
      {
         super();
         this.§5214234335234348123423632234§ = param1;
         this.§5214232167232180123423632234§ = param2;
      }
      
      private function f5c5eb56(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = Math.ceil(this.§5214234335234348123423632234§ * §521423130032313016123423632234§.getFps());
         _loc3_ = Math.ceil(this.§5214232167232180123423632234§ * §521423130032313016123423632234§.getFps());
         ++this.state;
         if(this.state < _loc2_)
         {
            this.§function use try§.alpha = 1;
         }
         else if(this.state < _loc2_ + _loc3_)
         {
            this.§function use try§.alpha = 1 - (this.state - _loc2_) / _loc3_;
         }
         else if(this.state < _loc2_ + _loc3_ + _loc2_)
         {
            this.§function use try§.alpha = 0;
         }
         else if(this.state < _loc2_ + _loc3_ + _loc2_ + _loc3_)
         {
            this.§function use try§.alpha = (this.state - _loc2_ - _loc3_ - _loc2_) / _loc3_;
         }
         else
         {
            this.§function use try§.alpha = 1;
            this.state = 0;
         }
      }
      
      public function start(param1:DisplayObject) : void
      {
         this.stop();
         this.§function use try§ = param1;
         this.state = 0;
         param1.alpha = 1;
         param1.addEventListener("enterFrame",this.f5c5eb56);
      }
      
      public function stop() : void
      {
         if(this.§function use try§ != null)
         {
            this.§function use try§.removeEventListener("enterFrame",this.f5c5eb56);
            this.§function use try§.alpha = 1;
            this.§function use try§ = null;
         }
      }
   }
}

