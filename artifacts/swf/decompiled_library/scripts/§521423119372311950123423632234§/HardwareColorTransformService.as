package §521423119372311950123423632234§
{
   import alternativa.tanks.services.colortransform.§521423132272313240123423632234§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import flash.geom.ColorTransform;
   
   public class HardwareColorTransformService implements ColorTransformService
   {
      
      private var §521423140772314090123423632234§:ColorTransform;
      
      private var §get get§:ColorTransform;
      
      public function HardwareColorTransformService()
      {
         super();
      }
      
      public function getFrostColorAdjust() : ColorTransform
      {
         return this.§get get§;
      }
      
      public function getHeatColorAdjust() : ColorTransform
      {
         return this.§521423140772314090123423632234§;
      }
      
      public function getColorTransform() : ColorTransform
      {
         return null;
      }
      
      public function addColorTransformer(param1:§521423132272313240123423632234§) : void
      {
      }
      
      public function setColorAdjust(param1:ColorTransform, param2:ColorTransform, param3:ColorTransform, param4:ColorTransform) : void
      {
         this.§521423140772314090123423632234§ = param3;
         this.§get get§ = param4;
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
      }
   }
}

