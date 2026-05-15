package §521423602373123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214234233234246123423632234§.§finally const null§;
   import §5214234233234246123423632234§.§if var return§;
   import §5214234233234246123423632234§.§true set do§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §extends var import§.§5214231658231671123423632234§;
   import §set package in§.ClientObject;
   
   public class §get switch switch§ extends §finally const null§ implements §package const function§, §true set do§
   {
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      public function §get switch switch§()
      {
         super();
      }
      
      private function §521423127492312762123423632234§(param1:ClientObject, param2:§5214231658231671123423632234§) : uint
      {
         switch(param2)
         {
            case §5214231658231671123423632234§.§implements set implements§:
               return this.getLaserPointerBlueColor(param1);
            case §5214231658231671123423632234§.§521423107532310766123423632234§:
               return this.getLaserPointerRedColor(param1);
            default:
               return this.getLaserPointerRedColor(param1);
         }
      }
      
      private function §throw const const§(param1:ClientObject) : void
      {
         var _loc2_:§5214236462236475123423632234§ = this.§native var true§(param1);
         if(_loc2_.§const for break§())
         {
            return;
         }
         var _loc3_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§(param1);
         var _loc4_:Boolean = _loc3_.§do for final§.local;
         if(_loc4_)
         {
            _loc2_.§5214239409239422123423632234§();
            return;
         }
         _loc2_.show(this.§521423127492312762123423632234§(_loc3_.§do for final§.§catch use continue§,_loc3_.§5214238124238137123423632234§));
      }
      
      public function updateDirection(param1:Vector3) : void
      {
         var _loc2_:Matrix3 = BattleUtils.§catch set else§;
         _loc2_.setRotationMatrixForObject3D(§5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§.§static set catch§());
         var _loc3_:Vector3 = BattleUtils.§switch for default§;
         _loc2_.getUp(_loc3_);
         var _loc4_:Number = _loc3_.dot(param1);
         if(this.§else var for§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§,_loc4_))
         {
            §521423120492312062123423632234§.updateDirection(_loc4_);
         }
      }
      
      public function §5214238020238033123423632234§(param1:ClientObject, param2:Number) : void
      {
         if(!isNaN(param2))
         {
            this.§else var for§(param1,param2);
         }
      }
      
      public function aimAtTank(param1:§5214239411239424123423632234§, param2:Vector3) : void
      {
         if(this.§default var null§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§,param1,param2))
         {
            §521423120492312062123423632234§.aimAtTank(param1.§5214233939233952123423632234§().id,BattleUtils.getVector3d(param2));
         }
      }
      
      public function §5214234957234970123423632234§(param1:ClientObject) : void
      {
         this.§5214231815231828123423632234§(param1);
      }
      
      private function §5214231815231828123423632234§(param1:ClientObject) : Boolean
      {
         var _loc2_:§5214236462236475123423632234§ = §5214236462236475123423632234§(param1.getParams(§5214236462236475123423632234§));
         if(Boolean(_loc2_) && _loc2_.§const for break§())
         {
            _loc2_.§true package final§();
            return true;
         }
         return false;
      }
      
      private function §521423110872311100123423632234§(param1:ClientObject) : §5214239411239424123423632234§
      {
         return §5214237923237936123423632234§.getTankData(param1).§521423122212312234123423632234§;
      }
      
      public function getLaserPointerBlueColor(param1:ClientObject) : uint
      {
         var _loc2_:§if var return§ = §if var return§(param1.getParams(§if var return§));
         return uint(_loc2_.§package set throw§);
      }
      
      public function §class var set§(param1:ClientObject, param2:ClientObject, param3:§52142320823221123423632234§) : void
      {
         if(param2 == null || BattleUtils.isVector3dNaN(param3))
         {
            return;
         }
         this.§default var null§(param1,§5214237923237936123423632234§.getTankData(param2).§521423122212312234123423632234§,BattleUtils.getVector3(param3));
      }
      
      public function §else var for§(param1:ClientObject, param2:Number) : Boolean
      {
         this.§throw const const§(param1);
         var _loc3_:§5214236462236475123423632234§ = §5214236462236475123423632234§(param1.getParams(§5214236462236475123423632234§));
         return _loc3_.updateDirection(param2);
      }
      
      private function §default var null§(param1:ClientObject, param2:§5214239411239424123423632234§, param3:Vector3) : Boolean
      {
         this.§throw const const§(param1);
         var _loc4_:§5214236462236475123423632234§ = §5214236462236475123423632234§(param1.getParams(§5214236462236475123423632234§));
         return _loc4_.aimAtTank(param2,param3);
      }
      
      public function getLaserPointerRedColor(param1:ClientObject) : uint
      {
         var _loc2_:§if var return§ = §if var return§(param1.getParams(§if var return§));
         return uint(_loc2_.§null const throw§);
      }
      
      private function §native var true§(param1:ClientObject) : §5214236462236475123423632234§
      {
         var _loc2_:§5214236462236475123423632234§ = §5214236462236475123423632234§(param1.getParams(§5214236462236475123423632234§));
         var _loc3_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§(param1);
         var _loc4_:§if var return§ = §if var return§(_loc3_.§do for final§.§catch use continue§.getParams(§if var return§));
         if(_loc2_ == null)
         {
            _loc2_ = new §5214236462236475123423632234§(_loc4_.§else switch continue§,this.§521423110872311100123423632234§(param1));
            param1.putParams(§5214236462236475123423632234§,_loc2_);
         }
         return _loc2_;
      }
      
      public function hideLaser() : void
      {
         if(this.§5214231815231828123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§))
         {
            §521423120492312062123423632234§.§true package final§();
         }
      }
   }
}

