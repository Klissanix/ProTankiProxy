package §class set do§
{
   import §5214234043234056123423632234§.§if use dynamic§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§5214235140235153123423632234§;
   
   public class BonusObject3DBase implements §5214233710233723123423632234§, §if use dynamic§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public var object:Object3D;
      
      private var §5214233147233160123423632234§:Number = 1;
      
      private var alphaMultiplier:Number = 1;
      
      public function BonusObject3DBase()
      {
         super();
      }
      
      public function setPositionComponents(param1:Number, param2:Number, param3:Number) : void
      {
         this.object.x = param1;
         this.object.y = param2;
         this.object.z = param3;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.object.x;
         param1.y = this.object.y;
         param1.z = this.object.z;
      }
      
      public function removeFromScene() : void
      {
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214233649233662123423632234§(this.object);
         _loc1_.§5214233808233821123423632234§.remove(this);
      }
      
      public function setAlphaMultiplier(param1:Number) : void
      {
         this.alphaMultiplier = param1;
         this.updateAlpha();
      }
      
      public function addZ(param1:Number) : void
      {
         this.object.z += param1;
      }
      
      public function readTransform(param1:Matrix4) : void
      {
         param1.setMatrix(this.object.x,this.object.y,this.object.z,this.object.rotationX,this.object.rotationY,this.object.rotationZ);
      }
      
      protected function updateAlpha() : void
      {
         this.object.alpha = this.alphaMultiplier * this.§5214233147233160123423632234§;
      }
      
      public function addToScene() : void
      {
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214231095231108123423632234§(this.object);
         _loc1_.§5214233808233821123423632234§.add(this);
      }
      
      public function setRotation(param1:Vector3) : void
      {
         this.object.rotationX = param1.x;
         this.object.rotationY = param1.y;
         this.object.rotationZ = param1.z;
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.§5214233147233160123423632234§ = param1;
         this.updateAlpha();
      }
      
      public function readRotation(param1:Vector3) : void
      {
         param1.x = this.object.rotationX;
         param1.y = this.object.rotationY;
         param1.z = this.object.rotationZ;
      }
      
      public function setPosition(param1:Vector3) : void
      {
         this.object.x = param1.x;
         this.object.y = param1.y;
         this.object.z = param1.z;
      }
      
      public function getAlpha() : Number
      {
         return this.§5214233147233160123423632234§;
      }
      
      public function setRotationComponents(param1:Number, param2:Number, param3:Number) : void
      {
         this.object.rotationX = param1;
         this.object.rotationY = param2;
         this.object.rotationZ = param3;
      }
   }
}

