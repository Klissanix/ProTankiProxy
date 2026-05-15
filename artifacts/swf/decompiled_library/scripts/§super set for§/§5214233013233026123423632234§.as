package §super set for§
{
   import §521423120192312032123423632234§.§switch var final§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   
   public class §5214233013233026123423632234§ extends §5214234938234951123423632234§
   {
      
      private static const §5214239915239928123423632234§:Number = 130;
      
      private static const §continue package super§:Number = 6;
      
      private static const §5214236320236333123423632234§:Number = 0.2;
      
      private static const §5214232545232558123423632234§:Number = 20;
      
      private static const §switch while§:Number = 0.1;
      
      private static const §static var continue§:int = 5;
      
      private static const §case for const§:Number = 0.1;
      
      private static const §false var extends§:Vector3 = new Vector3();
      
      private var §521423101282310141123423632234§:Vector3 = new Vector3();
      
      private var §if set implements§:TextureMaterial;
      
      private var §catch switch function§:§switch var final§;
      
      public function §5214233013233026123423632234§()
      {
         super(§for set in§,0.1,5);
      }
      
      override protected function §521423128772312890123423632234§(param1:§static switch if§) : void
      {
         this.§catch switch function§.§5214231752231765123423632234§(§for set in§(param1).sprite);
      }
      
      public function §try for throw§(param1:TextureMaterial) : void
      {
         this.§if set implements§ = param1;
      }
      
      public function §5214234566234579123423632234§(param1:Vector3) : void
      {
         this.§521423101282310141123423632234§.copy(param1);
      }
      
      public function §5214237200237213123423632234§(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
      }
      
      override public function §false set final§() : void
      {
         super.§false set final§();
         this.§if set implements§ = null;
         this.§catch switch function§ = null;
      }
      
      override protected function §521423110642311077123423632234§(param1:§static switch if§) : void
      {
         var _loc2_:§for set in§ = §for set in§(param1);
         var _loc3_:Number = 130 + Math.random() * 130 / 2;
         var _loc4_:Sprite3D = _loc2_.sprite;
         §false var extends§.x = Math.random() * 2 - 1;
         §false var extends§.y = -Math.random();
         §false var extends§.z = Math.random() * 2 - 1;
         §false var extends§.normalize();
         §false var extends§.scale(6);
         _loc2_.init(_loc3_,this.§521423101282310141123423632234§,§false var extends§,this.§if set implements§);
         this.§catch switch function§.§5214237128237141123423632234§(_loc4_);
      }
      
      override protected function §override var get§(param1:§static switch if§, param2:Number) : void
      {
         var _loc5_:§for set in§ = §for set in§(param1);
         var _loc6_:Sprite3D = _loc5_.sprite;
         var _loc3_:Vector3 = _loc5_.§5214239673239686123423632234§;
         _loc3_.z -= 20 * param2;
         _loc6_.x += _loc3_.x;
         _loc6_.y += _loc3_.y;
         _loc6_.z += _loc3_.z;
         _loc5_.§dynamic finally var§ += param2;
         if(_loc5_.§dynamic finally var§ > 0.2)
         {
            _loc5_.§dynamic finally var§ = 0.2;
         }
         _loc6_.alpha = 1 - _loc5_.§dynamic finally var§ / 0.2;
         var _loc4_:Number = 1 - _loc6_.alpha;
         if(_loc4_ < 0.1)
         {
            _loc4_ = 0.1;
         }
         _loc6_.scaleX = _loc4_;
         _loc6_.scaleY = _loc4_;
         _loc6_.scaleZ = _loc4_;
         if(_loc6_.alpha <= 0)
         {
            _loc5_.alive = false;
         }
      }
   }
}

