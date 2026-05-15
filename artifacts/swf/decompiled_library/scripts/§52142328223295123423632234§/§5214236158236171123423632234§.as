package §52142328223295123423632234§
{
   import §5214237930237943123423632234§.§throw var§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.MobileSound3DEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.§break use null§;
   import alternativa.tanks.sfx.§var implements§;
   import flash.media.Sound;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §true for else§.§521423120912312104123423632234§;
   import §true for else§.§521423140072314020123423632234§;
   
   public class §5214236158236171123423632234§ implements §var implements§, §521423117662311779123423632234§
   {
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static const §521423133752313388123423632234§:Number = 10000;
      
      public static const §5214235156235169123423632234§:Number = 0.6666666666666666;
      
      private static const §function package do§:Vector.<Number> = new <Number>[0.3,0.6,0.9,1];
      
      private var §override set else§:§each for finally§;
      
      private var §true switch implements§:MobileSound3DEffect;
      
      private var §52142350823521123423632234§:MobileSound3DEffect;
      
      private var §5214234969234982123423632234§:§521423140072314020123423632234§;
      
      private var §521423109482310961123423632234§:§native for case§;
      
      private var §5214234597234610123423632234§:§521423120912312104123423632234§;
      
      public function §5214236158236171123423632234§(param1:§521423120912312104123423632234§)
      {
         super();
         this.§5214234597234610123423632234§ = param1;
         this.§override set else§ = param1.§var catch throw§().§5214231092231105123423632234§(param1.§52142349423507123423632234§());
         this.§521423109482310961123423632234§ = this.§5214232379232392123423632234§();
      }
      
      private function §5214236023236036123423632234§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.§override set else§.§in catch package§);
         §52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      private function §5214232379232392123423632234§() : §native for case§
      {
         return new §native for case§(this.§override set else§);
      }
      
      public function close() : void
      {
         this.§5214234597234610123423632234§ = null;
         this.§override set else§ = null;
         this.§true switch implements§ = null;
         this.§5214234969234982123423632234§ = null;
         this.§package package in§();
      }
      
      public function §false set throw§(param1:Object3D) : void
      {
         var _loc2_:Sound = this.§override set else§.§52142350823521123423632234§;
         var _loc3_:Sound3D = Sound3D.create(_loc2_,0.8);
         var _loc4_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         this.§52142350823521123423632234§ = MobileSound3DEffect(_loc4_.§52142349423507123423632234§(MobileSound3DEffect));
         this.§52142350823521123423632234§.init(_loc3_,param1,0,1,0,null);
         §52142380523818123423632234§.addSound3DEffect(this.§52142350823521123423632234§);
      }
      
      public function onSoundEffectDestroyed(param1:§break use null§) : void
      {
         if(this.§true switch implements§ == param1)
         {
            this.§true switch implements§ = null;
         }
      }
      
      public function §include continue§(param1:Object3D, param2:Number) : void
      {
         var _loc3_:Sound = this.§override set else§.§521423130522313065123423632234§;
         var _loc4_:Sound3D = Sound3D.create(_loc3_,0.8);
         var _loc6_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         this.§true switch implements§ = MobileSound3DEffect(_loc6_.§52142349423507123423632234§(MobileSound3DEffect));
         var _loc5_:int = param2 - _loc3_.length + 1300;
         if(_loc5_ >= 0)
         {
            this.§true switch implements§.init(_loc4_,param1,_loc5_,1,0,this);
         }
         else
         {
            this.§true switch implements§.init(_loc4_,param1,0,1,-_loc5_,this);
         }
         §52142380523818123423632234§.addSound3DEffect(this.§true switch implements§);
      }
      
      public function §package package in§() : void
      {
         if(this.§52142350823521123423632234§ != null)
         {
            this.§52142350823521123423632234§.kill();
            this.§52142350823521123423632234§ = null;
         }
      }
      
      private function §521423127302312743123423632234§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §function package do§.length)
         {
            if(param1 < §function package do§[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §function package do§.length - 1;
      }
      
      private function §break const switch§() : Boolean
      {
         return this.§5214234597234610123423632234§.§include catch switch§();
      }
      
      public function reset() : void
      {
         this.§package package in§();
         if(this.§5214234969234982123423632234§ == null)
         {
            this.§5214234969234982123423632234§ = new §521423140072314020123423632234§(this.§5214234597234610123423632234§);
         }
      }
      
      private function §521423103202310333123423632234§(param1:Vector3, param2:Number, param3:Vector3, param4:Number) : void
      {
         var _loc6_:int = 0;
         var _temp_1:* = param1;
         var _loc8_:Vector3 = param3;
         var _loc7_:Vector3 = _temp_1;
         var _loc9_:Number = _loc7_.x - _loc8_.x;
         var _loc10_:Number = _loc7_.y - _loc8_.y;
         var _loc11_:Number = _loc7_.z - _loc8_.z;
         var _loc5_:Number = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + _loc11_ * _loc11_);
         if(_loc5_ < 10000)
         {
            _loc6_ = this.§521423127302312743123423632234§(param2);
            §52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(param1,Sound3D.create(this.§override set else§.§5214236030236043123423632234§[_loc6_],0.8)));
         }
         else if(param2 >= 0.6666666666666666)
         {
            §52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(param3,Sound3D.create(this.§override set else§.§default catch false§,0.8)));
         }
      }
      
      public function §521423105192310532123423632234§(param1:§5214232328232341123423632234§, param2:§else const final§, param3:Number, param4:Number) : void
      {
         this.§package package in§();
         this.§5214234969234982123423632234§.§switch use const§();
         this.§521423109482310961123423632234§.§switch use const§(param2);
         this.§5214236023236036123423632234§(param1.§super for dynamic§(),param1.§static set catch§());
         if(§5214237923237936123423632234§.getLocalTank())
         {
            this.§521423103202310333123423632234§(param1.§break switch catch§().§implements catch catch§.§dynamic final§,param3,§5214237923237936123423632234§.getLocalTank().§break switch catch§().§implements catch catch§.§dynamic final§,param4);
            if(this.§break const switch§())
            {
               this.§include continue§(param1.§static set catch§(),this.§5214234597234610123423632234§.§super finally§());
            }
         }
         else if(§return set get§.isSpectatorMode())
         {
            this.§521423103202310333123423632234§(param1.§break switch catch§().§implements catch catch§.§dynamic final§,param3,§52142380523818123423632234§.getBattleScene3D().§while set for§().§dynamic final§,param4);
         }
      }
   }
}

