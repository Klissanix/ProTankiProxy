package alternativa.tanks.sfx
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import §for catch for§.§5214234380234393123423632234§;
   import §implements for each§.§521423120332312046123423632234§;
   import §null switch throw§.LightBeamEffect;
   import §null switch throw§.LightWaveEffect;
   import §null switch throw§.SparkEffect;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   
   public class LevelUpEffectFactory
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §while for package§:IUserInfoService;
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §for continue§:ResourceRegistry;
      
      private static const §5214231812231825123423632234§:Vector3 = new Vector3();
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      public function LevelUpEffectFactory()
      {
         super();
      }
      
      private static function e6fc6ad0(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §5214231812231825123423632234§.reset(param1,param2,param3);
         var _loc5_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         if(_loc5_.§set use for§(§5214231812231825123423632234§,Vector3.§521423109692310982123423632234§,16,param4,null,§5214235622235635123423632234§))
         {
            return §5214235622235635123423632234§.§5214232932232945123423632234§;
         }
         return param4;
      }
      
      private function d443673d(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = 500;
         var _loc5_:Number = 2000;
         var _loc6_:Number = e6fc6ad0(param1,param2,param3,_loc5_);
         return _loc4_ > _loc6_ ? _loc4_ : _loc6_;
      }
      
      private function c341e10b(param1:String, param2:Number, param3:int, param4:Object3D) : void
      {
         var _loc9_:§521423120332312046123423632234§ = new §521423120332312046123423632234§();
         var _loc7_:Boolean = §while for package§.hasPremium(param1);
         _loc9_.init(_loc7_,param3);
         var _loc8_:BitmapData = new BitmapData(_loc9_.width,_loc9_.height,true,0);
         _loc8_.draw(_loc9_);
         var _loc6_:TextureMaterial = new TextureMaterial(_loc8_,false,true,2,3);
         var _loc5_:SparkEffect = SparkEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(SparkEffect));
         _loc5_.init(500,270,270,0,param2 * 0.8,param2 * 0.15,0.35,0,0,50,param4,_loc6_,"normal");
         §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc5_);
      }
      
      public function createEffect(param1:§5214239411239424123423632234§, param2:int, param3:§include catch with§, param4:§include catch with§, param5:§include catch with§) : void
      {
         var _loc7_:Object3D = param1.§include switch break§().§static set catch§();
         var _loc6_:Number = this.d443673d(_loc7_.x,_loc7_.y,_loc7_.z);
         this.a5158c28(_loc6_,_loc7_,param3);
         this.c341e10b(param1.§do for final§.userName,_loc6_,param2,_loc7_);
         this.d2e0b29f(_loc6_,_loc7_,param4);
         this.f5e50e67(_loc7_,param5);
      }
      
      private function d2e0b29f(param1:Number, param2:Object3D, param3:§include catch with§) : void
      {
         var _loc6_:int = 0;
         var _loc12_:Number = NaN;
         var _loc11_:TextureMaterial = null;
         var _loc8_:int = 0;
         var _loc4_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc5_:SparkEffect = null;
         var _loc13_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            _loc6_ = 15;
            _loc12_ = 100;
            _loc11_ = §5214235868235881123423632234§.getMaterial(param3.data,true,false);
            while(_loc8_ < _loc6_)
            {
               _loc4_ = 3.141592653589793 * 2 * Math.random();
               _loc7_ = Math.sin(_loc4_) * _loc12_;
               _loc9_ = Math.cos(_loc4_) * _loc12_;
               _loc10_ = -110 * _loc8_ - 50;
               _loc5_ = SparkEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(SparkEffect));
               _loc5_.init(400,150,150,_loc4_,param1 * 0.7,param1 * 0.15,0.7,_loc7_,_loc9_,_loc10_,param2,_loc11_,"add");
               §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc5_);
               _loc8_++;
               _loc8_++;
            }
         }
      }
      
      private function f5e50e67(param1:Object3D, param2:§include catch with§) : void
      {
         var _loc3_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param2.data,true,false);
         var _loc4_:LightWaveEffect = LightWaveEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(LightWaveEffect));
         _loc4_.init(900,220,3,true,param1,_loc3_);
         §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc4_);
      }
      
      private function a5158c28(param1:Number, param2:Object3D, param3:§include catch with§) : void
      {
         var _loc11_:int = 0;
         var _loc9_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:LightBeamEffect = null;
         var _loc6_:int = 6;
         var _loc5_:Number = 90;
         var _loc10_:Number = 0;
         var _loc7_:Number = 3.141592653589793 * 2 / _loc6_;
         var _loc8_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param3.data);
         while(_loc11_ < _loc6_)
         {
            _loc9_ = Math.sin(_loc10_) * _loc5_;
            _loc12_ = Math.cos(_loc10_) * _loc5_;
            _loc4_ = LightBeamEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(LightBeamEffect));
            _loc4_.init(500,200,30,param1,0.8,0.5,_loc9_,_loc12_,-50,param2,_loc8_);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc4_);
            _loc10_ += _loc7_;
            _loc11_++;
         }
      }
   }
}

