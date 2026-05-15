package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Light3D;
   import §var set var§.§521423132492313262123423632234§;
   
   public class StreamLightEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §5214232317232330123423632234§:int = 250;
      
      protected var light:Light3D;
      
      protected var §521423126992312712123423632234§:LightAnimation;
      
      protected var §5214236583236596123423632234§:LightAnimation;
      
      protected var startTime:int;
      
      protected var §521423139562313969123423632234§:int;
      
      protected var §import catch extends§:int;
      
      protected var currentTime:int;
      
      protected var §set var var§:Boolean;
      
      protected var §if set in§:§class use return§;
      
      protected var alive:Boolean;
      
      protected var random:int;
      
      protected var §5214238991239004123423632234§:Boolean;
      
      protected var §5214231114231127123423632234§:int;
      
      protected var container:§switch var final§;
      
      public function StreamLightEffect(param1:§5214236270236283123423632234§, param2:Light3D)
      {
         super(param1);
         this.light = param2;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.light);
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.light);
         this.container = null;
         this.§521423126992312712123423632234§ = null;
         this.§5214236583236596123423632234§ = null;
         this.§if set in§.destroy();
         this.§if set in§ = null;
         §521423117092311722123423632234§();
      }
      
      private function f84a348() : void
      {
         this.§import catch extends§ = this.§521423139562313969123423632234§ + (Math.random() * this.random - this.random / 2);
      }
      
      public function stop() : void
      {
         this.§5214238991239004123423632234§ = true;
         this.§5214231114231127123423632234§ = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(!this.alive)
         {
            return false;
         }
         if(this.§set var var§)
         {
            this.currentTime += param1;
            this.§521423126992312712123423632234§.updateByTime(this.light,this.currentTime,this.startTime);
            if(this.currentTime >= this.startTime)
            {
               this.§set var var§ = false;
               this.currentTime = 0;
               this.f84a348();
            }
         }
         else
         {
            this.currentTime += param1;
            if(this.currentTime > this.§import catch extends§)
            {
               this.currentTime %= this.§import catch extends§;
               this.f84a348();
            }
            this.§5214236583236596123423632234§.updateByTime(this.light,this.currentTime,this.§521423139562313969123423632234§);
         }
         this.§if set in§.updateObjectPosition(this.light,param2,param1);
         if(this.§5214238991239004123423632234§)
         {
            this.§5214231114231127123423632234§ += param1;
            if(this.§5214231114231127123423632234§ <= 250)
            {
               this.light.intensity *= 1 - this.§5214231114231127123423632234§ / 250;
            }
            else
            {
               this.light.intensity = 0;
               this.kill();
            }
         }
         return true;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
   }
}

