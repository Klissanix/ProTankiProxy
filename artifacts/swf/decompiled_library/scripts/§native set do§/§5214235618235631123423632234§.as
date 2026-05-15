package §native set do§
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214237739237752123423632234§.§5214235412235425123423632234§;
   import §5214239881239894123423632234§.§521423125852312598123423632234§;
   import §5214239881239894123423632234§.§521423129002312913123423632234§;
   import §5214239881239894123423632234§.§521423133092313322123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §finally catch with§.§true use package§;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §5214235618235631123423632234§ extends §521423125852312598123423632234§ implements §521423133092313322123423632234§, §continue set case§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §5214235618235631123423632234§()
      {
         super();
      }
      
      private static function §implements finally const§(param1:§include catch with§) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param1.data);
         _loc2_.resolution = 60 / param1.data.height;
         return _loc2_;
      }
      
      private static function §finally switch in§(param1:§if finally catch§, param2:int) : TextureAnimation
      {
         var _loc3_:TextureAnimation = §true use package§.§in for native§(§5214235868235881123423632234§,param1);
         _loc3_.material.resolution = param2 / param1.§5214233118233131123423632234§;
         return _loc3_;
      }
      
      public function §with const native§(param1:ClientObject) : §5214235412235425123423632234§
      {
         var _loc2_:§finally switch§ = §finally switch§(param1.getParams(§finally switch§));
         return new §break set true§(§52142380523818123423632234§.getBattleRunner().getSoundManager(),§52142380523818123423632234§.getObjectPool(),_loc2_);
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§finally switch§ = §finally switch§(param1.getParams(§finally switch§));
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§with with§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§throw try§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§5214234328234341123423632234§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§5214239410239423123423632234§.material);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§521423129002312913123423632234§ = §switch var switch§();
         var _loc3_:§finally switch§ = new §finally switch§();
         _loc3_.§with with§ = §implements finally const§(_loc2_.§each package final§);
         _loc3_.§throw try§ = §finally switch in§(_loc2_.§521423137142313727123423632234§,_loc2_.§super if§);
         _loc3_.§5214234328234341123423632234§ = §5214235868235881123423632234§.getMaterial(_loc2_.§throw class§.data);
         _loc3_.§5214239410239423123423632234§ = §finally switch in§(_loc2_.§switch const super§,_loc2_.§include const native§);
         _loc3_.§include const native§ = _loc2_.§include const native§;
         _loc3_.§override for while§ = _loc2_.§override for while§.§set const switch§;
         _loc3_.§5214232585232598123423632234§ = _loc2_.§5214232585232598123423632234§.§set const switch§;
         _loc3_.§super if§ = _loc2_.§super if§;
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc3_.§in catch package§ = _loc4_.getLightAnimation("shot");
         _loc3_.§5214238606238619123423632234§ = _loc4_.getLightAnimation("hit");
         param1.putParams(§finally switch§,_loc3_);
      }
   }
}

