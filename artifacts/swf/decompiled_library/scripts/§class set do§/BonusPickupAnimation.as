package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import §else switch default§.§override for default§;
   import flash.geom.ColorTransform;
   
   public class BonusPickupAnimation extends §final switch return§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214232685232698123423632234§:ILightingEffectsService;
      
      private static const §with const default§:int = 2000;
      
      private static const §521423133452313358123423632234§:int = 300;
      
      private static const static:int = 1700;
      
      private static const §try use in§:int = 204;
      
      private static const §5214235757235770123423632234§:Number = 0.68;
      
      private static const §else package finally§:Number = 0.12;
      
      private static const §do const null§:Number = 300;
      
      private static const §in var var§:Number = 2;
      
      private var §var for default§:BonusMesh;
      
      private var colorTransform:ColorTransform = new ColorTransform();
      
      private var §5214238349238362123423632234§:int;
      
      private var §52142346723480123423632234§:int;
      
      public function BonusPickupAnimation(param1:§5214236270236283123423632234§)
      {
         var _loc2_:ColorTransform = §5214232685232698123423632234§.getBonusColorAdjust();
         if(_loc2_ != null)
         {
            this.colorTransform.redMultiplier = _loc2_.redMultiplier;
            this.colorTransform.greenMultiplier = _loc2_.greenMultiplier;
            this.colorTransform.blueMultiplier = _loc2_.blueMultiplier;
         }
         super(param1);
      }
      
      private function destroy() : void
      {
         this.§var for default§.setColorTransform(null);
         this.§var for default§.removeFromScene();
         this.§var for default§.recycle();
         this.§var for default§ = null;
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         §521423117092311722123423632234§();
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.§5214238349238362123423632234§ > 0)
         {
            this.d2f8ee85(param2);
         }
         else
         {
            this.destroy();
         }
      }
      
      public function start(param1:BonusMesh) : void
      {
         this.§var for default§ = param1;
         this.§var for default§.setColorTransform(this.colorTransform);
         this.§5214238349238362123423632234§ = 2000;
         this.§52142346723480123423632234§ = 0;
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
      }
      
      private function d2f8ee85(param1:int) : void
      {
         var _loc2_:Number = param1 / 1000;
         this.§var for default§.addZ((300 * this.§5214238349238362123423632234§ / 2000 + 300 * 0.1) * _loc2_);
         this.§var for default§.addRotationZ((2 * this.§5214238349238362123423632234§ / 2000 + 2 * 0.1) * _loc2_);
         if(this.§5214238349238362123423632234§ > 2000 - 300)
         {
            this.§52142346723480123423632234§ += 0.68 * param1;
            if(this.§52142346723480123423632234§ > 204)
            {
               this.§52142346723480123423632234§ = 204;
            }
         }
         else
         {
            this.§52142346723480123423632234§ -= 0.12 * param1;
            if(this.§52142346723480123423632234§ < 0)
            {
               this.§52142346723480123423632234§ = 0;
            }
         }
         this.colorTransform.redOffset = this.§52142346723480123423632234§;
         this.colorTransform.blueOffset = this.§52142346723480123423632234§;
         this.colorTransform.greenOffset = this.§52142346723480123423632234§;
         if(this.§5214238349238362123423632234§ < 1700)
         {
            this.§var for default§.setAlpha(this.§5214238349238362123423632234§ / 1700);
         }
         this.§5214238349238362123423632234§ -= param1;
      }
   }
}

