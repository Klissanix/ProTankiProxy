package §throw set var§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.Shadow;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import §else switch default§.§5214235140235153123423632234§;
   import §super catch default§.§5214232906232919123423632234§;
   
   public class §false set const§ extends §switch use default§
   {
      
      private var §5214239268239281123423632234§:Object3DContainer;
      
      private var §5214232848232861123423632234§:Object3DContainer;
      
      private var §5214236108236121123423632234§:Mesh;
      
      private var §5214238376238389123423632234§:Mesh;
      
      public function §false set const§(param1:Vector.<Mesh>)
      {
         super(param1[0]);
         this.§5214239268239281123423632234§ = new Object3DContainer();
         this.§5214232848232861123423632234§ = new Object3DContainer();
         this.§5214239268239281123423632234§.name = "tankPart";
         §catch use continue§.x = 0;
         §catch use continue§.y = 0;
         §catch use continue§.z = 0;
         this.§5214232848232861123423632234§.mouseEnabled = false;
         §catch use continue§.mouseEnabled = false;
         this.§5214239268239281123423632234§.addChild(§catch use continue§);
         this.§5214239268239281123423632234§.addChild(this.§5214232848232861123423632234§);
         if(param1.length > 2)
         {
            this.§5214236108236121123423632234§ = param1[1];
            this.§5214232848232861123423632234§.x = this.§5214236108236121123423632234§.x;
            this.§5214232848232861123423632234§.y = this.§5214236108236121123423632234§.y;
            this.§5214232848232861123423632234§.z = this.§5214236108236121123423632234§.z;
            this.§5214236108236121123423632234§.mouseEnabled = false;
            this.§5214236108236121123423632234§.x = 0;
            this.§5214236108236121123423632234§.y = 0;
            this.§5214236108236121123423632234§.z = 0;
            this.§5214232848232861123423632234§.addChild(this.§5214236108236121123423632234§);
            this.§5214238376238389123423632234§ = param1[2];
            this.§5214238376238389123423632234§.mouseEnabled = false;
            this.§5214232848232861123423632234§.addChild(this.§5214238376238389123423632234§);
         }
      }
      
      override public function §static switch each§(param1:TextureMaterial, param2:TextureMaterial) : void
      {
         §catch use continue§.setMaterialToAllFaces(param1);
         if(this.§5214236108236121123423632234§)
         {
            this.§5214236108236121123423632234§.setMaterialToAllFaces(param1);
            this.§5214238376238389123423632234§.setMaterialToAllFaces(param1);
         }
      }
      
      override public function §static set catch§() : Object3D
      {
         return this.§5214239268239281123423632234§;
      }
      
      override public function set §set package const§(param1:Number) : void
      {
         super.alpha = param1;
         this.§5214239268239281123423632234§.alpha = param1;
      }
      
      public function §super switch use§() : Object3D
      {
         return this.§5214238376238389123423632234§ ? this.§5214238376238389123423632234§ : this.§catch use continue§;
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      override public function §return var do§(param1:§5214235140235153123423632234§) : void
      {
         param1.§5214233649233662123423632234§(this.§5214239268239281123423632234§);
      }
      
      override public function §5214233162233175123423632234§(param1:Shadow) : void
      {
         super.§5214233162233175123423632234§(param1);
         param1.addCaster(this.§5214236108236121123423632234§);
         param1.addCaster(this.§5214238376238389123423632234§);
      }
      
      override public function §5214237069237082123423632234§(param1:§5214235140235153123423632234§) : void
      {
         param1.§5214231095231108123423632234§(this.§5214239268239281123423632234§);
      }
      
      override public function §521423118152311828123423632234§() : Object3D
      {
         return this.§5214232848232861123423632234§;
      }
      
      override public function §521423105302310543123423632234§(param1:Matrix4, param2:§5214232906232919123423632234§, param3:Number) : void
      {
         §5214239146239159123423632234§.setMatrix(param2.§use for return§(),param2.§5214237654237667123423632234§(),param2.§5214237481237494123423632234§() + 1,0,0,param3);
         §5214239146239159123423632234§.append(param1);
         this.§5214239268239281123423632234§.x = §5214239146239159123423632234§.§catch package continue§;
         this.§5214239268239281123423632234§.y = §5214239146239159123423632234§.§include var break§;
         this.§5214239268239281123423632234§.z = §5214239146239159123423632234§.§function var import§;
         var _loc4_:Vector3 = BattleUtils.§switch for default§;
         §5214239146239159123423632234§.getEulerAngles(_loc4_);
         this.§5214239268239281123423632234§.rotationX = _loc4_.x;
         this.§5214239268239281123423632234§.rotationY = _loc4_.y;
         this.§5214239268239281123423632234§.rotationZ = _loc4_.z;
      }
   }
}

