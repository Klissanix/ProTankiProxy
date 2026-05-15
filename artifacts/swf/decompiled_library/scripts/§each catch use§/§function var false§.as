package §each catch use§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import §if package break§.§5214231427231440123423632234§;
   import §if package break§.§52142353623549123423632234§;
   import §if package break§.§implements finally set§;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §function var false§ extends §implements finally set§ implements §52142353623549123423632234§, §static for false§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public function §function var false§()
      {
         super();
      }
      
      private static function §do catch for§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §5214231046231059123423632234§(param1,param2,250);
      }
      
      private static function §extends package class§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §5214231046231059123423632234§(param1,param2,300);
      }
      
      private static function §implements finally const§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc4_:TextureMaterial = null;
         var _loc3_:BitmapData = §true use package§.§5214235316235329123423632234§(param1,param2);
         _loc4_ = §5214235868235881123423632234§.getMaterial(_loc3_);
         _loc4_.resolution = 120 / param1.height;
         return _loc4_;
      }
      
      private static function §5214231046231059123423632234§(param1:§if finally catch§, param2:BitmapFilter, param3:Number) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §true use package§.§5214232982232995123423632234§(§5214235868235881123423632234§,param1,param2);
         _loc4_.material.resolution = param3 / param1.§5214233118233131123423632234§;
         return _loc4_;
      }
      
      private static function §return implements§(param1:String) : BitmapFilter
      {
         var _loc2_:§class set return§ = §class set return§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§class set return§));
         return _loc2_.createFilter(param1);
      }
      
      private static function §5214233804233817123423632234§(param1:§implements for extends§) : void
      {
         §5214235868235881123423632234§.releaseMaterial(param1.§with with§);
         §5214235868235881123423632234§.releaseMaterial(param1.§else package get§.material);
         §5214235868235881123423632234§.releaseMaterial(param1.§throw try§.material);
         §5214235868235881123423632234§.releaseMaterial(param1.§521423101512310164123423632234§);
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§5214231427231440123423632234§ = §switch var switch§();
         var _loc3_:§implements for extends§ = new §implements for extends§();
         _loc3_.§with with§ = §implements finally const§(_loc2_.§final const throw§.data,§return implements§("flash"));
         _loc3_.§else package get§ = §do catch for§(_loc2_.§each package final§,§return implements§("shot"));
         _loc3_.§throw try§ = §extends package class§(_loc2_.§521423137142313727123423632234§,§return implements§("expl"));
         _loc3_.§521423101512310164123423632234§ = §5214235868235881123423632234§.getMaterial(_loc2_.§5214234448234461123423632234§.data);
         _loc3_.§override for while§ = _loc2_.§override for while§.§set const switch§;
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc3_.§for switch get§ = _loc4_.getLightAnimation("shot");
         _loc3_.§class package import§ = _loc4_.getLightAnimation("bullet");
         _loc3_.§5214239547239560123423632234§ = _loc4_.getLightAnimation("hit");
         param1.putParams(§implements for extends§,_loc3_);
         param1.putParams(§5214238816238829123423632234§,new §5214238816238829123423632234§(§52142380523818123423632234§,_loc3_));
      }
      
      public function §521423120952312108123423632234§(param1:ClientObject) : §implements for extends§
      {
         return §implements for extends§(param1.getParams(§implements for extends§));
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         §5214233804233817123423632234§(this.§521423120952312108123423632234§(param1));
      }
      
      public function §return true§(param1:ClientObject) : §5214238816238829123423632234§
      {
         return §5214238816238829123423632234§(param1.getParams(§5214238816238829123423632234§));
      }
   }
}

