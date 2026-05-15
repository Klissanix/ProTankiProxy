package §package const catch§
{
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   
   public class §catch while§ implements §52142336923382123423632234§
   {
      
      private static const §5214231218231231123423632234§:Number = 0.7;
      
      private static const §if switch const§:Number = 0.7;
      
      private static const §521423472360123423632234§:Number = 110;
      
      private static const §do var§:Number = 250;
      
      private static const §5214239146239159123423632234§:Matrix4 = new Matrix4();
      
      private static const §if var switch§:Vector3 = new Vector3();
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §override set else§:§static package default§;
      
      public function §catch while§(param1:BattleService, param2:§static package default§)
      {
         super();
         this.§52142380523818123423632234§ = param1;
         this.§override set else§ = param2;
      }
      
      private function §5214233773233786123423632234§(param1:Vector3) : void
      {
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§5214232585232598123423632234§,0.7);
         this.§52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(param1,_loc2_));
      }
      
      public function §set finally for§(param1:Vector3, param2:Vector3) : void
      {
         this.§52142380523818123423632234§.getBattleScene3D().§override finally use§(param2,param1,250,this.§override set else§.§5214234328234341123423632234§);
      }
      
      public function §try use get§(param1:Vector3) : void
      {
         this.§in var in§(param1);
         this.§5214233773233786123423632234§(param1);
         this.§5214232460232473123423632234§(param1);
      }
      
      private function §5214236416236429123423632234§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.§override set else§.§in catch package§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      private function §5214232460232473123423632234§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,110);
         _loc2_.init(_loc3_,this.§override set else§.§5214238606238619123423632234§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      private function §in var in§(param1:Vector3) : void
      {
         var _loc2_:§throw var§ = this.§52142380523818123423632234§.getObjectPool();
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(_loc2_.§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,110);
         var _loc4_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc2_.§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc4_.init(this.§override set else§.§super if§,this.§override set else§.§super if§,this.§override set else§.§throw try§,Math.random() * 2 * 3.141592653589793,_loc3_);
         this.§52142380523818123423632234§.addGraphicEffect(_loc4_);
      }
      
      public function §override set switch§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§case const for§ = §case const for§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§case const for§));
         _loc3_.init(param2,param1,this.§override set else§.§with with§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
         §5214239146239159123423632234§.setMatrix(param2.x,param2.y,param2.z,param2.rotationX,param2.rotationY,param2.rotationZ);
         §5214239146239159123423632234§.transformVector(param1,§if var switch§);
         var _loc4_:Sound3D = Sound3D.create(this.§override set else§.§override for while§,0.7);
         this.§52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(§if var switch§,_loc4_));
         this.§5214236416236429123423632234§(param1,param2);
      }
   }
}

