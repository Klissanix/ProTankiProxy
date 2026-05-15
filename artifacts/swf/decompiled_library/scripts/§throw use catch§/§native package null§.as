package §throw use catch§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §native set while§.DamageIndicatorEffect;
   import §switch catch extends§.§5214234111234124123423632234§;
   import §switch catch extends§.§class catch case§;
   import §switch catch extends§.§each for§;
   import §switch catch extends§.§function catch catch§;
   
   public class §native package null§ extends §class catch case§ implements §each for§
   {
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      public function §native package null§()
      {
         super();
      }
      
      private function §break for const§(param1:§function catch catch§) : uint
      {
         switch(param1.§5214237237237250123423632234§)
         {
            case §5214234111234124123423632234§.§dynamic switch true§:
               return 15741974;
            case §5214234111234124123423632234§.§521423136562313669123423632234§:
               return 14207247;
            case §5214234111234124123423632234§.§final set catch§:
               return 381208;
            default:
               return 16777215;
         }
      }
      
      public function §throw use static§(param1:Vector.<§function catch catch§>) : void
      {
         var _loc2_:§function catch catch§ = null;
         var _loc4_:§5214239411239424123423632234§ = null;
         var _loc5_:Vector3 = null;
         var _loc3_:Object3D = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§5214235960235973123423632234§ != null)
            {
               _loc4_ = §5214237923237936123423632234§.getTankData(§do switch var§.getUser(_loc2_.§5214235960235973123423632234§)).§521423122212312234123423632234§;
               _loc5_ = BattleUtils.§switch for default§;
               if(_loc4_.§include package null§)
               {
                  _loc5_.copy(_loc4_.§function use false§);
                  BattleUtils.localToGlobal(_loc4_.§break switch catch§(),_loc5_);
               }
               else
               {
                  _loc3_ = _loc4_.§include switch break§().§static set catch§();
                  _loc5_.reset(_loc3_.x,_loc3_.y,_loc3_.z);
               }
               DamageIndicatorEffect.start(_loc5_,this.§break for const§(_loc2_),_loc2_.§each package in§);
            }
         }
      }
   }
}

