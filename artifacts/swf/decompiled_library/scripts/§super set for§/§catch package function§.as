package §super set for§
{
   import §521423120192312032123423632234§.§switch var final§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   
   public class §catch package function§ extends §5214234938234951123423632234§
   {
      
      private static const §static var continue§:int = 5;
      
      private var §521423102842310297123423632234§:Number;
      
      private var §5214236311236324123423632234§:Number;
      
      private var §false catch implements§:Number;
      
      private var §521423101282310141123423632234§:Vector3 = new Vector3();
      
      private var §5214234755234768123423632234§:TextureAnimation;
      
      private var §catch switch function§:§switch var final§;
      
      public function §catch package function§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super(§521423103402310353123423632234§,param4,5);
         this.§521423102842310297123423632234§ = param1;
         this.§5214236311236324123423632234§ = param2;
         this.§false catch implements§ = param3;
      }
      
      override public function §false set final§() : void
      {
         super.§false set final§();
         this.§5214234755234768123423632234§ = null;
         this.§catch switch function§ = null;
      }
      
      override protected function §521423128772312890123423632234§(param1:§static switch if§) : void
      {
         this.§catch switch function§.§5214231752231765123423632234§(§521423103402310353123423632234§(param1).sprite);
      }
      
      override protected function §override var get§(param1:§static switch if§, param2:Number) : void
      {
         var _loc5_:AnimatedSprite3D = null;
         var _loc4_:§521423103402310353123423632234§ = null;
         _loc4_ = §521423103402310353123423632234§(param1);
         _loc5_ = _loc4_.sprite;
         _loc5_.update(param2);
         _loc5_.z += this.§5214236311236324123423632234§ * param2;
         var _loc3_:Number = 1 - Math.abs(this.§false catch implements§ / 2 - (_loc5_.z - _loc4_.§const package super§)) * 2 / this.§false catch implements§;
         _loc5_.alpha = _loc3_;
         _loc5_.rotation = _loc4_.§else use extends§ + _loc3_ * 0.3;
         if(_loc5_.z - _loc4_.§const package super§ >= this.§false catch implements§)
         {
            _loc4_.alive = false;
         }
      }
      
      public function §5214234566234579123423632234§(param1:Vector3) : void
      {
         this.§521423101282310141123423632234§.copy(param1);
      }
      
      override protected function §521423110642311077123423632234§(param1:§static switch if§) : void
      {
         var _loc2_:§521423103402310353123423632234§ = §521423103402310353123423632234§(param1);
         _loc2_.init(this.§521423102842310297123423632234§,this.§521423101282310141123423632234§,Math.random() * 3.141592653589793 * 2,this.§5214234755234768123423632234§);
         this.§catch switch function§.§5214237128237141123423632234§(_loc2_.sprite);
      }
      
      public function §5214237200237213123423632234§(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
      }
      
      public function §break switch native§(param1:TextureAnimation) : void
      {
         this.§5214234755234768123423632234§ = param1;
      }
   }
}

