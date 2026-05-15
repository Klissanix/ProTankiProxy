package §5214235903235916123423632234§
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedPlaneEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.LightAnimation;
   import alternativa.tanks.sfx.MovingObject3DPositionProvider;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import §finally catch with§.§true use package§;
   import flash.media.Sound;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §switch switch return§.§521423100782310091123423632234§;
   import §switch switch return§.§5214232546232559123423632234§;
   import §switch switch return§.§use set if§;
   
   public class §5214233899233912123423632234§ extends §521423100782310091123423632234§ implements §5214232546232559123423632234§, §do set function§, §throw catch var§, §false catch throw§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §for continue§:ResourceRegistry;
      
      private static const §package for use§:Number = 800;
      
      private static const §switch var use§:Number = 400;
      
      private static const §continue package finally§:Number = 1000;
      
      private static const §5214238615238628123423632234§:Number = 600;
      
      private static const §5214236974236987123423632234§:Number = 800;
      
      private static const §for switch null§:Number = 200;
      
      private static const §use catch return§:Number = -2000;
      
      private static const §5214234826234839123423632234§:int = 200;
      
      private static const §super package native§:Number = 0.4;
      
      private const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private const §dynamic final§:Vector3 = new Vector3();
      
      private const §static catch finally§:Vector3 = new Vector3();
      
      private const §native use function§:Vector3 = new Vector3();
      
      private const §521423119502311963123423632234§:Matrix3 = new Matrix3();
      
      private var §native false§:§52142368523698123423632234§;
      
      public function §5214233899233912123423632234§()
      {
         super();
      }
      
      private static function §5214239040239053123423632234§(param1:§5214239411239424123423632234§) : Number
      {
         var _loc6_:Mesh = param1.§include switch break§().§with switch catch§();
         var _loc2_:Number = _loc6_.boundMaxX - _loc6_.boundMinX;
         var _loc3_:Number = _loc6_.boundMaxY - _loc6_.boundMinY;
         var _loc4_:Number = _loc6_.boundMaxZ - _loc6_.boundMinZ;
         var _loc5_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc5_ / 600;
      }
      
      private function §5214234803234816123423632234§(param1:§throw var§, param2:Number, param3:§52142368523698123423632234§) : void
      {
         this.§dynamic final§.z += 50;
         var _loc5_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(param1.§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc5_.init(this.§dynamic final§,200);
         var _loc4_:AnimatedSpriteEffect = AnimatedSpriteEffect(param1.§52142349423507123423632234§(AnimatedSpriteEffect));
         var _loc6_:Number = 800 * param2;
         _loc4_.init(_loc6_,_loc6_,param3.§5214232826232839123423632234§,Math.random() * 2 * 3.141592653589793,_loc5_);
         §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc4_);
      }
      
      public function objectUnloaded() : void
      {
         this.§override for case§(this.§native false§);
      }
      
      private function §521423137402313753123423632234§(param1:§throw var§, param2:LightAnimation) : void
      {
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(param1.§52142349423507123423632234§(StaticObject3DPositionProvider));
         var _loc4_:AnimatedLightEffect = AnimatedLightEffect(param1.§52142349423507123423632234§(AnimatedLightEffect));
         _loc3_.init(this.§dynamic final§,0);
         _loc4_.init(_loc3_,param2);
         §52142380523818123423632234§.addGraphicEffect(_loc4_);
      }
      
      private function §5214231046231059123423632234§(param1:§if finally catch§, param2:Number) : TextureAnimation
      {
         var _loc3_:TextureAnimation = §true use package§.§in for native§(§5214235868235881123423632234§,param1);
         _loc3_.material.resolution = param2 / param1.§5214233118233131123423632234§;
         return _loc3_;
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§use set if§ = §switch var switch§();
         var _loc3_:TextureAnimation = this.§5214231046231059123423632234§(_loc1_.§521423137142313727123423632234§,800);
         var _loc2_:TextureAnimation = this.§5214231046231059123423632234§(_loc1_.§with use finally§,1000);
         var _loc4_:TextureAnimation = this.§5214231046231059123423632234§(_loc1_.§final use include§,400);
         var _loc5_:§52142368523698123423632234§ = new §52142368523698123423632234§(_loc3_,_loc2_,_loc4_);
         this.§native false§ = _loc5_;
      }
      
      private function §override for case§(param1:§52142368523698123423632234§) : void
      {
         §5214235868235881123423632234§.releaseMaterial(param1.§5214232826232839123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(param1.§5214238109238122123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(param1.§set const final§.material);
      }
      
      public function §try use get§(param1:§521423120252312038123423632234§, param2:§5214239411239424123423632234§, param3:LightAnimation) : void
      {
         var _loc5_:§52142368523698123423632234§ = this.§native false§;
         var _loc6_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc4_:Number = §5214239040239053123423632234§(param2);
         this.§521423139352313948123423632234§(param2,_loc6_,_loc4_,_loc5_);
         this.§5214234803234816123423632234§(_loc6_,_loc4_,_loc5_);
         this.§5214235336235349123423632234§(_loc6_,_loc4_,_loc5_);
         this.§521423137402313753123423632234§(_loc6_,param3);
         this.§native use get§(param2);
      }
      
      private function §5214235336235349123423632234§(param1:§throw var§, param2:Number, param3:§52142368523698123423632234§) : void
      {
         var _loc5_:int = 0;
         var _loc7_:Number = NaN;
         var _loc4_:MovingObject3DPositionProvider = null;
         var _loc6_:AnimatedSpriteEffect = null;
         var _loc8_:Number = NaN;
         while(_loc5_ < 3)
         {
            _loc7_ = 800 + Math.random() * 200;
            this.§native use function§.x = _loc7_ * (1 - 2 * Math.random());
            this.§native use function§.y = _loc7_ * (1 - 2 * Math.random());
            this.§native use function§.z = _loc7_ * 0.5 * (1 + Math.random());
            _loc4_ = MovingObject3DPositionProvider(param1.§52142349423507123423632234§(MovingObject3DPositionProvider));
            _loc4_.init(this.§dynamic final§,this.§native use function§,-2000);
            _loc6_ = AnimatedSpriteEffect(param1.§52142349423507123423632234§(AnimatedSpriteEffect));
            _loc8_ = 400 * param2;
            _loc6_.init(_loc8_,_loc8_,param3.§set const final§,Math.random() * 2 * 3.141592653589793,_loc4_);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc6_);
            _loc5_++;
         }
      }
      
      private function §native use get§(param1:§5214239411239424123423632234§) : void
      {
         var _loc4_:Sound3D = null;
         var _loc3_:Object3D = null;
         var _loc2_:Sound = §52142380523818123423632234§.getTankExplosionSound();
         if(_loc2_ != null)
         {
            _loc4_ = Sound3D.create(_loc2_,0.4);
            _loc3_ = param1.§include switch break§().§static set catch§();
            §52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(new Vector3(_loc3_.x,_loc3_.y,_loc3_.z),_loc4_,0,0));
         }
      }
      
      private function §521423139352313948123423632234§(param1:§5214239411239424123423632234§, param2:§throw var§, param3:Number, param4:§52142368523698123423632234§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc6_:Vector3 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Vector3 = null;
         var _loc9_:AnimatedPlaneEffect = null;
         var _loc5_:Number = 500;
         this.§dynamic final§.copy(param1.§break switch catch§().§implements catch catch§.§dynamic final§);
         if(§52142380523818123423632234§.getBattleRunner().getCollisionDetector().§set use for§(this.§dynamic final§,Vector3.DOWN,255,_loc5_,null,this.§5214235622235635123423632234§))
         {
            this.§5214235622235635123423632234§.§dynamic final§.z += 10;
            _loc7_ = 1000;
            _loc8_ = 200;
            if(this.§5214235622235635123423632234§.§5214232932232945123423632234§ > _loc8_)
            {
               _loc7_ *= (_loc5_ - this.§5214235622235635123423632234§.§5214232932232945123423632234§) / (_loc5_ - _loc8_);
            }
            _loc6_ = this.§5214235622235635123423632234§.§5214233761233774123423632234§;
            _loc10_ = Math.acos(_loc6_.z);
            _loc11_ = new Vector3(-_loc6_.y,_loc6_.x,0);
            _loc11_.normalize();
            this.§521423119502311963123423632234§.fromAxisAngle(_loc11_,_loc10_);
            this.§521423119502311963123423632234§.getEulerAngles(this.§static catch finally§);
            _loc9_ = AnimatedPlaneEffect(param2.§52142349423507123423632234§(AnimatedPlaneEffect));
            _loc9_.init(param3 * _loc7_,this.§5214235622235635123423632234§.§dynamic final§,this.§static catch finally§,param4.§5214238109238122123423632234§,1);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc9_);
         }
      }
   }
}

