package §52142328223295123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §true var static§ extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private const §extends for static§:Number = 1;
      
      private var §switch finally dynamic§:Sprite3D;
      
      private var §521423107882310801123423632234§:AnimatedSprite3D;
      
      private var §class use static§:AnimatedSprite3D;
      
      private var §catch switch function§:§switch var final§;
      
      private var §dynamic finally var§:Number;
      
      private var §static const for§:Vector3;
      
      private var §5214239673239686123423632234§:Vector3;
      
      private var §5214239029239042123423632234§:Boolean;
      
      private var §52142322423237123423632234§:Mesh;
      
      public function §true var static§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§switch finally dynamic§ = new Sprite3D(300,300);
         this.§521423107882310801123423632234§ = new AnimatedSprite3D(300,300);
         this.§class use static§ = new AnimatedSprite3D(300,300);
         this.§52142322423237123423632234§ = new Mesh();
      }
      
      public function destroy() : void
      {
         if(this.§catch switch function§)
         {
            this.§catch switch function§.§5214231752231765123423632234§(this.§switch finally dynamic§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§521423107882310801123423632234§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§class use static§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§52142322423237123423632234§);
         }
         this.§catch switch function§ = null;
         this.§switch finally dynamic§.material = null;
         this.§521423107882310801123423632234§.material = null;
         this.§class use static§.material = null;
         §521423117092311722123423632234§();
      }
      
      public function kill() : void
      {
         this.§switch finally dynamic§.alpha = 0;
         this.§521423107882310801123423632234§.alpha = 0;
         this.§class use static§.alpha = 0;
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:§each for finally§, param4:Boolean = false) : void
      {
         this.§static const for§ = param1.clone();
         this.§5214239673239686123423632234§ = param2.clone();
         this.§5214239029239042123423632234§ = param4;
         this.§switch finally dynamic§.material = param3.§switch finally dynamic§;
         this.§switch finally dynamic§.rotation = Math.random() * 3.141592653589793 * 2;
         this.§switch finally dynamic§.blendMode = "add";
         this.§catch const each§(param3.§var for for§);
         this.§include switch if§(param3.§52142322423237123423632234§);
         this.§dynamic finally var§ = param4 ? -0.05 : 0;
         §52142380523818123423632234§.addGraphicEffect(this);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc16_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§dynamic finally var§ += param1 / 1000;
         if(this.§dynamic finally var§ > 1)
         {
            this.§catch switch function§.§5214231752231765123423632234§(this.§switch finally dynamic§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§521423107882310801123423632234§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§class use static§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§52142322423237123423632234§);
            this.§catch switch function§ = null;
            return false;
         }
         var _loc17_:Number = 0.03333333333333333;
         var _loc18_:Number = 0.1;
         if(this.§5214239029239042123423632234§ && this.§dynamic finally var§ >= _loc17_ && this.§dynamic finally var§ < _loc18_)
         {
            _loc16_ = (this.§dynamic finally var§ - _loc17_) / (_loc18_ - _loc17_);
            _loc4_ = 200 * _loc16_;
            this.§52142322423237123423632234§.x = this.§static const for§.x + this.§5214239673239686123423632234§.x * _loc4_;
            this.§52142322423237123423632234§.y = this.§static const for§.y + this.§5214239673239686123423632234§.y * _loc4_;
            this.§52142322423237123423632234§.z = this.§static const for§.z + this.§5214239673239686123423632234§.z * _loc4_;
            this.§52142322423237123423632234§.scaleY = 1 + _loc16_;
            this.§52142322423237123423632234§.rotationX = Math.atan2(this.§5214239673239686123423632234§.z,Math.sqrt(this.§5214239673239686123423632234§.x * this.§5214239673239686123423632234§.x + this.§5214239673239686123423632234§.y * this.§5214239673239686123423632234§.y));
            this.§52142322423237123423632234§.rotationY = 0;
            this.§52142322423237123423632234§.rotationZ = -Math.atan2(this.§5214239673239686123423632234§.x,this.§5214239673239686123423632234§.y);
            this.§52142322423237123423632234§.visible = true;
         }
         else
         {
            this.§52142322423237123423632234§.visible = false;
         }
         var _loc5_:Number = 0;
         var _loc6_:Number = 0.06666666666666667;
         var _loc7_:Number = 0.2;
         var _loc19_:Number = 0.4;
         var _loc20_:Number = 0.8;
         var _loc21_:Number = 1.8;
         var _loc9_:Number = 20;
         var _loc10_:Number = 170;
         var _loc11_:Number = 300;
         var _loc12_:Number = 0.24;
         var _loc13_:Number = 1;
         var _loc14_:Number = 0;
         if(this.§dynamic finally var§ < _loc5_)
         {
            this.§switch finally dynamic§.visible = false;
         }
         else if(this.§dynamic finally var§ < _loc7_)
         {
            if(this.§dynamic finally var§ <= _loc6_)
            {
               _loc16_ = this.§dynamic finally var§ / _loc6_;
               _loc15_ = _loc19_ + (_loc20_ - _loc19_) * _loc16_;
               _loc4_ = _loc9_ + (_loc10_ - _loc9_) * _loc16_;
               _loc3_ = _loc12_ + (_loc13_ - _loc12_) * _loc16_;
            }
            else
            {
               _loc16_ = (this.§dynamic finally var§ - _loc6_) / (_loc7_ - _loc6_);
               _loc15_ = _loc20_ + (_loc21_ - _loc20_) * _loc16_;
               _loc4_ = _loc10_ + (_loc11_ - _loc10_) * _loc16_;
               _loc3_ = _loc13_ + (_loc14_ - _loc13_) * _loc16_;
            }
            this.§switch finally dynamic§.scaleX = _loc15_;
            this.§switch finally dynamic§.scaleY = _loc15_;
            this.§switch finally dynamic§.scaleZ = _loc15_;
            this.§switch finally dynamic§.x = this.§static const for§.x + this.§5214239673239686123423632234§.x * _loc4_;
            this.§switch finally dynamic§.y = this.§static const for§.y + this.§5214239673239686123423632234§.y * _loc4_;
            this.§switch finally dynamic§.z = this.§static const for§.z + this.§5214239673239686123423632234§.z * _loc4_;
            this.§switch finally dynamic§.alpha = _loc3_;
            this.§switch finally dynamic§.visible = true;
         }
         else
         {
            this.§switch finally dynamic§.visible = false;
         }
         var _loc8_:Number = 0.8333333333333334;
         if(this.§dynamic finally var§ < _loc5_)
         {
            this.§521423107882310801123423632234§.visible = false;
            this.§class use static§.visible = false;
         }
         else if(this.§dynamic finally var§ < _loc8_)
         {
            _loc16_ = this.§dynamic finally var§ / _loc8_;
            _loc16_ = Math.pow(_loc16_,0.3333333333333333);
            _loc15_ = _loc19_ + (_loc21_ - _loc19_) * _loc16_;
            _loc4_ = 350 * _loc16_;
            _loc3_ = 1 - _loc16_;
            this.§521423107882310801123423632234§.scaleX = _loc15_;
            this.§521423107882310801123423632234§.scaleY = _loc15_;
            this.§521423107882310801123423632234§.scaleZ = _loc15_;
            this.§521423107882310801123423632234§.x = this.§static const for§.x + this.§5214239673239686123423632234§.x * _loc4_;
            this.§521423107882310801123423632234§.y = this.§static const for§.y + this.§5214239673239686123423632234§.y * _loc4_;
            this.§521423107882310801123423632234§.z = this.§static const for§.z + this.§5214239673239686123423632234§.z * _loc4_;
            this.§521423107882310801123423632234§.alpha = _loc3_;
            this.§521423107882310801123423632234§.visible = true;
            this.§521423107882310801123423632234§.update(param1);
            _loc15_ = _loc19_ + (_loc21_ * 0.7 - _loc19_) * _loc16_;
            _loc4_ = 210 * _loc16_;
            _loc3_ = 1 - _loc16_;
            this.§class use static§.scaleX = _loc15_;
            this.§class use static§.scaleY = _loc15_;
            this.§class use static§.scaleZ = _loc15_;
            this.§class use static§.x = this.§static const for§.x + this.§5214239673239686123423632234§.x * _loc4_;
            this.§class use static§.y = this.§static const for§.y + this.§5214239673239686123423632234§.y * _loc4_;
            this.§class use static§.z = this.§static const for§.z + this.§5214239673239686123423632234§.z * _loc4_;
            this.§class use static§.alpha = _loc3_;
            this.§class use static§.visible = true;
            this.§class use static§.update(param1);
         }
         else
         {
            this.§521423107882310801123423632234§.visible = false;
            this.§class use static§.visible = false;
         }
         this.§class use static§.update(param1);
         return true;
      }
      
      private function §include switch if§(param1:TextureMaterial) : void
      {
         var _loc2_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Vertex = null;
         if(this.§52142322423237123423632234§.faces.length == 0)
         {
            _loc2_ = this.§52142322423237123423632234§.addVertex(-40,320,0,0,0);
            _loc3_ = this.§52142322423237123423632234§.addVertex(-40,0,0,0,1);
            _loc4_ = this.§52142322423237123423632234§.addVertex(40,0,0,1,1);
            _loc5_ = this.§52142322423237123423632234§.addVertex(40,320,0,1,0);
            this.§52142322423237123423632234§.addQuadFace(_loc2_,_loc3_,_loc4_,_loc5_,param1);
            this.§52142322423237123423632234§.addQuadFace(_loc5_,_loc4_,_loc3_,_loc2_,param1);
            this.§52142322423237123423632234§.calculateFacesNormals();
            this.§52142322423237123423632234§.calculateBounds();
            this.§52142322423237123423632234§.alpha = 0.5;
            this.§52142322423237123423632234§.blendMode = "add";
         }
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.§switch finally dynamic§);
         param1.§5214237128237141123423632234§(this.§521423107882310801123423632234§);
         param1.§5214237128237141123423632234§(this.§class use static§);
         param1.§5214237128237141123423632234§(this.§52142322423237123423632234§);
      }
      
      private function §catch const each§(param1:TextureAnimation) : void
      {
         this.§521423107882310801123423632234§.setAnimationData(param1);
         this.§class use static§.setAnimationData(param1);
         this.§521423107882310801123423632234§.rotation = Math.random() * 3.141592653589793 * 2;
         this.§class use static§.rotation = Math.random() * 3.141592653589793 * 2;
      }
   }
}

