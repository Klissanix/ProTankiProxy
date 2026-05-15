package §class set do§
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214236145236158123423632234§.Signal;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§521423117892311802123423632234§;
   import alternativa.tanks.battle.§5214235400235413123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.sfx.FadingLightEffect;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import §class package function§.§for switch import§;
   import §else switch default§.§override for default§;
   import §for catch for§.§5214234380234393123423632234§;
   import §override catch default§.Long;
   
   public class BattleBonus extends §final switch return§ implements §521423117892311802123423632234§, §5214235400235413123423632234§, §override for default§, §52142318623199123423632234§, §5214233753233766123423632234§
   {
      
      public static var §5214232685232698123423632234§:ILightingEffectsService;
      
      public static const §extends var switch§:Number = 10000000000;
      
      private static const §5214236336236349123423632234§:Number = 1777;
      
      private static const §if finally§:Number = 1.287001287001287;
      
      private static const N:Vector3 = new Vector3();
      
      private static const P:Vector3 = new Vector3();
      
      private static const §false catch try§:Vector3 = new Vector3();
      
      private static const X:Vector3 = new Vector3();
      
      private static const Y:Vector3 = new Vector3();
      
      private static const §throw while§:Vector3 = new Vector3();
      
      private static const §5214231812231825123423632234§:Vector3 = new Vector3();
      
      private static const §get switch class§:§default catch native§ = new §default catch native§();
      
      private static const §5214232960232973123423632234§:Matrix4 = new Matrix4();
      
      private static const §try switch else§:Matrix3 = new Matrix3();
      
      private static const §import const true§:Matrix3 = new Matrix3();
      
      private static const §try use each§:Vector3 = new Vector3();
      
      private static const §static catch finally§:Vector3 = new Vector3();
      
      private static const §function use native§:Vector3 = new Vector3();
      
      private static const §521423136832313696123423632234§:Vector3 = new Vector3();
      
      private var §var for default§:BonusMesh;
      
      private var §5214239197239210123423632234§:Parachute;
      
      private var §super finally function§:Cords;
      
      private var §finally const implements§:OmniLight;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §5214236882236895123423632234§:Number = 0;
      
      private var §521423135952313608123423632234§:Long;
      
      private var data:BattleBonusData;
      
      private var §5214231822231835123423632234§:Long;
      
      private var §5214238993239006123423632234§:Boolean;
      
      private var §function const continue§:BonusTrigger;
      
      private var controllers:Vector.<§5214231415231428123423632234§> = new Vector.<§5214231415231428123423632234§>();
      
      private var §521423138112313824123423632234§:§5214231415231428123423632234§;
      
      private var §5214232453232466123423632234§:FallController;
      
      private var §5214239097239110123423632234§:LandingController;
      
      public const §package package implements§:Signal = new Signal();
      
      public const §do package package§:Signal = new Signal();
      
      public const onDestroy:Signal = new Signal();
      
      private const onTankCollision:Signal = new Signal();
      
      private var §get const get§:Number;
      
      public function BattleBonus(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§function const continue§ = new BonusTrigger(this);
         this.§5214232453232466123423632234§ = new FallController(this);
         this.§5214239097239110123423632234§ = new LandingController(this);
         this.§finally const implements§ = new OmniLight(0,0,0);
      }
      
      public static function isFlatSurface(param1:Vector3) : Boolean
      {
         return param1.z > 0.9998476951563913;
      }
      
      public function get bonusId() : Long
      {
         return this.§5214231822231835123423632234§;
      }
      
      private function c19db04e() : void
      {
         if(BonusCache.isParachuteCacheEmpty())
         {
            this.§5214239197239210123423632234§ = new Parachute(this.data.§5214238156238169123423632234§,this.data.§521423112832311296123423632234§);
         }
         else
         {
            this.§5214239197239210123423632234§ = BonusCache.getParachute();
         }
         if(BonusCache.isCordsCacheEmpty())
         {
            this.§super finally function§ = new Cords(266,75,12,this.data.§5214239194239207123423632234§);
         }
         else
         {
            this.§super finally function§ = BonusCache.getCords();
         }
         this.§super finally function§.init(this.§var for default§,this.§5214239197239210123423632234§);
      }
      
      private function e68d2e46() : void
      {
         var _loc1_:RemovalAnimation = RemovalAnimation(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(RemovalAnimation));
         _loc1_.init(this,this.data.lifeTimeMs);
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§521423138112313824123423632234§.interpolatePhysicsState(param1);
      }
      
      private function f7639a5b() : void
      {
         var _loc1_:GroundSpawnRenderer = GroundSpawnRenderer(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(GroundSpawnRenderer));
         _loc1_.start(this);
      }
      
      public function addSignal(param1:Function) : void
      {
         this.onDestroy.add(param1);
      }
      
      public function getTrigger() : BonusTrigger
      {
         return this.§function const continue§;
      }
      
      public function spawn(param1:Vector3, param2:int, param3:Number, param4:Boolean, param5:Function) : void
      {
         this.§5214236882236895123423632234§ = param3;
         this.onTankCollision.add(param5);
         this.d154ec26();
         this.§5214238993239006123423632234§ = false;
         this.controllers.length = 0;
         this.e37eccc(param1,P,N);
         if(param4 || this.a6e595a5(param1))
         {
            this.b59eb76a(P,N);
         }
         else
         {
            this.e720600b(param1,P,N,param2);
            this.§function const continue§.enable();
         }
         this.e68d2e46();
         if(this.e3c423dc())
         {
            this.c2283aaa();
         }
         this.edcd94c();
      }
      
      private function stopMovement() : void
      {
         this.a262a9d5();
      }
      
      public function enableTrigger() : void
      {
         this.§function const continue§.enable();
      }
      
      private function d154ec26() : void
      {
         if(BonusCache.isBonusMeshCacheEmpty(this.§521423135952313608123423632234§))
         {
            this.§var for default§ = new BonusMesh(this.§521423135952313608123423632234§,this.data.§throw for extends§);
         }
         else
         {
            this.§var for default§ = BonusMesh(BonusCache.getBonusMesh(this.§521423135952313608123423632234§));
         }
         this.§var for default§.init();
      }
      
      private function f2588b04(param1:BattleService) : void
      {
         var _loc2_:SpawnAnimation = SpawnAnimation(param1.getObjectPool().§52142349423507123423632234§(SpawnAnimation));
         _loc2_.start(this);
      }
      
      private function c5fd4605() : void
      {
         var _loc1_:Sound3D = null;
         if(this.data.§521423126882312701123423632234§ != null)
         {
            _loc1_ = Sound3D.create(this.data.§521423126882312701123423632234§,0.5);
            this.§var for default§.readPosition(§521423136832313696123423632234§);
            this.§52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(§521423136832313696123423632234§,_loc1_));
         }
      }
      
      private function a4ac393a(param1:Vector3, param2:Vector3) : Number
      {
         return (param1.z - param2.z - 75) / this.§5214236882236895123423632234§;
      }
      
      private function c43e4d6() : void
      {
         if(this.§var for default§ != null)
         {
            this.§var for default§.removeFromScene();
            this.§var for default§.recycle();
            this.§var for default§ = null;
         }
      }
      
      private function c5078fb0() : void
      {
         if(this.§5214239197239210123423632234§ != null)
         {
            this.§5214239197239210123423632234§.removeFromScene();
            this.§5214239197239210123423632234§.recycle();
            this.§5214239197239210123423632234§ = null;
            this.§super finally function§.removeFromScene();
            this.§super finally function§.recycle();
            this.§super finally function§ = null;
         }
      }
      
      public function pickup() : void
      {
         this.§package package implements§.§do for get§();
         this.c5fd4605();
         this.e1e2796d();
         this.a4d75f86();
         this.destroy();
      }
      
      public function getBonusMesh() : BonusMesh
      {
         return this.§var for default§;
      }
      
      private function c247f68d() : Number
      {
         return 3.141592653589793 * 10 * parseInt(§for switch import§.idToStr(this.§5214231822231835123423632234§).split("#")[1]) / 180;
      }
      
      private function e3c423dc() : Boolean
      {
         this.§521423138112313824123423632234§ = this.controllers.pop();
         if(this.§521423138112313824123423632234§ == null)
         {
            return false;
         }
         this.§521423138112313824123423632234§.start();
         return true;
      }
      
      public function init(param1:Long, param2:Long, param3:BattleBonusData, param4:BattleService) : void
      {
         this.§521423135952313608123423632234§ = param1;
         this.§5214231822231835123423632234§ = param2;
         this.data = param3;
         this.§52142380523818123423632234§ = param4;
         this.controllers.length = 0;
      }
      
      public function onTouchGround() : void
      {
         this.e1e2796d();
         if(!this.e3c423dc())
         {
            this.stopMovement();
         }
      }
      
      public function onTriggerActivated() : void
      {
         this.§function const continue§.disable();
         this.onTankCollision.§do for get§(this);
      }
      
      public function getParachute() : Parachute
      {
         return this.§5214239197239210123423632234§;
      }
      
      public function removeSignal(param1:Function) : void
      {
         this.onDestroy.remove(param1);
      }
      
      private function f56a4d9f() : void
      {
         this.§var for default§.readTransform(§5214232960232973123423632234§);
         this.§function const continue§.update(§5214232960232973123423632234§);
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.§var for default§.setAlpha(param1);
         if(this.§5214239197239210123423632234§ != null)
         {
            this.§5214239197239210123423632234§.setAlpha(param1);
            this.§super finally function§.setAlpha(param1);
         }
      }
      
      private function destroy() : void
      {
         this.onDestroy.§do for get§();
         this.§package package implements§.removeAll();
         this.§do package package§.removeAll();
         this.onDestroy.removeAll();
         this.c43e4d6();
         this.c5078fb0();
         this.a262a9d5();
         this.c44b1b20();
         this.§function const continue§.disable();
         this.onTankCollision.removeAll();
         this.§52142380523818123423632234§ = null;
         this.data = null;
         §521423117092311722123423632234§();
      }
      
      private function b59eb76a(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:Number = NaN;
         §function use native§.reset(0,0,75);
         if(isFlatSurface(param2))
         {
            §static catch finally§.reset(0,0,this.c247f68d());
         }
         else
         {
            §try use each§.cross2(Vector3.§521423109692310982123423632234§,param2);
            §try use each§.normalize();
            _loc3_ = Math.acos(param2.z);
            §try switch else§.fromAxisAngle(§try use each§,_loc3_);
            §import const true§.setRotationMatrix(0,0,this.c247f68d());
            §import const true§.append(§try switch else§);
            §import const true§.getEulerAngles(§static catch finally§);
            §function use native§.transform3(§try switch else§);
         }
         this.§var for default§.setRotation(§static catch finally§);
         this.§var for default§.setPositionComponents(param1.x + §function use native§.x,param1.y + §function use native§.y,param1.z + §function use native§.z);
         this.f56a4d9f();
         this.§var for default§.addToScene();
         this.f7639a5b();
      }
      
      private function a262a9d5() : void
      {
         if(this.§5214238993239006123423632234§)
         {
            this.§5214238993239006123423632234§ = false;
            this.§52142380523818123423632234§.getBattleRunner().removePhysicsController(this);
            this.§52142380523818123423632234§.getBattleRunner().removePhysicsInterpolator(this);
            this.§52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         }
      }
      
      private function a6e595a5(param1:Vector3) : Boolean
      {
         var _loc2_:§5214234380234393123423632234§ = this.§52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         return _loc2_.§use switch return§(param1,Vector3.§521423109692310982123423632234§,16,10000000000);
      }
      
      private function c2283aaa() : void
      {
         if(!this.§5214238993239006123423632234§)
         {
            this.§5214238993239006123423632234§ = true;
            this.§52142380523818123423632234§.getBattleRunner().addPhysicsController(this);
            this.§52142380523818123423632234§.getBattleRunner().addPhysicsInterpolator(this);
            this.§52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
         }
      }
      
      private function b5aa184c() : void
      {
         this.§5214239197239210123423632234§.addToScene();
         this.§var for default§.addToScene();
         this.§super finally function§.addToScene();
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§521423138112313824123423632234§.render();
         this.§var for default§.readPosition(§5214231812231825123423632234§);
         this.§finally const implements§.intensity = this.§get const get§ * this.data.§52142383023843123423632234§;
         this.§finally const implements§.x = §5214231812231825123423632234§.x;
         this.§finally const implements§.y = §5214231812231825123423632234§.y;
         this.§finally const implements§.z = §5214231812231825123423632234§.z;
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         this.§521423138112313824123423632234§.runBeforePhysicsUpdate(param1);
      }
      
      private function c44b1b20() : void
      {
         var _loc1_:FadingLightEffect = null;
         if(this.§finally const implements§.parent != null)
         {
            this.§52142380523818123423632234§.getBattleScene3D().§5214233649233662123423632234§(this.§finally const implements§);
            _loc1_ = FadingLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(FadingLightEffect));
            _loc1_.init(this.§finally const implements§,1777,1.287001287001287);
            this.§52142380523818123423632234§.addGraphicEffect(_loc1_);
         }
      }
      
      public function remove() : void
      {
         this.§do package package§.§do for get§();
         this.§var for default§ = null;
         this.destroy();
      }
      
      private function e720600b(param1:Vector3, param2:Vector3, param3:Vector3, param4:int) : void
      {
         var _loc5_:Number = NaN;
         if(isFlatSurface(param3))
         {
            _loc5_ = this.a4ac393a(param1,param2);
            §false catch try§.copy(param2);
         }
         else
         {
            X.cross2(param3,Vector3.§521423109692310982123423632234§);
            X.normalize();
            Y.cross2(param3,X);
            §throw while§.cross2(Vector3.§521423109692310982123423632234§,X);
            §5214231812231825123423632234§.copy(param1);
            §5214231812231825123423632234§.addScaled(-75,§throw while§);
            §false catch try§.copy(param2);
            §false catch try§.addScaled(-75 / param3.z,Y);
            if(this.§52142380523818123423632234§.getBattleRunner().getCollisionDetector().§set use for§(§5214231812231825123423632234§,Vector3.DOWN,16,10000000000,null,§get switch class§))
            {
               if(param2.z < §get switch class§.§dynamic final§.z && §get switch class§.§dynamic final§.z < §false catch try§.z)
               {
                  §false catch try§.addScaled(75 / param3.z * (§false catch try§.z - §get switch class§.§dynamic final§.z) / (§false catch try§.z - param2.z),Y);
               }
            }
            _loc5_ = this.a4ac393a(param1,§false catch try§);
            this.§5214239097239110123423632234§.init(§false catch try§,param3);
            this.controllers[controllers.length] = this.§5214239097239110123423632234§;
         }
         var _loc6_:Number = §false catch try§.z + 75 + 450;
         var _loc7_:Number = this.c247f68d();
         if(_loc5_ * 1000 <= param4)
         {
            this.§var for default§.setPositionComponents(§false catch try§.x,§false catch try§.y,§false catch try§.z + 75);
            this.§var for default§.setRotationZ(_loc7_ + _loc5_ * 0.1);
            this.f56a4d9f();
            this.§var for default§.addToScene();
         }
         else
         {
            this.c19db04e();
            this.b5aa184c();
            this.f2588b04(this.§52142380523818123423632234§);
            this.§5214232453232466123423632234§.init(param1,this.§5214236882236895123423632234§,_loc6_,-_loc5_,param4 / 1000,_loc7_);
            this.controllers[controllers.length] = this.§5214232453232466123423632234§;
         }
      }
      
      private function edcd94c() : void
      {
         this.§get const get§ = §5214232685232698123423632234§.getBonusLightIntensity();
         this.§finally const implements§.color = this.data.lightColor;
         this.§finally const implements§.attenuationBegin = this.data.attenuationBegin;
         this.§finally const implements§.attenuationEnd = this.data.attenuationEnd;
         this.§finally const implements§.intensity = this.data.§52142383023843123423632234§ * this.§get const get§;
         this.§finally const implements§.calculateBounds();
         this.§var for default§.readPosition(§5214231812231825123423632234§);
         this.§finally const implements§.x = §5214231812231825123423632234§.x;
         this.§finally const implements§.y = §5214231812231825123423632234§.y;
         this.§finally const implements§.z = §5214231812231825123423632234§.z;
         this.§52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(this.§finally const implements§);
      }
      
      private function e1e2796d() : void
      {
         var _loc1_:ParachuteDetachAnimation = null;
         if(this.§5214239197239210123423632234§ != null)
         {
            _loc1_ = ParachuteDetachAnimation(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(ParachuteDetachAnimation));
            _loc1_.start(this.§5214239197239210123423632234§,this.§super finally function§,this.§5214236882236895123423632234§ / 2);
            this.§5214239197239210123423632234§ = null;
            this.§super finally function§ = null;
         }
      }
      
      private function a4d75f86() : void
      {
         var _loc1_:BonusPickupAnimation = BonusPickupAnimation(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(BonusPickupAnimation));
         _loc1_.start(this.§var for default§);
         this.§var for default§ = null;
      }
      
      private function e37eccc(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:§5214234380234393123423632234§ = this.§52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         if(_loc4_.§set use for§(param1,Vector3.DOWN,16,10000000000,null,§get switch class§))
         {
            param3.copy(§get switch class§.§5214233761233774123423632234§);
            param2.copy(§get switch class§.§dynamic final§);
         }
         else
         {
            param3.copy(Vector3.§521423109692310982123423632234§);
            param2.copy(param1);
            param2.z -= 1000;
         }
      }
      
      public function onLandingComplete() : void
      {
         this.stopMovement();
      }
      
      public function getCords() : Cords
      {
         return this.§super finally function§;
      }
   }
}

