package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   import §import for get§.AnimationTrack;
   import §import for get§.KeyFrameAnimation;
   
   public class SpawnFlashRenderer extends §final switch return§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §5214234961234974123423632234§:Vector.<Number> = new <Number>[0,0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5];
      
      private static const values:Vector.<Number> = new <Number>[0,130.05,255,201.45,140.25,104.55,66.3,40.8,25.5,10.2,0];
      
      private static const §5214231134231147123423632234§:AnimationTrack = new AnimationTrack(§5214234961234974123423632234§,values);
      
      private var colorTransform:AnimatedColorTransform = new AnimatedColorTransform();
      
      private var §5214234755234768123423632234§:KeyFrameAnimation = new KeyFrameAnimation(§5214231134231147123423632234§,this.colorTransform);
      
      private var bonus:BattleBonus;
      
      public function SpawnFlashRenderer(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.§5214234755234768123423632234§.isComplete())
         {
            this.bonus.enableTrigger();
            this.destroy();
         }
         else
         {
            this.§5214234755234768123423632234§.update(param2 / 1000);
         }
      }
      
      private function destroy() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         this.bonus.§do package package§.remove(this.destroy);
         this.bonus.§package package implements§.remove(this.destroy);
         this.bonus.onDestroy.remove(this.destroy);
         this.bonus.getBonusMesh().setColorTransform(null);
         this.bonus = null;
         §521423117092311722123423632234§();
      }
      
      public function start(param1:BattleBonus) : void
      {
         this.bonus = param1;
         param1.§do package package§.add(this.destroy);
         param1.§package package implements§.add(this.destroy);
         param1.onDestroy.add(this.destroy);
         param1.getBonusMesh().setColorTransform(this.colorTransform.colorTransform);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
         this.§5214234755234768123423632234§.start();
      }
   }
}

