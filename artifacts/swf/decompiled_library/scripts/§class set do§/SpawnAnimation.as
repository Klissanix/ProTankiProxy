package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   
   public class SpawnAnimation extends §final switch return§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §52142328323296123423632234§:Number = 0.001;
      
      private var object:§5214233753233766123423632234§;
      
      private var alpha:Number = 0;
      
      public function SpawnAnimation(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      private function destroy() : void
      {
         if(this.object != null)
         {
            §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
            this.object.removeSignal(this.destroy);
            this.object = null;
            §521423117092311722123423632234§();
         }
      }
      
      public function start(param1:§5214233753233766123423632234§) : void
      {
         this.object = param1;
         this.alpha = 0;
         param1.addSignal(this.destroy);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.alpha += 0.001 * param2;
         if(this.alpha > 1)
         {
            this.alpha = 1;
         }
         this.object.setAlpha(this.alpha);
         if(this.alpha >= 1)
         {
            this.destroy();
         }
      }
   }
}

