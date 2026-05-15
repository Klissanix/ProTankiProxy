package §class set do§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import flash.geom.ColorTransform;
   import §override catch default§.Long;
   
   public class BonusMesh extends BonusObject3DBase
   {
      
      public static var §5214232685232698123423632234§:ILightingEffectsService;
      
      private var §break switch function§:ColorTransform;
      
      private var §5214239289239302123423632234§:Long;
      
      public function BonusMesh(param1:Long, param2:Mesh)
      {
         super();
         this.§5214239289239302123423632234§ = param1;
         object = this.b6884b00(param2);
      }
      
      public function init() : void
      {
         object.rotationX = 0;
         object.rotationY = 0;
         object.rotationZ = 0;
         this.setScale(1);
         setAlpha(1);
         setAlphaMultiplier(1);
         this.§break switch function§ = §5214232685232698123423632234§.getBonusColorAdjust();
         object.colorTransform = this.§break switch function§;
      }
      
      private function b6884b00(param1:Mesh) : Mesh
      {
         var _loc3_:Mesh = Mesh(param1.clone());
         var _loc2_:Face = param1.faces[0];
         _loc3_.setMaterialToAllFaces(_loc2_.material);
         _loc3_.sorting = 2;
         return _loc3_;
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         if(this.§break switch function§ != null)
         {
            if(param1 == null)
            {
               object.colorTransform = this.§break switch function§;
            }
            else
            {
               object.colorTransform = param1;
            }
         }
         else
         {
            object.colorTransform = param1;
         }
      }
      
      public function getScale() : Number
      {
         return object.scaleX;
      }
      
      public function recycle() : void
      {
         removeFromScene();
         object.colorTransform = null;
         BonusCache.putBonusMesh(this);
      }
      
      public function setScale(param1:Number) : void
      {
         object.scaleX = param1;
         object.scaleY = param1;
         object.scaleZ = param1;
      }
      
      public function getObjectId() : Long
      {
         return this.§5214239289239302123423632234§;
      }
      
      public function addRotationZ(param1:Number) : void
      {
         object.rotationZ += param1;
      }
      
      public function setRotationZ(param1:Number) : void
      {
         object.rotationZ = param1;
      }
   }
}

