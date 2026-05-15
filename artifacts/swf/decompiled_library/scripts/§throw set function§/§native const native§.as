package §throw set function§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.PlaneMuzzleFlashEffect;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   
   public class §native const native§
   {
      
      public static const §521423111022311115123423632234§:Number = 150;
      
      private static const §5214237259237272123423632234§:int = 100;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §override set else§:§continue package else§;
      
      public function §native const native§(param1:BattleService, param2:§continue package else§)
      {
         super();
         this.§52142380523818123423632234§ = param1;
         this.§override set else§ = param2;
      }
      
      public function §5214232259232272123423632234§(param1:Object3D, param2:Vector3) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param1,param2);
         _loc3_.init(_loc4_,this.§override set else§.§in catch package§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      public function §override set switch§(param1:Object3D, param2:Vector3, param3:Vector3) : void
      {
         var _loc7_:Number = NaN;
         var _loc5_:Sound3D = null;
         var _loc6_:Sound3DEffect = null;
         var _loc4_:PlaneMuzzleFlashEffect = PlaneMuzzleFlashEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(PlaneMuzzleFlashEffect));
         _loc4_.init(param2,param1,this.§override set else§.§with with§,100,150,150);
         this.§52142380523818123423632234§.addGraphicEffect(_loc4_);
         if(this.§override set else§.§override for while§ != null)
         {
            _loc7_ = 0.8;
            _loc5_ = Sound3D.create(this.§override set else§.§override for while§,_loc7_);
            _loc6_ = Sound3DEffect.create(param3,_loc5_);
            this.§52142380523818123423632234§.addSound3DEffect(_loc6_);
         }
      }
   }
}

