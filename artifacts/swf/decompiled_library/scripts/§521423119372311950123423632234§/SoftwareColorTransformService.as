package §521423119372311950123423632234§
{
   import alternativa.tanks.services.colortransform.*;
   import flash.geom.ColorTransform;
   
   public class SoftwareColorTransformService implements ColorTransformService
   {
      
      private const §5214238950238963123423632234§:Vector.<§521423132272313240123423632234§> = new Vector.<§521423132272313240123423632234§>();
      
      private var colorTransform:ColorTransform;
      
      private var §521423140772314090123423632234§:ColorTransform;
      
      private var §get get§:ColorTransform;
      
      public function SoftwareColorTransformService()
      {
         super();
      }
      
      public function setColorAdjust(param1:ColorTransform, param2:ColorTransform, param3:ColorTransform, param4:ColorTransform) : void
      {
         this.§521423140772314090123423632234§ = param1;
         this.§get get§ = param2;
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         if(!§false use do§.equal(this.colorTransform,param1))
         {
            this.colorTransform = §false use do§.clone(param1);
            for each(var _loc2_ in this.§5214238950238963123423632234§)
            {
               _loc2_.setColorTransform(this.colorTransform);
            }
         }
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
         return §false use do§.clone(this.colorTransform);
      }
      
      public function addColorTransformer(param1:§521423132272313240123423632234§) : void
      {
         this.§5214238950238963123423632234§[§5214238950238963123423632234§.length] = param1;
         param1.setColorTransform(this.colorTransform);
      }
   }
}

