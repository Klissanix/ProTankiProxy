package §5214231383231396123423632234§
{
   import §5214234283234296123423632234§.§5214235676235689123423632234§;
   import §5214234283234296123423632234§.§override var if§;
   import §5214234285234298123423632234§.§each package const§;
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.sfx.CollisionObject3DPositionProvider;
   import alternativa.tanks.sfx.MobileSound3DEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.OmniStreamLightEffect;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.StreamWeaponParticlesPositionProvider;
   import alternativa.tanks.sfx.§break use null§;
   import alternativa.tanks.sfx.§var implements§;
   import §each var null§.§const throw§;
   
   public class §52142373723750123423632234§ extends BattleRunnerProvider implements §each package const§, §var implements§
   {
      
      private const §5214238186238199123423632234§:Number = 100;
      
      private var §52142383123844123423632234§:§throw var§;
      
      private var §false catch continue§:Number;
      
      private var §521423990231003123423632234§:Number;
      
      private var §override set else§:§override var if§;
      
      private var §5214234384234397123423632234§:§5214235676235689123423632234§;
      
      private var §5214236233236246123423632234§:MobileSound3DEffect;
      
      private var §each package dynamic§:OmniStreamLightEffect;
      
      private var §native set use§:OmniStreamLightEffect;
      
      public function §52142373723750123423632234§(param1:§throw var§, param2:Number, param3:Number, param4:§override var if§)
      {
         super();
         this.§52142383123844123423632234§ = param1;
         this.§false catch continue§ = param2;
         this.§521423990231003123423632234§ = param3;
         this.§override set else§ = param4;
      }
      
      public function onSoundEffectDestroyed(param1:§break use null§) : void
      {
         if(this.§5214236233236246123423632234§ == param1)
         {
            this.§5214236233236246123423632234§ = null;
         }
      }
      
      public function §function package override§(param1:§const throw§, param2:Vector3, param3:Object3D) : void
      {
         var _loc9_:Sound3D = null;
         var _loc5_:MuzzlePositionProvider = null;
         var _loc6_:Vector3 = null;
         var _loc7_:MuzzlePositionProvider = null;
         var _loc4_:CollisionObject3DPositionProvider = null;
         var _loc8_:StreamWeaponParticlesPositionProvider = null;
         if(this.§5214234384234397123423632234§ == null)
         {
            this.§5214234384234397123423632234§ = §5214235676235689123423632234§(this.§52142383123844123423632234§.§52142349423507123423632234§(§5214235676235689123423632234§));
            this.§5214234384234397123423632234§.init(param1,this.§false catch continue§,this.§521423990231003123423632234§,2000,param2,param3,this.§override set else§,getBattleRunner().getCollisionDetector(),100,300,50,400,90,40);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(this.§5214234384234397123423632234§);
            _loc9_ = Sound3D.create(this.§override set else§.§return for break§,1);
            this.§5214236233236246123423632234§ = MobileSound3DEffect(this.§52142383123844123423632234§.§52142349423507123423632234§(MobileSound3DEffect));
            this.§5214236233236246123423632234§.shortInit(_loc9_,param3,this);
            getBattleRunner().getSoundManager().addEffect(this.§5214236233236246123423632234§);
            this.§each package dynamic§ = OmniStreamLightEffect(this.§52142383123844123423632234§.§52142349423507123423632234§(OmniStreamLightEffect));
            _loc5_ = MuzzlePositionProvider(this.§52142383123844123423632234§.§52142349423507123423632234§(MuzzlePositionProvider));
            _loc6_ = new Vector3();
            _loc6_.copy(param2);
            _loc6_.z += 100;
            _loc5_.init(param3,param2);
            _loc7_ = MuzzlePositionProvider(this.§52142383123844123423632234§.§52142349423507123423632234§(MuzzlePositionProvider));
            _loc7_.init(param3,_loc6_);
            this.§each package dynamic§.init(_loc7_,this.§override set else§.§implements const continue§,this.§override set else§.§5214235965235978123423632234§);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(this.§each package dynamic§);
            this.§native set use§ = OmniStreamLightEffect(this.§52142383123844123423632234§.§52142349423507123423632234§(OmniStreamLightEffect));
            _loc4_ = CollisionObject3DPositionProvider(this.§52142383123844123423632234§.§52142349423507123423632234§(CollisionObject3DPositionProvider));
            _loc4_.init(param3,param2,getBattleRunner().getCollisionDetector(),1500);
            _loc8_ = StreamWeaponParticlesPositionProvider(this.§52142383123844123423632234§.§52142349423507123423632234§(StreamWeaponParticlesPositionProvider));
            _loc8_.init(this.§5214234384234397123423632234§,_loc4_);
            this.§native set use§.init(_loc8_,this.§override set else§.§521423132152313228123423632234§,this.§override set else§.§implements class§);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(this.§native set use§);
         }
      }
      
      public function §set set do§() : void
      {
         if(this.§5214234384234397123423632234§ != null)
         {
            this.§5214234384234397123423632234§.kill();
            this.§5214234384234397123423632234§ = null;
            this.§const set finally§();
            this.§each package dynamic§.stop();
            this.§each package dynamic§ = null;
            this.§native set use§.stop();
            this.§native set use§ = null;
         }
      }
      
      private function §const set finally§() : void
      {
         if(this.§5214236233236246123423632234§ != null)
         {
            this.§5214236233236246123423632234§.kill();
            this.§5214236233236246123423632234§ = null;
         }
      }
   }
}

