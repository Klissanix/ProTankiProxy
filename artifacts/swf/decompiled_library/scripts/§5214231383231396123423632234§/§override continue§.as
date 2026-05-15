package §5214231383231396123423632234§
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214234283234296123423632234§.§override var if§;
   import §5214234285234298123423632234§.§each package const§;
   import §5214234978234991123423632234§.§5214234055234068123423632234§;
   import §5214234978234991123423632234§.§catch class§;
   import §5214234978234991123423632234§.§const break§;
   import §5214235677235690123423632234§.ColorTransformEntry;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §finally catch with§.§true use package§;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §override continue§ extends §catch class§ implements §const break§, §each use case§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §override continue§()
      {
         super();
      }
      
      private static function §extends var set§(param1:§if finally catch§) : TextureAnimation
      {
         var _loc2_:TextureAnimation = §true use package§.§in for native§(§5214235868235881123423632234§,param1);
         _loc2_.material.resolution = 300 / param1.§5214233118233131123423632234§;
         return _loc2_;
      }
      
      private static function §dynamic use get§(param1:§if finally catch§) : TextureAnimation
      {
         var _loc2_:TextureAnimation = §true use package§.§in for native§(§5214235868235881123423632234§,param1);
         _loc2_.material.resolution = 400 / param1.§5214233118233131123423632234§;
         return _loc2_;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§override var if§ = §override var if§(param1.getParams(§override var if§));
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§final var throw§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§each use super§.material);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§5214234055234068123423632234§ = §switch var switch§();
         var _loc3_:§override var if§ = new §override var if§();
         _loc3_.§final var throw§ = §dynamic use get§(_loc2_.§else switch catch§);
         _loc3_.§each use super§ = §extends var set§(_loc2_.§true import§);
         _loc3_.§return for break§ = _loc2_.§5214239783239796123423632234§.§set const switch§;
         _loc3_.§var set case§ = 2000;
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc3_.§implements const continue§ = _loc4_.getLightAnimation("start");
         _loc3_.§5214235965235978123423632234§ = _loc4_.getLightAnimation("loop");
         _loc3_.§521423132152313228123423632234§ = _loc4_.getLightAnimation("startFire");
         _loc3_.§implements class§ = _loc4_.getLightAnimation("loopFire");
         param1.putParams(§override var if§,_loc3_);
      }
      
      public function §true switch else§(param1:Number, param2:Number, param3:ClientObject) : §each package const§
      {
         var _loc4_:§override var if§ = §override var if§(param3.getParams(§override var if§));
         return new §52142373723750123423632234§(§52142380523818123423632234§.getObjectPool(),param1,param2,_loc4_);
      }
      
      public function §5214233519233532123423632234§(param1:ClientObject, param2:Vector.<ColorTransformEntry>) : void
      {
         var _loc3_:§override var if§ = §override var if§(param1.getParams(§override var if§));
         _loc3_.§5214235954235967123423632234§ = param2;
      }
   }
}

