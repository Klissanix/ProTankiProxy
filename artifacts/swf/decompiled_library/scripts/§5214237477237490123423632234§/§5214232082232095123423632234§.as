package §5214237477237490123423632234§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214236377236390123423632234§.§521423137062313719123423632234§;
   import §5214236377236390123423632234§.§continue catch switch§;
   import §5214236377236390123423632234§.§in set extends§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §5214232082232095123423632234§ extends §521423137062313719123423632234§ implements §in set extends§, §5214235413235426123423632234§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §5214236966236979123423632234§:§while const while§ = new §while const while§();
      
      public function §5214232082232095123423632234§()
      {
         super();
      }
      
      private static function §5214231046231059123423632234§(param1:§if finally catch§, param2:Number, param3:BitmapFilter) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §true use package§.§5214232982232995123423632234§(§5214235868235881123423632234§,param1,param3);
         _loc4_.material.resolution = param2 / param1.§5214233118233131123423632234§;
         return _loc4_;
      }
      
      private static function §5214233060233073123423632234§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc4_:TextureMaterial = null;
         var _loc3_:BitmapData = §true use package§.§5214235316235329123423632234§(param1,param2);
         _loc4_ = §5214235868235881123423632234§.getMaterial(_loc3_,true,false);
         _loc4_.repeat = true;
         return _loc4_;
      }
      
      private static function §return implements§(param1:String) : BitmapFilter
      {
         var _loc2_:§class set return§ = §class set return§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§class set return§));
         return _loc2_.createFilter(param1);
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§override set static§ = §override set static§(param1.getParams(§override set static§));
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§function var while§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§false for with§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§case for for§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§521423101512310164123423632234§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§5214232125232138123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§5214231808231821123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§5214234690234703123423632234§.material);
      }
      
      private function §521423128822312895123423632234§(param1:§include catch with§, param2:§include catch with§, param3:§include catch with§, param4:BitmapFilter) : TextureAnimation
      {
         var _loc6_:BitmapData = §true use package§.§5214235316235329123423632234§(§5214236966236979123423632234§.§5214239726239739123423632234§(param1,param2,param3),param4);
         var _loc7_:int = _loc6_.height;
         var _loc5_:TextureAnimation = §true use package§.§5214231046231059123423632234§(§5214235868235881123423632234§,_loc6_,_loc7_,_loc7_);
         _loc5_.material.resolution = 300 / _loc7_;
         return _loc5_;
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§continue catch switch§ = §switch var switch§();
         var _loc4_:§override set static§ = new §override set static§();
         var _loc5_:BitmapFilter = §return implements§("trail");
         _loc4_.§function var while§ = §5214233060233073123423632234§(_loc2_.§5214237312237325123423632234§.data,_loc5_);
         _loc4_.§false for with§ = §5214233060233073123423632234§(_loc2_.§5214231688231701123423632234§.data,_loc5_);
         _loc4_.§521423101512310164123423632234§ = §5214235868235881123423632234§.getMaterial(_loc2_.§5214234448234461123423632234§.data);
         _loc4_.§case for for§ = this.§521423128822312895123423632234§(_loc2_.§implements var super§,_loc2_.§get return§,_loc2_.§each switch set§,§return implements§("charge"));
         _loc4_.§5214232125232138123423632234§ = §5214231046231059123423632234§(_loc2_.§521423139582313971123423632234§,300,_loc5_);
         _loc4_.§5214231808231821123423632234§ = §5214231046231059123423632234§(_loc2_.§import catch default§,200,_loc5_);
         _loc4_.§5214234690234703123423632234§ = §5214231046231059123423632234§(_loc2_.§5214238745238758123423632234§,30,_loc5_);
         _loc4_.§set const switch§ = _loc2_.§override for while§.§set const switch§;
         var _loc3_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc4_.§import catch function§ = _loc3_.getLightAnimation("charge");
         _loc4_.§in catch package§ = _loc3_.getLightAnimation("shot");
         _loc4_.§5214238606238619123423632234§ = _loc3_.getLightAnimation("hit");
         _loc4_.§true null§ = _loc3_.getLightAnimation("rail");
         param1.putParams(§override set static§,_loc4_);
      }
      
      public function §with const native§(param1:ClientObject) : §521423123582312371123423632234§
      {
         return new §5214235196235209123423632234§(§override set static§(param1.getParams(§override set static§)),§52142380523818123423632234§);
      }
   }
}

