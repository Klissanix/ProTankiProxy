package §use switch use§
{
   import §521423119352311948123423632234§.§5214237558237571123423632234§;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§throw for true§;
   import §5214237707237720123423632234§.§521423128782312891123423632234§;
   import §5214237707237720123423632234§.§5214237323237336123423632234§;
   import §5214237707237720123423632234§.§5214238455238468123423632234§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.battle.BattleService;
   import alternativa.utils.TextureMaterialRegistry;
   import §class set do§.§52142318623199123423632234§;
   import §class set do§.BattleBonus;
   import §class set do§.BattleBonusData;
   import flash.display.BitmapData;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import §while switch throw§.BonusLight;
   import §while switch throw§.§final use super§;
   
   public class BonusCommonModel extends §521423128782312891123423632234§ implements §5214237323237336123423632234§, §do set function§, §throw catch var§, §5214237558237571123423632234§
   {
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static var §get set function§:BitmapData;
      
      public function BonusCommonModel()
      {
         super();
      }
      
      private static function a4285bd9(param1:§5214233863233876123423632234§) : Mesh
      {
         var _loc2_:Mesh = Mesh(param1.§5214237990238003123423632234§[0]);
         var _loc4_:BitmapData = param1.§finally for break§(0);
         if(_loc4_ == null)
         {
            _loc4_ = e75483c();
         }
         var _loc5_:Mesh = Mesh(_loc2_.clone());
         var _loc3_:TextureMaterial = §5214235868235881123423632234§.getMaterial(_loc4_);
         _loc3_.resolution = _loc5_.calculateResolution(_loc4_.width,_loc4_.height) + 1;
         _loc5_.setMaterialToAllFaces(_loc3_);
         return _loc5_;
      }
      
      private static function e75483c() : BitmapData
      {
         if(§get set function§ == null)
         {
            §get set function§ = new §throw for true§(65280);
         }
         return §get set function§;
      }
      
      public function getBonus(param1:Long) : §52142318623199123423632234§
      {
         var _loc2_:BattleBonusData = BattleBonusData(getData(BattleBonusData));
         var _loc3_:BattleBonus = BattleBonus(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(BattleBonus));
         _loc3_.init(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.id,param1,_loc2_,§52142380523818123423632234§);
         return _loc3_;
      }
      
      private function f6c073aa(param1:Mesh) : TextureMaterial
      {
         var _loc2_:Face = param1.faces[0];
         return TextureMaterial(_loc2_.material);
      }
      
      public function objectLoaded() : void
      {
         var _loc3_:BattleBonusData = new BattleBonusData();
         var _loc1_:§5214238455238468123423632234§ = §switch var switch§();
         _loc3_.§throw for extends§ = a4285bd9(_loc1_.§import var default§);
         _loc3_.§5214238156238169123423632234§ = a4285bd9(_loc1_.§521423118812311894123423632234§);
         _loc3_.§521423112832311296123423632234§ = a4285bd9(_loc1_.§continue const class§);
         _loc3_.§5214239194239207123423632234§ = §5214235868235881123423632234§.getMaterial(_loc1_.§5214236653236666123423632234§.data);
         _loc3_.§5214239194239207123423632234§.resolution = 5;
         if(_loc1_.§native super§ != null)
         {
            _loc3_.§521423126882312701123423632234§ = _loc1_.§native super§.§set const switch§;
         }
         _loc3_.lifeTimeMs = _loc1_.§throw catch null§;
         var _loc2_:BonusLight = §final use super§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§final use super§)).getBonusLight();
         _loc3_.lightColor = _loc2_.getLightColor().getColor();
         _loc3_.§52142383023843123423632234§ = _loc2_.getLightColor().getIntensity();
         _loc3_.attenuationBegin = _loc2_.getAttenuationBegin();
         _loc3_.attenuationEnd = _loc2_.getAttenuationEnd();
         putData(BattleBonusData,_loc3_);
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:BattleBonusData = BattleBonusData(getData(BattleBonusData));
         §5214235868235881123423632234§.releaseMaterial(this.f6c073aa(_loc1_.§throw for extends§));
         §5214235868235881123423632234§.releaseMaterial(this.f6c073aa(_loc1_.§521423112832311296123423632234§));
         §5214235868235881123423632234§.releaseMaterial(this.f6c073aa(_loc1_.§5214238156238169123423632234§));
         §5214235868235881123423632234§.releaseMaterial(_loc1_.§5214239194239207123423632234§);
      }
   }
}

