package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   
   public class ParachuteDetachAnimation extends §final switch return§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §52142328323296123423632234§:Number = 0.001;
      
      private static const §5214235424235437123423632234§:Number = 0.00025;
      
      private static const §const finally for§:Number = 0.0003333333333333333;
      
      private var §5214239197239210123423632234§:Parachute;
      
      private var §super finally function§:Cords;
      
      private var §5214236882236895123423632234§:Number;
      
      public function ParachuteDetachAnimation(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function start(param1:Parachute, param2:Cords, param3:Number) : void
      {
         this.§5214239197239210123423632234§ = param1;
         this.§super finally function§ = param2;
         this.§5214236882236895123423632234§ = param3 / 1000;
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
      }
      
      private function destroy() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         this.§5214239197239210123423632234§.removeFromScene();
         this.§super finally function§.removeFromScene();
         this.§5214239197239210123423632234§.recycle();
         this.§5214239197239210123423632234§ = null;
         this.§super finally function§.recycle();
         this.§super finally function§ = null;
         §521423117092311722123423632234§();
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         this.§5214239197239210123423632234§.setAlpha(this.§5214239197239210123423632234§.getAlpha() - 0.001 * param2);
         if(this.§5214239197239210123423632234§.getAlpha() <= 0)
         {
            this.destroy();
         }
         else
         {
            this.§super finally function§.setAlpha(this.§5214239197239210123423632234§.getAlpha());
            this.§5214239197239210123423632234§.addZ(-this.§5214236882236895123423632234§ * param2);
            _loc3_ = param2 * 0.00025;
            this.§5214239197239210123423632234§.addScaleXY(_loc3_);
            this.§5214239197239210123423632234§.addScaleZ(-param2 * 0.0003333333333333333);
            this.§super finally function§.updateVertices();
         }
      }
   }
}

