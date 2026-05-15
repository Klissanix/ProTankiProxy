package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.lights.OmniLight;
   import §var set var§.§521423132492313262123423632234§;
   
   public class FadingLightEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static const §521423133612313374123423632234§:Number = 0.45454545454545453;
      
      private var light:OmniLight;
      
      private var time:int;
      
      private var currentTime:int;
      
      private var §override catch continue§:Number;
      
      private var container:§switch var final§;
      
      private var §521423122762312289123423632234§:Number;
      
      public function FadingLightEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.light = new OmniLight(0,0,0);
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.light);
      }
      
      public function init(param1:OmniLight, param2:int, param3:Number = 0.45454545454545453) : void
      {
         this.light.intensity = param1.intensity;
         this.light.color = param1.color;
         this.light.attenuationBegin = param1.attenuationBegin;
         this.light.attenuationEnd = param1.attenuationEnd;
         this.light.x = param1.x;
         this.light.y = param1.y;
         this.light.z = param1.z;
         this.light.calculateBounds();
         this.time = param2;
         this.§override catch continue§ = param3;
         this.§521423122762312289123423632234§ = param1.intensity;
         this.currentTime = 0;
      }
      
      public function kill() : void
      {
         this.light = null;
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            this.container.§5214231752231765123423632234§(this.light);
            this.container = null;
         }
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.currentTime += param1;
         this.currentTime = Math.min(this.currentTime,this.time);
         var _loc3_:Number = 1 - this.currentTime / this.time;
         this.light.intensity = this.§521423122762312289123423632234§ * Math.pow(_loc3_,this.§override catch continue§);
         return this.currentTime < this.time;
      }
   }
}

