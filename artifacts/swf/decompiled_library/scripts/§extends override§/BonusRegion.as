package §extends override§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   import flash.utils.getTimer;
   import §static set§.§521423113842311397123423632234§;
   
   public class BonusRegion implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static const §521423102972310310123423632234§:int = 1000;
      
      public static const §static const finally§:int = 3000;
      
      private static const §5214233104233117123423632234§:int = 1000;
      
      private static const §521423106032310616123423632234§:int = 1000;
      
      private static const §52142331223325123423632234§:int = 3000;
      
      private static const §5214235970235983123423632234§:int = 2000;
      
      private static const §5214239185239198123423632234§:Number = 1;
      
      private static const §5214236306236319123423632234§:int = 1000;
      
      private static const §5214236089236102123423632234§:Vector3 = new Vector3();
      
      private var §extends for break§:Vector3;
      
      private var §do include§:Mesh;
      
      private var §52142388023893123423632234§:§5214239411239424123423632234§;
      
      private var §5214232810232823123423632234§:Boolean;
      
      private var §static const use§:Boolean;
      
      private var §catch catch super§:BonusRegionAlphaMultiplier;
      
      private var §521423112382311251123423632234§:Boolean;
      
      private var §5214236234236247123423632234§:Boolean;
      
      private var §5214235794235807123423632234§:Boolean;
      
      private var §521423105062310519123423632234§:Boolean;
      
      private var §catch use with§:§521423113842311397123423632234§;
      
      public function BonusRegion(param1:§521423113842311397123423632234§, param2:Vector3, param3:Mesh, param4:Boolean, param5:Boolean)
      {
         super();
         this.§catch use with§ = param1;
         this.§extends for break§ = param2;
         this.§do include§ = param3;
         this.§521423112382311251123423632234§ = param4;
         this.§5214236234236247123423632234§ = param5;
         this.init();
      }
      
      private static function d5d96957(param1:§5214239411239424123423632234§, param2:Vector3) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:Number = 0;
         §5214236089236102123423632234§.diff(param1.§break switch catch§().§implements catch catch§.§dynamic final§,param2);
         var _loc3_:Number = §5214236089236102123423632234§.length();
         var _loc4_:int = 3000;
         if(_loc3_ > _loc4_)
         {
            _loc6_ = 0;
         }
         else
         {
            _loc5_ = 2000;
            if(_loc3_ < _loc5_)
            {
               _loc6_ = 1;
            }
            else
            {
               _loc6_ = 1 * ((_loc4_ - _loc3_) / (_loc4_ - _loc5_));
            }
         }
         return _loc6_;
      }
      
      public function hideAndRemoveFromGame() : void
      {
         if(this.§do include§.visible)
         {
            this.§521423112382311251123423632234§ = false;
            this.§5214235794235807123423632234§ = true;
            this.hide(getTimer(),3000);
         }
         else
         {
            this.removeFromGame();
         }
      }
      
      public function enableForceShow(param1:int) : void
      {
         this.§521423112382311251123423632234§ = true;
         this.§5214236234236247123423632234§ = false;
         this.§5214232810232823123423632234§ = false;
         this.§521423105062310519123423632234§ = false;
         this.§static const use§ = false;
         this.show(param1,1000);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.b11bbb60(param1);
      }
      
      public function get position() : Vector3
      {
         return this.§extends for break§;
      }
      
      private function ef01e93(param1:int) : void
      {
         §5214236089236102123423632234§.diff(this.§52142388023893123423632234§.§break switch catch§().§implements catch catch§.§dynamic final§,this.§extends for break§);
         var _loc2_:Number = §5214236089236102123423632234§.length();
         if(_loc2_ > 3000)
         {
            this.d722062(param1);
         }
         else
         {
            this.f185963e(param1,_loc2_);
         }
      }
      
      public function resetTank() : void
      {
         this.§52142388023893123423632234§ = null;
      }
      
      private function d722062(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(this.§521423105062310519123423632234§)
         {
            _loc2_ = this.§catch catch super§.getAlphaMultiplier(param1,true);
            if(_loc2_ == 1)
            {
               this.§catch catch super§.reset();
               this.§521423105062310519123423632234§ = false;
               this.§do include§.alpha = 0;
               this.§do include§.visible = false;
            }
            this.§do include§.alpha = this.§catch catch super§.startAlphaMesh + (this.§catch catch super§.newAlpha - this.§catch catch super§.startAlphaMesh) * _loc2_;
         }
         else
         {
            this.§do include§.visible = false;
         }
      }
      
      public function show(param1:int, param2:int) : void
      {
         this.§static const use§ = false;
         this.§5214232810232823123423632234§ = true;
         if(!this.§do include§.visible)
         {
            this.§do include§.alpha = 0;
            this.§do include§.visible = true;
         }
         this.§catch catch super§.init(param1,param2,this.§do include§.alpha);
      }
      
      public function addToGame() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(this.§do include§);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
      }
      
      public function changeTank(param1:int, param2:§5214239411239424123423632234§) : void
      {
         this.§52142388023893123423632234§ = param2;
         var _loc3_:Number = d5d96957(param2,this.§extends for break§);
         this.§catch catch super§.init(param1,1000,this.§do include§.alpha);
         this.§catch catch super§.newAlpha = _loc3_;
         if(_loc3_ > 0 && !this.§do include§.visible)
         {
            this.§do include§.alpha = 0;
            this.§do include§.visible = true;
         }
         this.§5214232810232823123423632234§ = false;
         this.§static const use§ = false;
         this.§521423105062310519123423632234§ = true;
      }
      
      private function f185963e(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc6_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 3000;
         if(this.§52142388023893123423632234§.§implements catch catch§ == §get catch§.§52142350323516123423632234§ || this.§52142388023893123423632234§.§implements catch catch§ == §get catch§.§5214239873239886123423632234§)
         {
            _loc3_ = 2000;
            if(this.§5214232810232823123423632234§)
            {
               _loc6_ = this.§catch catch super§.getAlphaMultiplier(param1,true);
               if(_loc6_ == 1)
               {
                  this.§catch catch super§.reset();
                  this.§5214232810232823123423632234§ = false;
               }
            }
            if(this.§521423105062310519123423632234§)
            {
               _loc6_ = this.§catch catch super§.getAlphaMultiplier(param1,true);
               if(_loc6_ == 1)
               {
                  this.§catch catch super§.reset();
                  this.§521423105062310519123423632234§ = false;
               }
            }
            if(param2 < _loc3_)
            {
               this.§do include§.visible = true;
               if(this.§5214232810232823123423632234§ || this.§521423105062310519123423632234§)
               {
                  this.§do include§.alpha = this.§catch catch super§.startAlphaMesh + (1 - this.§catch catch super§.startAlphaMesh) * _loc6_;
               }
               else
               {
                  this.§do include§.alpha = 1;
               }
            }
            else
            {
               this.§do include§.visible = true;
               _loc4_ = 1 * ((_loc5_ - param2) / (_loc5_ - _loc3_));
               if(this.§5214232810232823123423632234§ || this.§521423105062310519123423632234§)
               {
                  this.§do include§.alpha = this.§catch catch super§.startAlphaMesh + (_loc4_ - this.§catch catch super§.startAlphaMesh) * _loc6_;
               }
               else
               {
                  this.§do include§.alpha = _loc4_;
               }
            }
         }
      }
      
      public function setTank(param1:§5214239411239424123423632234§) : void
      {
         this.§52142388023893123423632234§ = param1;
      }
      
      public function addAndShow(param1:§5214239411239424123423632234§) : void
      {
         this.setTank(param1);
         if(this.§5214236234236247123423632234§)
         {
            this.§do include§.visible = false;
         }
         else
         {
            this.§do include§.alpha = 0;
            this.§do include§.visible = true;
            this.show(getTimer(),1000);
         }
      }
      
      public function removeFromGame() : void
      {
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         §52142380523818123423632234§.getBattleScene3D().§5214233649233662123423632234§(this.§do include§);
         this.§catch use with§ = null;
         this.§do include§ = null;
         this.§52142388023893123423632234§ = null;
         this.§5214232810232823123423632234§ = false;
         this.§static const use§ = false;
         this.§521423112382311251123423632234§ = false;
         this.§5214236234236247123423632234§ = false;
         this.§5214235794235807123423632234§ = false;
         this.§catch catch super§ = null;
      }
      
      private function init() : void
      {
         this.§catch catch super§ = new BonusRegionAlphaMultiplier();
         this.§do include§.visible = false;
      }
      
      private function hasTank() : Boolean
      {
         return this.§52142388023893123423632234§ != null;
      }
      
      public function hide(param1:int, param2:int) : void
      {
         this.§5214232810232823123423632234§ = false;
         this.§521423105062310519123423632234§ = false;
         this.§static const use§ = true;
         this.§catch catch super§.init(param1,param2,this.§do include§.alpha);
      }
      
      private function b11bbb60(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§5214236234236247123423632234§ && !this.§static const use§)
         {
            this.§do include§.visible = false;
            return;
         }
         if(this.§521423112382311251123423632234§ && !this.hasTank())
         {
            if(this.§5214232810232823123423632234§)
            {
               _loc2_ = this.§catch catch super§.getAlpha(param1,true);
               if(_loc2_ == 1)
               {
                  this.§catch catch super§.reset();
                  this.§5214232810232823123423632234§ = false;
               }
               this.§do include§.alpha = _loc2_;
            }
            return;
         }
         if(this.§static const use§ && Boolean(this.§do include§.visible))
         {
            _loc3_ = this.§catch catch super§.getAlphaMultiplier(param1,false);
            if(_loc3_ == 0)
            {
               this.§catch catch super§.reset();
               this.§static const use§ = false;
            }
            this.§do include§.alpha = this.§catch catch super§.startAlphaMesh * _loc3_;
            if(this.§5214235794235807123423632234§ && !this.§static const use§)
            {
               this.§5214235794235807123423632234§ = false;
               this.removeFromGame();
            }
         }
         else if(§52142380523818123423632234§.isBattleActive() && this.b57ddd5d() && this.§521423112382311251123423632234§)
         {
            this.ef01e93(param1);
         }
         else
         {
            this.§do include§.visible = false;
         }
      }
      
      public function enableForceHide(param1:int) : void
      {
         this.§5214236234236247123423632234§ = true;
         this.§521423112382311251123423632234§ = false;
         this.§5214232810232823123423632234§ = false;
         this.§521423105062310519123423632234§ = false;
         this.§static const use§ = false;
         this.hide(param1,1000);
      }
      
      private function b57ddd5d() : Boolean
      {
         return this.hasTank() && this.§52142388023893123423632234§.§5214231182231195123423632234§();
      }
      
      public function get regionType() : §521423113842311397123423632234§
      {
         return this.§catch use with§;
      }
   }
}

