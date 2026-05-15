package alternativa.tanks.models.battle.meteor
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import flash.utils.Dictionary;
   import §implements switch import§.§521423138712313884123423632234§;
   import §implements switch import§.§5214234244234257123423632234§;
   import §implements switch import§.§with catch in§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class MeteorStormModel extends §521423138712313884123423632234§ implements §5214234244234257123423632234§, §throw catch var§, §5214234168234181123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §521423107482310761123423632234§:EffectsMaterialRegistry;
      
      private var §true switch with§:Vector.<MeteorSFXData> = new Vector.<MeteorSFXData>();
      
      private var §null var import§:Dictionary = new Dictionary();
      
      public function MeteorStormModel()
      {
         super();
      }
      
      private function d84c2c4(param1:§52142320823221123423632234§, param2:§52142320823221123423632234§, param3:int, param4:int) : void
      {
         var _loc6_:MeteorSFXData = this.d1f26db1();
         var _loc5_:Meteor = new Meteor(§52142380523818123423632234§.getObjectPool(),§521423107482310761123423632234§,BattleUtils.getVector3(param1),BattleUtils.getVector3(param2),BattleUtils.getVector3(param2),param3,_loc6_);
         _loc5_.setTime(param4);
         _loc5_.addToBattle(§52142380523818123423632234§.getBattleScene3D(),§52142380523818123423632234§.getBattleRunner(),this.c34f4971);
         this.§null var import§[_loc5_] = null;
      }
      
      public function objectLoadedPost() : void
      {
         for each(var _loc1_ in §switch var switch§().§catch for dynamic§)
         {
            this.d84c2c4(_loc1_.§5214232211232224123423632234§,_loc1_.§case var function§,_loc1_.§each use function§,_loc1_.§throw catch null§);
         }
      }
      
      private function a5a4b860() : MeteorSFXData
      {
         return new MeteorSFXData(§switch var switch§(),§521423107482310761123423632234§);
      }
      
      private function c34f4971(param1:Meteor) : void
      {
         delete this.§null var import§[param1];
      }
      
      public function spawnMeteor(param1:§52142320823221123423632234§, param2:§52142320823221123423632234§, param3:int) : void
      {
         this.d84c2c4(param1,param2,param3,0);
      }
      
      public function objectUnloaded() : void
      {
         for each(var _loc1_ in this.§true switch with§)
         {
            _loc1_.meteorDistantSound.stop();
            _loc1_.nuclearBangSound.stop();
            _loc1_.meteorArrivingSound.stop();
         }
         this.§true switch with§.length = 0;
         this.§null var import§ = new Dictionary();
      }
      
      private function d1f26db1() : MeteorSFXData
      {
         if(this.§true switch with§.length == 0)
         {
            return this.a5a4b860();
         }
         return this.§true switch with§.pop();
      }
      
      public function meteorNotification() : void
      {
         var _loc1_:MeteorSFXData = this.a5a4b860();
         this.§true switch with§.push(_loc1_);
         _loc1_.meteorDistantSound.play(0,1);
      }
   }
}

