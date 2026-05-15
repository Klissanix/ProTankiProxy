package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import alternativa.engine3d.lights.OmniLight;
   
   public final class OmniStreamLightEffect extends StreamLightEffect
   {
      
      public function OmniStreamLightEffect(param1:§5214236270236283123423632234§)
      {
         super(param1,new OmniLight(0,0,0));
      }
      
      public function init(param1:§class use return§, param2:LightAnimation, param3:LightAnimation) : void
      {
         this.§if set in§ = param1;
         this.startTime = param2.getLiveTime();
         this.§521423139562313969123423632234§ = param3.getLiveTime();
         this.§521423126992312712123423632234§ = param2;
         this.§5214236583236596123423632234§ = param3;
         this.random = §521423139562313969123423632234§ / 4;
         §set var var§ = true;
         currentTime = 0;
         alive = true;
         §5214238991239004123423632234§ = false;
         §5214231114231127123423632234§ = 0;
      }
   }
}

