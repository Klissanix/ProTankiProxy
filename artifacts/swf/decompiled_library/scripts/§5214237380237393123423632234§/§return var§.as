package §5214237380237393123423632234§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214237217237230123423632234§.§521423139162313929123423632234§;
   import §5214237217237230123423632234§.§5214239112239125123423632234§;
   import §5214237217237230123423632234§.§throw for return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.media.Sound;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §return var§ extends §throw for return§ implements §5214239112239125123423632234§, §class§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §return var§()
      {
         super();
      }
      
      private static function §5214233060233073123423632234§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc4_:TextureMaterial = null;
         var _loc3_:BitmapData = §true use package§.§5214235316235329123423632234§(param1,param2);
         _loc4_ = §5214235868235881123423632234§.getMaterial(_loc3_);
         _loc4_.resolution = 48 / _loc3_.width;
         return _loc4_;
      }
      
      private static function §5214239487239500123423632234§(param1:String) : BitmapFilter
      {
         var _loc2_:§class set return§ = §class set return§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§class set return§));
         return _loc2_.createFilter(param1);
      }
      
      private static function §5214231046231059123423632234§(param1:§if finally catch§, param2:BitmapFilter, param3:Number) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §true use package§.§5214232982232995123423632234§(§5214235868235881123423632234§,param1,param2);
         _loc4_.material.resolution = param3 / param1.§5214233118233131123423632234§;
         return _loc4_;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§native catch null§ = §native catch null§(param1.getParams(§native catch null§));
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§function var while§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§static const false§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§throw try§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§521423101512310164123423632234§);
      }
      
      public function §with const native§(param1:ClientObject) : §in while§
      {
         var _loc2_:§native catch null§ = §native catch null§(param1.getParams(§native catch null§));
         return new §in while§(_loc2_,§52142380523818123423632234§);
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc7_:§521423139162313929123423632234§ = §switch var switch§();
         var _loc13_:Sound = _loc7_.§521423120652312078123423632234§.§set const switch§;
         var _loc14_:Sound = _loc7_.§final import§.§set const switch§;
         var _loc11_:Sound = _loc7_.§override for while§.§set const switch§;
         var _loc12_:Sound = _loc7_.§5214232585232598123423632234§.§set const switch§;
         var _loc9_:BitmapFilter = §5214239487239500123423632234§("def");
         var _loc10_:TextureAnimation = §5214231046231059123423632234§(_loc7_.§final const throw§,_loc9_,200);
         var _loc8_:TextureAnimation = §5214231046231059123423632234§(_loc7_.§521423137142313727123423632234§,_loc9_,200);
         var _loc3_:TextureMaterial = §5214233060233073123423632234§(_loc7_.§null true§.data,_loc9_);
         var _loc2_:TextureMaterial = §5214235868235881123423632234§.getMaterial(_loc7_.§5214234448234461123423632234§.data);
         var _loc6_:Number = 500;
         var _loc5_:§native catch null§ = new §native catch null§(_loc11_,_loc12_,_loc14_,_loc13_,_loc10_,_loc3_,_loc8_,_loc2_,_loc6_);
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc5_.§in catch package§ = _loc4_.getLightAnimation("shot");
         _loc5_.§5214238606238619123423632234§ = _loc4_.getLightAnimation("hit");
         param1.putParams(§native catch null§,_loc5_);
      }
   }
}

