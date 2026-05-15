package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   
   public class GroundSpawnRenderer extends §final switch return§ implements §override for default§
   {
      
      private static const §5214231227231240123423632234§:Number = 0.005;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var bonus:BattleBonus;
      
      private var §521423133852313398123423632234§:Number;
      
      public function GroundSpawnRenderer(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function start(param1:BattleBonus) : void
      {
         this.bonus = param1;
         this.§521423133852313398123423632234§ = 0;
         param1.§do package package§.add(this.destroy);
         param1.§package package implements§.add(this.destroy);
         param1.onDestroy.add(this.destroy);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
      }
      
      private function destroy() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         this.bonus.§do package package§.remove(this.destroy);
         this.bonus.§package package implements§.remove(this.destroy);
         this.bonus.onDestroy.remove(this.destroy);
         this.bonus = null;
         §521423117092311722123423632234§();
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§521423133852313398123423632234§ += 0.005 * param2;
         if(this.§521423133852313398123423632234§ > 1)
         {
            this.§521423133852313398123423632234§ = 1;
         }
         var _loc3_:BonusMesh = this.bonus.getBonusMesh();
         _loc3_.setScale(this.§521423133852313398123423632234§);
         _loc3_.setAlpha(this.§521423133852313398123423632234§);
         if(this.§521423133852313398123423632234§ == 1)
         {
            this.e7711f62();
            this.destroy();
         }
      }
      
      private function e7711f62() : void
      {
         var _loc1_:SpawnFlashRenderer = SpawnFlashRenderer(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(SpawnFlashRenderer));
         _loc1_.start(this.bonus);
      }
   }
}

