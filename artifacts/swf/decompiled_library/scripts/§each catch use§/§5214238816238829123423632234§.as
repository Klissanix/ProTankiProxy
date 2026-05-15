package §each catch use§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.PlaneMuzzleFlashEffect;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   
   public class §5214238816238829123423632234§
   {
      
      public static const §521423132632313276123423632234§:int = 120;
      
      private static const §52142360723620123423632234§:int = 50;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §override set else§:§implements for extends§;
      
      public function §5214238816238829123423632234§(param1:BattleService, param2:§implements for extends§)
      {
         super();
         this.§52142380523818123423632234§ = param1;
         this.§override set else§ = param2;
      }
      
      private function §5214237694237707123423632234§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.§override set else§.§for switch get§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      private function §extends const package§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:PlaneMuzzleFlashEffect = PlaneMuzzleFlashEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(PlaneMuzzleFlashEffect));
         _loc3_.init(param1,param2,this.§override set else§.§with with§,50,120,120);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      public function §override set switch§(param1:Object3D, param2:Vector3) : void
      {
         this.§extends const package§(param2,param1);
         this.§5214237694237707123423632234§(param2,param1);
         this.§null const extends§(param1);
      }
      
      private function §null const extends§(param1:Object3D) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Sound3D = null;
         if(this.§override set else§.§override for while§ != null)
         {
            _loc2_ = 0.8;
            _loc3_ = Sound3D.create(this.§override set else§.§override for while§,_loc2_);
            BattleUtils.§switch for default§.reset(param1.x,param1.y,param1.z);
            this.§52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(BattleUtils.§switch for default§,_loc3_));
         }
      }
   }
}

