package alternativa.tanks.services.lightingeffects
{
   import §const use implements§.§dynamic include§;
   import flash.geom.ColorTransform;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §switch var native§.ModeLight;
   import §switch var native§.TeamLightColor;
   
   public class LightingEffectsService implements ILightingEffectsService
   {
      
      private var §5214235015235028123423632234§:Vector.<ModeLight>;
      
      private var §use use include§:Number;
      
      private var §521423118192311832123423632234§:ColorTransform;
      
      public function LightingEffectsService()
      {
         var _loc1_:int = 0;
         §5214235015235028123423632234§ = new Vector.<ModeLight>(5,true);
         super();
         while(_loc1_ < 5)
         {
            §5214235015235028123423632234§[_loc1_] = new ModeLight(new TeamLightColor(0,0),new TeamLightColor(0,0),new TeamLightColor(0,0),0,0);
            _loc1_++;
         }
      }
      
      public function getBonusLightIntensity() : Number
      {
         return this.§use use include§;
      }
      
      public function setBonusLighting(param1:Number, param2:ColorTransform, param3:ColorTransform) : void
      {
         this.§use use include§ = param1;
         var _loc4_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§)
         {
            this.§521423118192311832123423632234§ = param2;
         }
         else
         {
            if(param3 != null)
            {
               param3.redOffset /= 1.5;
               param3.greenOffset /= 1.5;
               param3.blueOffset /= 1.5;
            }
            this.§521423118192311832123423632234§ = param3;
         }
      }
      
      public function getBonusColorAdjust() : ColorTransform
      {
         return this.§521423118192311832123423632234§;
      }
      
      public function getLightForMode(param1:§dynamic include§) : ModeLight
      {
         return §5214235015235028123423632234§[param1.value];
      }
      
      public function setLightForMode(param1:§dynamic include§, param2:ModeLight) : void
      {
         §5214235015235028123423632234§[param1.value] = param2;
      }
   }
}

