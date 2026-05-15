package §5214238019238032123423632234§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.engine3d.UVFrame;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import §native catch break§.§return switch function§;
   import §package with§.§5214236792236805123423632234§;
   import §package with§.§catch const case§;
   import §package with§.§each for dynamic§;
   import platform.client.fp10.core.model.impl.Model;
   import §set package in§.ClientObject;
   
   public class §521423121092312122123423632234§ extends §each for dynamic§ implements §5214236792236805123423632234§, §5214239455239468123423632234§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public function §521423121092312122123423632234§()
      {
         super();
      }
      
      private static function §return set include§(param1:Vector.<UVFrame>) : Vector.<UVFrame>
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<UVFrame> = new Vector.<UVFrame>();
         _loc3_ = param1.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_[_loc2_.length] = param1[_loc3_];
            _loc3_--;
         }
         return _loc2_;
      }
      
      private static function §implements set each§(param1:BitmapData, param2:BitmapFilter = null) : TextureMaterial
      {
         var _loc4_:BitmapData = param2 != null ? §true use package§.§5214235316235329123423632234§(param1,param2) : param1;
         var _loc3_:TextureMaterial = §5214235868235881123423632234§.getMaterial(_loc4_,true,false);
         _loc3_.repeat = true;
         return _loc3_;
      }
      
      public function §function var null§(param1:ClientObject) : §5214237293237306123423632234§
      {
         return new §521423112892311302123423632234§(§52142380523818123423632234§,§5214235514235527123423632234§(param1.getParams(§5214235514235527123423632234§)));
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§5214235514235527123423632234§ = §5214235514235527123423632234§(param1.getParams(§5214235514235527123423632234§));
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§521423138892313902123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§throw set false§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§super package dynamic§);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§var switch throw§.material);
         §5214235868235881123423632234§.releaseMaterial(_loc2_.§extends for extends§);
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc6_:§catch const case§ = §switch var switch§();
         var _loc12_:§class set return§ = §class set return§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§class set return§));
         var _loc13_:§5214235514235527123423632234§ = new §5214235514235527123423632234§();
         var _loc10_:§if finally catch§ = _loc6_.§var while§;
         var _loc11_:TextureMaterial = §implements set each§(_loc6_.§var while§.data);
         var _loc8_:TextureMaterial = §implements set each§(_loc6_.§var while§.data,_loc12_.createFilter("hss"));
         var _loc9_:TextureMaterial = §implements set each§(_loc6_.§521423101882310201123423632234§.data,_loc12_.createFilter("hs"));
         var _loc7_:TextureMaterial = §implements set each§(_loc6_.§import var function§.data,_loc12_.createFilter("dss"));
         var _loc3_:TextureMaterial = §implements set each§(_loc6_.§5214237233237246123423632234§.data,_loc12_.createFilter("ds"));
         var _loc2_:Vector.<UVFrame> = §true use package§.§5214234220234233123423632234§(_loc11_.texture,_loc10_.§5214233118233131123423632234§,_loc10_.§5214231432231445123423632234§,_loc10_.§get set var§);
         var _loc5_:Vector.<UVFrame> = §return set include§(_loc2_);
         _loc13_.§521423138892313902123423632234§ = new TextureAnimation(_loc11_,_loc2_,_loc10_.§in for in§);
         _loc13_.§set const class§ = _loc6_.§set const class§.§set const switch§;
         _loc13_.§throw set false§ = new TextureAnimation(_loc8_,_loc2_,_loc10_.§in for in§);
         _loc13_.§5214235987236000123423632234§ = new TextureAnimation(_loc8_,_loc5_,_loc10_.§in for in§);
         _loc13_.§super package dynamic§ = _loc9_;
         _loc13_.§5214236499236512123423632234§ = _loc6_.§5214238620238633123423632234§.§set const switch§;
         _loc13_.§var switch throw§ = new TextureAnimation(_loc7_,_loc5_,_loc10_.§in for in§);
         _loc13_.§finally var implements§ = new TextureAnimation(_loc7_,_loc2_,_loc10_.§in for in§);
         _loc13_.§extends for extends§ = _loc3_;
         _loc13_.§5214232480232493123423632234§ = _loc6_.§5214239941239954123423632234§.§set const switch§;
         var _loc4_:§return switch function§ = §return switch function§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§return switch function§));
         _loc13_.§5214231285231298123423632234§ = _loc4_.getLightAnimation("start");
         _loc13_.§5214235965235978123423632234§ = _loc4_.getLightAnimation("loop");
         _loc13_.§each for class§ = _loc4_.getLightAnimation("friendStart");
         _loc13_.§5214236457236470123423632234§ = _loc4_.getLightAnimation("friendLoop");
         _loc13_.§52142391523928123423632234§ = _loc4_.getLightAnimation("enemyStart");
         _loc13_.§import catch set§ = _loc4_.getLightAnimation("enemyLoop");
         _loc13_.§catch catch false§ = _loc4_.getLightAnimation("friendBeam");
         _loc13_.§5214231083231096123423632234§ = _loc4_.getLightAnimation("enemyBeam");
         param1.putParams(§5214235514235527123423632234§,_loc13_);
      }
   }
}

