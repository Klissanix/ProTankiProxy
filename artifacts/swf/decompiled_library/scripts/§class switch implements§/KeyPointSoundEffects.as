package §class switch implements§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import flash.media.Sound;
   
   public class KeyPointSoundEffects
   {
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §include const extends§:Sound;
      
      private var §5214231521231534123423632234§:Sound;
      
      private var §5214238498238511123423632234§:KeyPointSoundEffect;
      
      private var §extends package in§:KeyPointSoundEffect;
      
      public function KeyPointSoundEffects(param1:BattleService, param2:Sound, param3:Sound)
      {
         super();
         this.§52142380523818123423632234§ = param1;
         this.§include const extends§ = param2;
         this.§5214231521231534123423632234§ = param3;
      }
      
      public function stopSound() : void
      {
         this.a2b2ef3();
         this.f41d9efb();
      }
      
      private function f41d9efb() : void
      {
         if(this.§extends package in§ != null)
         {
            this.§extends package in§.kill();
            this.§extends package in§ = null;
         }
      }
      
      private function a2b2ef3() : void
      {
         if(this.§5214238498238511123423632234§ != null)
         {
            this.§5214238498238511123423632234§.kill();
            this.§5214238498238511123423632234§ = null;
         }
      }
      
      public function playActivationSound(param1:Vector3) : void
      {
         this.f41d9efb();
         if(this.§5214238498238511123423632234§ == null)
         {
            this.§5214238498238511123423632234§ = KeyPointSoundEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(KeyPointSoundEffect));
            this.§5214238498238511123423632234§.init(this.§include const extends§,param1);
            this.§52142380523818123423632234§.getBattleRunner().getSoundManager().addEffect(this.§5214238498238511123423632234§);
         }
      }
      
      public function playDeactivationSound(param1:Vector3) : void
      {
         this.a2b2ef3();
         if(this.§extends package in§ == null)
         {
            this.§extends package in§ = KeyPointSoundEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(KeyPointSoundEffect));
            this.§extends package in§.init(this.§5214231521231534123423632234§,param1);
            this.§52142380523818123423632234§.getBattleRunner().getSoundManager().addEffect(this.§extends package in§);
         }
      }
   }
}

