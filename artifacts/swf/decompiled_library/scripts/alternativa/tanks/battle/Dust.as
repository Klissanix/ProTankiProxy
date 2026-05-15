package alternativa.tanks.battle
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214237172237185123423632234§.§5214234966234979123423632234§;
   import §5214237172237185123423632234§.§5214236826236839123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.LimitedDistanceAnimatedSpriteEffect;
   import alternativa.tanks.sfx.ScalingObject3DPositionProvider;
   import alternativa.utils.TextureMaterialRegistry;
   import §finally catch with§.§true use package§;
   import flash.utils.Dictionary;
   import §var set var§.§521423132492313262123423632234§;
   
   public class Dust
   {
      
      private static const §get switch import§:Number = 0.2;
      
      private static const §5214237617237630123423632234§:Number = 1;
      
      private static const §5214239653239666123423632234§:Vector3 = new Vector3(100,0,0);
      
      private static const §5214234875234888123423632234§:Vector3 = new Vector3();
      
      private static const §5214236175236188123423632234§:Vector3 = new Vector3();
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §else switch implements§:Number = 0;
      
      private var §5214234755234768123423632234§:TextureAnimation;
      
      private var tanks:Dictionary = new Dictionary();
      
      private var §5214239291239304123423632234§:§521423132492313262123423632234§;
      
      private var nearDistance:Number;
      
      private var farDistance:Number;
      
      public var enabled:Boolean = true;
      
      private var intensity:Number;
      
      private var §5214231829231842123423632234§:Number;
      
      private var §return for native§:int;
      
      public function Dust(param1:BattleService)
      {
         super();
         this.§52142380523818123423632234§ = param1;
         this.§5214239291239304123423632234§ = param1.getBattleScene3D().§while set for§();
      }
      
      private static function f832037(param1:Vector3, param2:Number) : void
      {
         param1.x += (Math.random() - 0.5) * 2 * param2;
         param1.y += (Math.random() - 0.5) * 2 * param2;
         param1.z += (Math.random() - 0.5) * 2 * param2;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§5214239411239424123423632234§ = null;
         if(this.enabled && Boolean(this.§5214239291239304123423632234§.softTransparency) && this.§5214239291239304123423632234§.softTransparencyStrength > 0 && param1 >= §return for native§)
         {
            §return for native§ = param1 + 11;
            for(var _loc3_ in this.tanks)
            {
               _loc2_ = _loc3_ as §5214239411239424123423632234§;
               if(_loc2_ && _loc2_.§implements catch catch§ == §get catch§.§52142350323516123423632234§)
               {
                  this.addTankDust(_loc2_,100,this.§5214231829231842123423632234§);
               }
            }
         }
      }
      
      public function addTank(param1:§5214239411239424123423632234§) : void
      {
         this.tanks[param1] = param1.§521423123912312404123423632234§() / 600;
      }
      
      public function init(param1:§if finally catch§, param2:TextureMaterialRegistry, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§5214234755234768123423632234§ = §true use package§.§in for native§(param2,param1);
         this.farDistance = param3;
         this.nearDistance = param4;
         this.§else switch implements§ = param5;
         this.intensity = param6;
         this.§5214231829231842123423632234§ = param7;
      }
      
      private function d5663b4(param1:Number, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         var _loc5_:ScalingObject3DPositionProvider = null;
         var _loc6_:LimitedDistanceAnimatedSpriteEffect = null;
         var _loc7_:Number = NaN;
         if(this.enabled && Boolean(this.§5214239291239304123423632234§.softTransparency) && this.§5214239291239304123423632234§.softTransparencyStrength > 0)
         {
            _loc5_ = ScalingObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(ScalingObject3DPositionProvider));
            _loc5_.init(param2,param3,0.01);
            _loc6_ = LimitedDistanceAnimatedSpriteEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(LimitedDistanceAnimatedSpriteEffect));
            _loc7_ = this.§else switch implements§ * param1 * (1 + 1 * Math.random());
            _loc6_.init(_loc7_,_loc7_,this.§5214234755234768123423632234§,Math.random() * 2 * 3.141592653589793,_loc5_,0.5,0.5,null,130,"normal",this.nearDistance,this.farDistance,this.intensity * param4 * this.§5214239291239304123423632234§.softTransparencyStrength,true);
            this.§52142380523818123423632234§.addGraphicEffect(_loc6_);
         }
      }
      
      private function f19c9fec(param1:§5214234966234979123423632234§, param2:Number, param3:Vector3, param4:Number, param5:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:§5214236826236839123423632234§ = null;
         var _loc9_:Number = NaN;
         var _loc8_:Number = NaN;
         while(_loc6_ < param1.§5214236482236495123423632234§)
         {
            _loc7_ = param1.§native catch final§[_loc6_];
            _loc9_ = _loc7_.§5214236311236324123423632234§;
            if(_loc9_ > param4 && Math.random() < param5)
            {
               _loc8_ = _loc9_ > 500 ? 1 : 0.3 + _loc9_ / 712;
               §5214236175236188123423632234§.copy(_loc7_.§in package native§());
               f832037(§5214236175236188123423632234§,50);
               param3.z = 100;
               f832037(param3,20);
               this.d5663b4(param2,§5214236175236188123423632234§,param3,_loc8_);
            }
            _loc6_++;
         }
      }
      
      public function addTankDust(param1:§5214239411239424123423632234§, param2:Number = 100, param3:Number = 0.2) : void
      {
         var _loc6_:Number = Number(this.tanks[param1]);
         var _loc7_:§5214234966234979123423632234§ = param1.§5214235578235591123423632234§();
         var _loc4_:§5214234966234979123423632234§ = param1.§5214233014233027123423632234§();
         if(_loc7_.§521423137992313812123423632234§ * _loc4_.§521423137992313812123423632234§ < 0)
         {
            param2 = 5;
         }
         var _loc5_:Matrix3 = param1.§break switch catch§().§5214235599235612123423632234§;
         §5214239653239666123423632234§.x *= -1;
         _loc5_.transformVector(§5214239653239666123423632234§,§5214234875234888123423632234§);
         this.f19c9fec(_loc7_,_loc6_,§5214234875234888123423632234§,param2,param3);
         §5214239653239666123423632234§.x *= -1;
         _loc5_.transformVector(§5214239653239666123423632234§,§5214234875234888123423632234§);
         this.f19c9fec(_loc4_,_loc6_,§5214234875234888123423632234§,param2,param3);
      }
      
      public function removeTank(param1:§5214239411239424123423632234§) : void
      {
         delete this.tanks[param1];
      }
   }
}

