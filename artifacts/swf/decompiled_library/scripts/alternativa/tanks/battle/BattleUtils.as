package alternativa.tanks.battle
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214234324234337123423632234§.§override true§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import §each var null§.§const throw§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.geom.Vector3D;
   import §for catch for§.§5214234380234393123423632234§;
   import §package package false§.§static set true§;
   
   public class BattleUtils
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §5214236357236370123423632234§:Number = 0.22;
      
      public static const §switch for default§:Vector3 = new Vector3();
      
      public static const §catch set else§:Matrix3 = new Matrix3();
      
      private static const §with var native§:§native switch false§ = new §5214235507235520123423632234§(100);
      
      private static const _direction:Vector3 = new Vector3();
      
      private static const §get switch class§:§default catch native§ = new §default catch native§();
      
      public function BattleUtils()
      {
         super();
      }
      
      public static function getVector3OrNull(param1:§52142320823221123423632234§) : Vector3
      {
         return param1 == null ? null : new Vector3(param1.x,param1.y,param1.§continue package false§);
      }
      
      public static function isFiniteVector3d(param1:§52142320823221123423632234§) : Boolean
      {
         var _loc2_:Function = isFinite;
         return param1 != null && _loc2_(param1.x) && _loc2_(param1.y) && _loc2_(param1.§continue package false§);
      }
      
      public static function getTargetsPositions(param1:Vector.<§5214239411239424123423632234§>) : Vector.<§override true§>
      {
         var _loc2_:Vector.<§override true§> = new Vector.<§override true§>(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = getTargetPosition(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function localToGlobal(param1:§const throw§, param2:Vector3) : void
      {
         param2.transform3(param1.§5214235599235612123423632234§);
         param2.add(param1.§implements catch catch§.§dynamic final§);
      }
      
      public static function copyToVector3D(param1:Vector3, param2:Vector3D) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function barrelCollidesWithStatic(param1:§else const final§) : Boolean
      {
         var _loc2_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         var _temp_1:* = param1.§521423100222310035123423632234§;
         var _loc5_:Vector3 = param1.§if var switch§;
         var _loc4_:Vector3 = _temp_1;
         var _loc6_:Number = _loc4_.x - _loc5_.x;
         var _loc7_:Number = _loc4_.y - _loc5_.y;
         var _loc8_:Number = _loc4_.z - _loc5_.z;
         var _loc3_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         return _loc2_.§set use for§(param1.§521423100222310035123423632234§,param1.§5214239673239686123423632234§,16,_loc3_,null,§get switch class§);
      }
      
      public static function isTurnedOver(param1:§const throw§) : Boolean
      {
         return param1.§5214235599235612123423632234§.m22 < 0.22;
      }
      
      public static function traceObject(param1:Object, param2:Array) : String
      {
         return "";
      }
      
      public static function getOtherTeam(param1:§5214231658231671123423632234§) : §5214231658231671123423632234§
      {
         return param1 == §5214231658231671123423632234§.§implements set implements§ ? §5214231658231671123423632234§.§521423107532310766123423632234§ : §5214231658231671123423632234§.§implements set implements§;
      }
      
      public static function getVector3dOrNull(param1:Vector3) : §52142320823221123423632234§
      {
         return param1 == null ? null : new §52142320823221123423632234§(param1.x,param1.y,param1.z);
      }
      
      public static function copyToVector3d(param1:Vector3, param2:§52142320823221123423632234§) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.§continue package false§ = param1.z;
      }
      
      public static function getTargetPosition(param1:§5214239411239424123423632234§) : §override true§
      {
         var _loc2_:§override true§ = new §override true§();
         _loc2_.§5214235960235973123423632234§ = param1.§5214233939233952123423632234§();
         _loc2_.§dynamic final§ = BattleUtils.getVector3d(param1.§break switch catch§().§implements catch catch§.§dynamic final§);
         param1.§break switch catch§().§implements catch catch§.§try switch true§.getEulerAngles(§switch for default§);
         _loc2_.§try switch true§ = getVector3d(§switch for default§);
         _loc2_.§5214231490231503123423632234§ = param1.§521423137502313763123423632234§();
         return _loc2_;
      }
      
      public static function getVector3(param1:§52142320823221123423632234§) : Vector3
      {
         return new Vector3(param1.x,param1.y,param1.§continue package false§);
      }
      
      public static function getVector3d(param1:Vector3) : §52142320823221123423632234§
      {
         return new §52142320823221123423632234§(param1.x,param1.y,param1.z);
      }
      
      public static function isTankBody(param1:§const throw§) : Boolean
      {
         return param1 != null && param1.§521423122212312234123423632234§ != null;
      }
      
      public static function globalToLocal(param1:§const throw§, param2:Vector3) : void
      {
         param2.subtract(param1.§implements catch catch§.§dynamic final§);
         param2.transformTransposed3(param1.§5214235599235612123423632234§);
      }
      
      public static function copyVector3d(param1:§52142320823221123423632234§, param2:§52142320823221123423632234§) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.§continue package false§ = param1.§continue package false§;
      }
      
      public static function toClientScale(param1:Number) : Number
      {
         return param1 * §with var native§.§521423128592312872123423632234§();
      }
      
      public static function isVector3dNaN(param1:§52142320823221123423632234§) : Boolean
      {
         return isNaN(param1.x) || isNaN(param1.y) || isNaN(param1.§continue package false§);
      }
      
      public static function copyToVector3(param1:§52142320823221123423632234§, param2:Vector3) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.§continue package false§;
      }
      
      public static function isTurretAboveGround(param1:§const throw§, param2:§else const final§) : Boolean
      {
         var _loc3_:§5214234380234393123423632234§ = null;
         var _loc4_:Vector3 = param1.§implements catch catch§.§dynamic final§;
         _direction.diff(param2.§521423100222310035123423632234§,_loc4_);
         if(param1.§5214231116231129123423632234§ != null)
         {
            _loc3_ = param1.§5214231116231129123423632234§.§dynamic use switch§;
            return !_loc3_.§set use for§(_loc4_,_direction,16,1,null,§get switch class§);
         }
         return false;
      }
      
      public static function isVector3dNaNgetVector3dVector(param1:Vector.<Vector3>) : Vector.<§52142320823221123423632234§>
      {
         var _loc2_:Vector.<§52142320823221123423632234§> = new Vector.<§52142320823221123423632234§>(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = getVector3d(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function parseNumber(param1:String, param2:Number = 0) : Number
      {
         var _loc3_:Number = Number(param1);
         return isNaN(_loc3_) ? param2 : _loc3_;
      }
   }
}

