package §class set do§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.Blinker;
   import §else switch default§.§override for default§;
   import flash.utils.getTimer;
   
   public class RemovalAnimation extends §final switch return§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §false var var§:int = 500;
      
      private static const §5214231508231521123423632234§:int = 22;
      
      private static const §5214231954231967123423632234§:int = 12;
      
      private static const §5214234126234139123423632234§:Number = 10;
      
      private static const §do const continue§:Number = 0.5;
      
      private static const §throw catch catch§:Number = 0.5;
      
      private static const §else§:Number = 0.001;
      
      private static const §else get§:int = 10400;
      
      private const §true set implements§:Blinker = new Blinker(500,22,12,0.5,1,10);
      
      private var §var for default§:BonusMesh;
      
      private var startTime:int;
      
      private var §function var var§:Boolean;
      
      private var §5214239757239770123423632234§:Boolean;
      
      private var §if use override§:Boolean;
      
      public function RemovalAnimation(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      private function b29f6f85() : void
      {
         this.§function var var§ = true;
         var _loc1_:int = getTimer() - 10400;
         if(this.startTime > _loc1_)
         {
            this.startTime = _loc1_;
         }
      }
      
      private function c949017(param1:int, param2:int) : void
      {
         var _loc3_:Number = this.§true set implements§.updateValue(param1,param2);
         this.§var for default§.setAlpha(_loc3_);
         if(this.§function var var§ && param1 >= this.startTime + 10400 && _loc3_ == 0.5)
         {
            this.§5214239757239770123423632234§ = false;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(param1 >= this.startTime)
         {
            if(this.§5214239757239770123423632234§)
            {
               if(!this.§if use override§)
               {
                  this.§if use override§ = true;
                  this.§true set implements§.init(param1);
               }
               this.c949017(param1,param2);
            }
            else
            {
               this.fadeOut(param2);
            }
         }
      }
      
      private function destroy() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         if(this.§var for default§ != null)
         {
            this.§var for default§.removeFromScene();
            this.§var for default§.recycle();
            this.§var for default§ = null;
         }
         §521423117092311722123423632234§();
      }
      
      public function init(param1:BattleBonus, param2:int) : void
      {
         var _loc3_:int = getTimer();
         this.§var for default§ = param1.getBonusMesh();
         this.startTime = _loc3_ + param2 - 10400;
         this.§if use override§ = false;
         this.§5214239757239770123423632234§ = true;
         this.§function var var§ = false;
         if(param2 < 10400)
         {
            this.§true set implements§.setInitialInterval(22 + (500 - 22) * param2 / 10400);
         }
         else
         {
            this.§true set implements§.setInitialInterval(500);
         }
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
         param1.§package package implements§.§if set static§(this.f1ec1e96);
         param1.§do package package§.§if set static§(this.b29f6f85);
      }
      
      private function fadeOut(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = this.§var for default§.getAlpha();
         _loc4_ = _loc4_ - 0.001 * param1;
         if(_loc4_ > 0)
         {
            this.§var for default§.setAlpha(_loc4_);
            _loc2_ = this.§var for default§.getScale();
            if(_loc2_ > 0)
            {
               _loc3_ = _loc2_ - 0.002 * param1;
               if(_loc3_ < 0)
               {
                  _loc3_ = 0;
               }
               this.§var for default§.setScale(_loc3_);
            }
         }
         else
         {
            this.destroy();
         }
      }
      
      private function f1ec1e96() : void
      {
         this.§var for default§ = null;
         this.destroy();
      }
   }
}

