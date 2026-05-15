package §throw set function§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §continue switch import§.§521423117522311765123423632234§;
   import §continue switch import§.§521423125512312564123423632234§;
   import §continue switch import§.§dynamic var finally§;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §continue const default§ extends §521423125512312564123423632234§ implements §dynamic var finally§, §return switch native§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §continue const default§()
      {
         super();
      }
      
      private static function §5214231046231059123423632234§(param1:§if finally catch§, param2:Number, param3:BitmapFilter) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §true use package§.§5214232982232995123423632234§(§5214235868235881123423632234§,param1,param3);
         _loc4_.material.resolution = param2 / param1.§5214233118233131123423632234§;
         return _loc4_;
      }
      
      private static function §5214238510238523123423632234§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §5214231046231059123423632234§(param1,300,param2);
      }
      
      private static function §var catch if§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §5214231046231059123423632234§(param1,266,param2);
      }
      
      private static function §implements finally const§(param1:§include catch with§) : TextureMaterial
      {
         var _loc2_:BitmapData = param1.data;
         var _loc3_:TextureMaterial = §5214235868235881123423632234§.getMaterial(_loc2_);
         _loc3_.resolution = 150 / _loc2_.height;
         return _loc3_;
      }
      
      private static function §return implements§(param1:String) : BitmapFilter
      {
         var _loc2_:§class set return§ = §class set return§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§class set return§));
         return _loc2_.createFilter(param1);
      }
      
      private static function §extends package class§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §5214231046231059123423632234§(param1,266,param2);
      }
      
      private static function §5214233060233073123423632234§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param1);
         _loc3_.resolution = 100 / param1.height;
         return _loc3_;
      }
      
      public function §5214233898233911123423632234§(param1:ClientObject) : §native const native§
      {
         return §native const native§(param1.getParams(§native const native§));
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§521423117522311765123423632234§ = §switch var switch§();
         var _loc3_:§continue package else§ = new §continue package else§();
         _loc3_.§else package get§ = §5214238510238523123423632234§(_loc2_.§each package final§,§return implements§("shot"));
         _loc3_.§throw try§ = §extends package class§(_loc2_.§521423137142313727123423632234§,§return implements§("expl"));
         _loc3_.§import const set§ = §var catch if§(_loc2_.§import const in§,§return implements§("expl"));
         _loc3_.§with with§ = §implements finally const§(_loc2_.§use set§);
         _loc3_.§extends switch get§ = §5214233060233073123423632234§(_loc2_.§else switch null§.data,§return implements§("trail"));
         _loc3_.§override for while§ = _loc2_.§override for while§.§set const switch§;
         _loc3_.§package set else§ = _loc2_.§package set else§.§set const switch§;
         _loc3_.§5214232585232598123423632234§ = _loc2_.§521423109582310971123423632234§.§set const switch§;
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc3_.§in catch package§ = _loc4_.getLightAnimation("shot");
         _loc3_.§import for function§ = _loc4_.getLightAnimation("ricochet");
         _loc3_.§5214238606238619123423632234§ = _loc4_.getLightAnimation("hit");
         _loc3_.§5214239929239942123423632234§ = _loc4_.getLightAnimation("bullet");
         param1.putParams(§continue package else§,_loc3_);
         param1.putParams(§native const native§,new §native const native§(§52142380523818123423632234§,_loc3_));
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§continue package else§ = this.§5214231092231105123423632234§(param1);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§throw try§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§import const set§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§else package get§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§with with§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§extends switch get§);
      }
      
      public function §5214231092231105123423632234§(param1:ClientObject) : §continue package else§
      {
         return §continue package else§(param1.getParams(§continue package else§));
      }
   }
}

