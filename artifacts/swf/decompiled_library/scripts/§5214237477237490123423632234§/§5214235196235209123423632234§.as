package §5214237477237490123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.§521423134542313467123423632234§;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.DistanceScaledAnimatedPlaneEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.NormalObject3DPositionProvider;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import alternativa.tanks.sfx.TubeLightEffect;
   import alternativa.tanks.sfx.§break use null§;
   import alternativa.tanks.sfx.§var implements§;
   import §each var null§.§const throw§;
   import flash.geom.Vector3D;
   import §super catch default§.§5214238293238306123423632234§;
   
   public class §5214235196235209123423632234§ implements §521423123582312371123423632234§, §521423134542313467123423632234§, §var implements§
   {
      
      public static const §5214233687233700123423632234§:int = 300;
      
      public static const §if const default§:Number = 300;
      
      public static const §for finally set§:Number = 200;
      
      public static const §with const catch§:Number = 30;
      
      private static const §do var§:Number = 50;
      
      private static const §function use package§:Number = 25;
      
      private static const §52142323923252123423632234§:Number = 0.5;
      
      private static const §5214236742236755123423632234§:Number = 1.5;
      
      private static const §finally use class§:Number = 20;
      
      private static const §5214239156239169123423632234§:int = 500;
      
      private static const §override var import§:Number = 80;
      
      private static const §function const default§:Number = 0.5;
      
      private static const §521423120822312095123423632234§:Number = 2;
      
      private static const §5214233186233199123423632234§:Number = 100;
      
      private static const §5214232309232322123423632234§:int = 2200;
      
      private static const §5214238972238985123423632234§:Number = 1;
      
      private static const §override var while§:Vector3D = new Vector3D();
      
      private static const §5214232925232938123423632234§:Vector3D = new Vector3D();
      
      private static const §5214232407232420123423632234§:Vector3 = new Vector3();
      
      private static const §in false§:Vector3 = new Vector3();
      
      private static const §521423126562312669123423632234§:Vector3 = new Vector3();
      
      private static const §5214231348231361123423632234§:Vector3 = new Vector3();
      
      private static const §static use var§:Vector3 = new Vector3();
      
      private var §override set else§:§override set static§;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §in set static§:§5214231612231625123423632234§;
      
      private var §finally package const§:AnimatedLightEffect;
      
      private var §5214236233236246123423632234§:Sound3DEffect;
      
      public function §5214235196235209123423632234§(param1:§override set static§, param2:BattleService)
      {
         super();
         this.§override set else§ = param1;
         this.§52142380523818123423632234§ = param2;
      }
      
      private static function §52142314423157123423632234§(param1:Vector3D, param2:Vector3D, param3:§5214238293238306123423632234§) : RayIntersectionData
      {
         var _loc5_:RayIntersectionData = §5214239358239371123423632234§(param3.§with switch catch§(),param1,param2);
         var _loc4_:RayIntersectionData = §5214239358239371123423632234§(param3.§static set catch§(),param1,param2);
         if(_loc5_ == null)
         {
            return _loc4_;
         }
         if(_loc4_ == null)
         {
            return _loc5_;
         }
         if(_loc4_.time < _loc5_.time)
         {
            return _loc4_;
         }
         return _loc5_;
      }
      
      private static function §set for get§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         param4.copy(param1).subtract(param2);
         var _loc5_:Number = param4.dot(param3);
         param4.copy(param2).addScaled(_loc5_,param3);
      }
      
      private static function §use catch for§(param1:Vector3) : Vector3
      {
         §5214231348231361123423632234§.x = Math.atan2(param1.z,Math.sqrt(param1.x * param1.x + param1.y * param1.y)) - 3.141592653589793 / 2;
         §5214231348231361123423632234§.y = 0;
         §5214231348231361123423632234§.z = -Math.atan2(param1.x,param1.y);
         return §5214231348231361123423632234§;
      }
      
      private static function §5214239358239371123423632234§(param1:Object3D, param2:Vector3D, param3:Vector3D) : RayIntersectionData
      {
         var _loc6_:Vector3D = param1.globalToLocal(param2);
         var _loc4_:Vector3D = param3.clone();
         _loc4_.x = _loc4_.x + param1.x;
         _loc4_.y += param1.y;
         _loc4_.z += param1.z;
         var _loc5_:Vector3D = param1.globalToLocal(_loc4_);
         return param1.intersectRay(_loc6_,_loc5_);
      }
      
      public function §in package try§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,0);
         _loc2_.init(_loc3_,this.§override set else§.§in catch package§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      public function §null const extends§(param1:Vector3) : void
      {
         if(this.§5214236233236246123423632234§ != null)
         {
            this.§5214236233236246123423632234§.kill();
         }
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§set const switch§,1);
         this.§5214236233236246123423632234§ = Sound3DEffect.create(param1,_loc2_,0,0,this);
         this.§52142380523818123423632234§.addSound3DEffect(this.§5214236233236246123423632234§);
      }
      
      public function §override const true§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         §521423126562312669123423632234§.copy(param2).subtract(param1).normalize();
         this.§continue for include§(param2,param3,§521423126562312669123423632234§);
         this.§5214239035239048123423632234§(param2,param3);
      }
      
      private function §false set catch§(param1:int) : Number
      {
         return 1000 * this.§override set else§.§case for for§.§while set extends§.length / param1;
      }
      
      public function §521423105752310588123423632234§(param1:Vector3, param2:Object3D, param3:int) : void
      {
         if(this.§finally package const§ != null)
         {
            this.§finally package const§.kill();
         }
         this.§finally package const§ = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param2,param1);
         this.§finally package const§.initFromTime(_loc4_,param3,this.§override set else§.§import catch function§);
         this.§52142380523818123423632234§.addGraphicEffect(this.§finally package const§);
      }
      
      private function §continue for include§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc7_:DistanceScaledAnimatedPlaneEffect = DistanceScaledAnimatedPlaneEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(DistanceScaledAnimatedPlaneEffect));
         _loc7_.init(300,param1,§use catch for§(param2),this.§override set else§.§5214232125232138123423632234§,1);
         this.§52142380523818123423632234§.getBattleScene3D().§each var use§(_loc7_);
         var _loc5_:AnimatedSpriteEffect = AnimatedSpriteEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedSpriteEffect));
         var _loc6_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc6_.init(param1,30);
         _loc5_.init(200,200,this.§override set else§.§5214231808231821123423632234§,0,_loc6_,0.5,0.5,null,0);
         this.§52142380523818123423632234§.getBattleScene3D().§each var use§(_loc5_);
         var _loc4_:§5214231901231914123423632234§ = §5214231901231914123423632234§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§5214231901231914123423632234§));
         _loc4_.init(param1,param3,this.§override set else§.§5214234690234703123423632234§);
         this.§52142380523818123423632234§.getBattleScene3D().§each var use§(_loc4_);
      }
      
      public function §521423125582312571123423632234§(param1:Vector3, param2:Object3D, param3:int) : void
      {
         if(this.§in set static§ != null)
         {
            this.§in set static§.kill();
         }
         this.§in set static§ = §5214231612231625123423632234§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§5214231612231625123423632234§));
         this.§in set static§.init(300,300,this.§override set else§.§case for for§,param1,param2,0,this.§false set catch§(param3),this);
         this.§52142380523818123423632234§.addGraphicEffect(this.§in set static§);
         this.§521423105752310588123423632234§(param1,param2,param3);
      }
      
      public function §5214238282238295123423632234§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc5_:§do set final§ = null;
         var _loc4_:§for for function§ = null;
         if(param2 == null)
         {
            param2 = §const switch extends§.§5214234051234064123423632234§(param1,param3);
         }
         §static use var§.diff(param2,param1);
         if(§static use var§.dot(param3) > 0)
         {
            _loc5_ = §do set final§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§do set final§));
            _loc5_.init(param1,param2,this.§override set else§.§function var while§,25,0.5,1.5,20,500);
            this.§52142380523818123423632234§.addGraphicEffect(_loc5_);
            _loc4_ = §for for function§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§for for function§));
            _loc4_.init(param1,param2,this.§override set else§.§false for with§,80,0.5,2,100,2200);
            this.§52142380523818123423632234§.addGraphicEffect(_loc4_);
         }
         this.§in package try§(param1);
         this.§const import§(param1,param2);
      }
      
      private function §const import§(param1:Vector3, param2:Vector3) : void
      {
         var _loc4_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         var _loc5_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc4_.init(param1,0);
         _loc5_.init(param2,0);
         var _loc3_:TubeLightEffect = TubeLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(TubeLightEffect));
         _loc3_.init(_loc4_,_loc5_,this.§override set else§.§true null§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      private function §5214239035239048123423632234§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:NormalObject3DPositionProvider = NormalObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(NormalObject3DPositionProvider));
         _loc4_.init(param1,param2,50);
         _loc3_.init(_loc4_,this.§override set else§.§5214238606238619123423632234§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      public function §set set do§() : void
      {
         if(this.§in set static§ != null)
         {
            this.§in set static§.kill();
            this.§in set static§ = null;
         }
         if(this.§finally package const§ != null)
         {
            this.§finally package const§.kill();
            this.§finally package const§ = null;
         }
         if(this.§5214236233236246123423632234§ != null)
         {
            this.§5214236233236246123423632234§.kill();
            this.§5214236233236246123423632234§ = null;
         }
      }
      
      public function §5214235560235573123423632234§(param1:Vector3, param2:Vector3, param3:Vector.<Vector3>, param4:Vector.<§const throw§>) : void
      {
         var _loc9_:§const throw§ = null;
         var _loc10_:§5214239411239424123423632234§ = null;
         var _loc7_:RayIntersectionData = null;
         var _loc8_:Object3D = null;
         var _loc6_:Vector3D = null;
         §override var while§.x = param1.x;
         §override var while§.y = param1.y;
         §override var while§.z = param1.z;
         §5214232925232938123423632234§.x = param2.x - param1.x;
         §5214232925232938123423632234§.y = param2.y - param1.y;
         §5214232925232938123423632234§.z = param2.z - param1.z;
         §521423126562312669123423632234§.copy(param2).subtract(param1).normalize();
         var _loc5_:int = 0;
         while(_loc5_ < param4.length)
         {
            _loc9_ = param4[_loc5_];
            if(_loc9_ != null && _loc9_.§521423122212312234123423632234§ != null)
            {
               _loc10_ = _loc9_.§521423122212312234123423632234§;
               _loc7_ = §52142314423157123423632234§(§override var while§,§5214232925232938123423632234§,_loc10_.§include switch break§());
               if(_loc7_ == null)
               {
                  §set for get§(param3[_loc5_],param1,§521423126562312669123423632234§,§5214232407232420123423632234§);
                  §in false§.copy(§521423126562312669123423632234§);
               }
               else
               {
                  _loc8_ = _loc7_.object;
                  §5214232407232420123423632234§.copyFromVector3D(_loc8_.localToGlobal(_loc7_.point));
                  _loc6_ = _loc8_.localToGlobal(_loc7_.face.normal);
                  §in false§.x = _loc6_.x - _loc8_.x;
                  §in false§.y = _loc6_.y - _loc8_.y;
                  §in false§.z = _loc6_.z - _loc8_.z;
               }
               this.§continue for include§(§5214232407232420123423632234§,§in false§,§521423126562312669123423632234§);
               this.§5214239035239048123423632234§(§5214232407232420123423632234§,§in false§);
            }
            _loc5_++;
         }
      }
      
      public function onGraphicsEffectDestroyed(param1:§5214232204232217123423632234§) : void
      {
         if(this.§in set static§ == param1)
         {
            this.§in set static§ = null;
         }
      }
      
      public function onSoundEffectDestroyed(param1:§break use null§) : void
      {
         if(this.§5214236233236246123423632234§ == param1)
         {
            this.§5214236233236246123423632234§ = null;
         }
      }
      
      public function §5214234972234985123423632234§(param1:Vector3, param2:Vector3) : void
      {
         if(param2 != null)
         {
            this.§52142380523818123423632234§.getBattleScene3D().§override finally use§(param2,param1,50,this.§override set else§.§521423101512310164123423632234§);
         }
      }
   }
}

