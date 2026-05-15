package alternativa.tanks.services.lightingeffects
{
   import §const use implements§.§dynamic include§;
   import flash.geom.ColorTransform;
   import §switch var native§.ModeLight;
   
   public interface ILightingEffectsService
   {
      
      function setLightForMode(param1:§dynamic include§, param2:ModeLight) : void;
      
      function getLightForMode(param1:§dynamic include§) : ModeLight;
      
      function getBonusColorAdjust() : ColorTransform;
      
      function getBonusLightIntensity() : Number;
      
      function setBonusLighting(param1:Number, param2:ColorTransform, param3:ColorTransform) : void;
   }
}

