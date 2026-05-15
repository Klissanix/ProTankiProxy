package §5214234427234440123423632234§
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import §5214238868238881123423632234§.§5214231727231740123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import §each var null§.§const throw§;
   import §in var use§.§521423114252311438123423632234§;
   import §in var use§.§each package true§;
   import §in var use§.§true const static§;
   import §package package false§.§default set override§;
   import §package package false§.§static set true§;
   import §set package in§.ClientObject;
   
   public class §5214232489232502123423632234§ extends §each package true§ implements §true const static§, §5214232306232319123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §52142398123994123423632234§:Vector3 = new Vector3();
      
      private static const §import const if§:Vector3 = new Vector3();
      
      private static const §521423128092312822123423632234§:Vector3 = new Vector3();
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      public function §5214232489232502123423632234§()
      {
         super();
      }
      
      public function §get package extends§(param1:ClientObject, param2:Vector3, param3:Number, param4:§const throw§) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc11_:§default set override§ = null;
         var _loc12_:§const throw§ = null;
         var _loc9_:§5214239411239424123423632234§ = null;
         var _loc10_:Vector3 = null;
         var _loc6_:§5214233510233523123423632234§ = §5214233510233523123423632234§(param1.getParams(§5214233510233523123423632234§));
         if(_loc6_ == null)
         {
            return false;
         }
         var _loc5_:Number = _loc6_.§521423140692314082123423632234§() * _loc6_.§521423140692314082123423632234§();
         var _loc7_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         for each(_loc11_ in _loc7_.§5214235797235810123423632234§())
         {
            _loc12_ = _loc11_.§5214232783232796123423632234§;
            _loc9_ = _loc12_.§521423122212312234123423632234§;
            if(_loc9_.§implements catch catch§ == §get catch§.§52142350323516123423632234§ && _loc12_ != param4)
            {
               _loc10_ = _loc9_.§break switch catch§().§implements catch catch§.§dynamic final§;
               §52142398123994123423632234§.diff(_loc10_,param2);
               _loc8_ = §52142398123994123423632234§.lengthSqr();
               if(_loc8_ <= _loc5_)
               {
                  if(!this.§break var return§(_loc9_,param2))
                  {
                     §import const if§.copy(§52142398123994123423632234§);
                     §import const if§.normalize();
                     _loc9_.§5214239340239353123423632234§(_loc9_.§break switch catch§().§implements catch catch§.§dynamic final§,§import const if§,param3 * _loc6_.§5214231830231843123423632234§(Math.sqrt(_loc8_)));
                  }
               }
            }
         }
         return true;
      }
      
      private function §continue var override§(param1:Vector3, param2:§const throw§, param3:Number) : Boolean
      {
         §521423128092312822123423632234§.reset(0,param3,0);
         §521423128092312822123423632234§.transform3(param2.§5214235599235612123423632234§);
         §521423128092312822123423632234§.add(param2.§implements catch catch§.§dynamic final§);
         §521423128092312822123423632234§.subtract(param1);
         var _loc4_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         return _loc4_.§set use for§(param1,§521423128092312822123423632234§,16,1,null,§5214235622235635123423632234§);
      }
      
      private function §break var return§(param1:§5214239411239424123423632234§, param2:Vector3) : Boolean
      {
         var _loc3_:§const throw§ = param1.§break switch catch§();
         var _loc4_:Number = 0.75 * param1.§throw catch try§();
         return this.§continue var override§(param2,_loc3_,0) && this.§continue var override§(param2,_loc3_,-_loc4_) && this.§continue var override§(param2,_loc3_,_loc4_);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§521423114252311438123423632234§ = §switch var switch§();
         var _loc3_:§5214233510233523123423632234§ = null;
         if(_loc2_ != null)
         {
            _loc3_ = new §5214233510233523123423632234§(BattleUtils.toClientScale(_loc2_.§5214239468239481123423632234§),BattleUtils.toClientScale(_loc2_.§extends use throw§),_loc2_.§5214231085231098123423632234§,_loc2_.§var for get§ * §5214231727231740123423632234§.§5214233647233660123423632234§.§function const super§());
         }
         param1.putParams(§5214233510233523123423632234§,_loc3_);
      }
   }
}

