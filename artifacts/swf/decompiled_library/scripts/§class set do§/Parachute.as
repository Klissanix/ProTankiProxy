package §class set do§
{
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.objects.Mesh;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class Parachute extends BonusObject3DBase implements §521423117662311779123423632234§
   {
      
      public static const §5214233929233942123423632234§:Number = 266;
      
      public static const §521423133992313412123423632234§:int = 12;
      
      public function Parachute(param1:Mesh, param2:Mesh)
      {
         super();
         var _loc3_:Object3DContainer = new Object3DContainer();
         _loc3_.addChild(this.b6884b00(param1));
         _loc3_.addChild(this.b6884b00(param2));
         object = _loc3_;
      }
      
      private function b6884b00(param1:Mesh) : Mesh
      {
         var _loc2_:Mesh = Mesh(param1.clone());
         _loc2_.shadowMapAlphaThreshold = 2;
         return _loc2_;
      }
      
      public function addScaleZ(param1:Number) : void
      {
         object.scaleZ += param1;
      }
      
      public function close() : void
      {
         var _loc1_:Object3DContainer = Object3DContainer(object);
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         object = null;
      }
      
      public function recycle() : void
      {
         removeFromScene();
         setAlpha(1);
         setAlphaMultiplier(1);
         object.scaleX = 1;
         object.scaleY = 1;
         object.scaleZ = 1;
         BonusCache.putParachute(this);
      }
      
      public function addScaleXY(param1:Number) : void
      {
         object.scaleX += param1;
         object.scaleY += param1;
      }
   }
}

