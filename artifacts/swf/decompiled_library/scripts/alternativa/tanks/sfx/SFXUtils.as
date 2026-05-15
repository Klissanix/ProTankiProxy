package alternativa.tanks.sfx
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   
   public class SFXUtils
   {
      
      private static var §continue use throw§:Vector3 = new Vector3();
      
      private static var §521423124622312475123423632234§:Vector3 = new Vector3();
      
      private static var §static catch finally§:Vector3 = new Vector3();
      
      private static var §5214235605235618123423632234§:Vector3 = new Vector3();
      
      private static var §native catch catch§:Vector3 = new Vector3();
      
      private static var §5214234064234077123423632234§:Matrix3 = new Matrix3();
      
      private static var §5214232029232042123423632234§:Matrix3 = new Matrix3();
      
      public function SFXUtils()
      {
         super();
      }
      
      public static function setEffectParams(param1:Object3D) : void
      {
         param1.softAttenuation = 80;
         param1.useLight = false;
         param1.shadowMapAlphaThreshold = 2;
         param1.depthMapAlphaThreshold = 2;
         param1.useShadowMap = false;
      }
      
      public static function alignObjectPlaneToView(param1:Object3D, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         var _loc6_:Number = NaN;
         if(param3.y < -0.99999 || param3.y > 0.99999)
         {
            §continue use throw§.x = 0;
            §continue use throw§.y = 0;
            §continue use throw§.z = 1;
            _loc6_ = param3.y < 0 ? 3.141592653589793 : 0;
         }
         else
         {
            §continue use throw§.x = param3.z;
            §continue use throw§.y = 0;
            §continue use throw§.z = -param3.x;
            §continue use throw§.normalize();
            _loc6_ = Math.acos(param3.y);
         }
         §5214234064234077123423632234§.fromAxisAngle(§continue use throw§,_loc6_);
         §5214235605235618123423632234§.x = param4.x - param2.x;
         §5214235605235618123423632234§.y = param4.y - param2.y;
         §5214235605235618123423632234§.z = param4.z - param2.z;
         var _loc5_:Number = §5214235605235618123423632234§.x * param3.x + §5214235605235618123423632234§.y * param3.y + §5214235605235618123423632234§.z * param3.z;
         §5214235605235618123423632234§.x -= _loc5_ * param3.x;
         §5214235605235618123423632234§.y -= _loc5_ * param3.y;
         §5214235605235618123423632234§.z -= _loc5_ * param3.z;
         §5214235605235618123423632234§.normalize();
         §5214234064234077123423632234§.transformVector(Vector3.§521423109692310982123423632234§,§native catch catch§);
         _loc5_ = §native catch catch§.x * §5214235605235618123423632234§.x + §native catch catch§.y * §5214235605235618123423632234§.y + §native catch catch§.z * §5214235605235618123423632234§.z;
         §521423124622312475123423632234§.x = §native catch catch§.y * §5214235605235618123423632234§.z - §native catch catch§.z * §5214235605235618123423632234§.y;
         §521423124622312475123423632234§.y = §native catch catch§.z * §5214235605235618123423632234§.x - §native catch catch§.x * §5214235605235618123423632234§.z;
         §521423124622312475123423632234§.z = §native catch catch§.x * §5214235605235618123423632234§.y - §native catch catch§.y * §5214235605235618123423632234§.x;
         §521423124622312475123423632234§.normalize();
         _loc6_ = Math.acos(_loc5_);
         §5214232029232042123423632234§.fromAxisAngle(§521423124622312475123423632234§,_loc6_);
         §5214234064234077123423632234§.append(§5214232029232042123423632234§);
         §5214234064234077123423632234§.getEulerAngles(§static catch finally§);
         param1.rotationX = §static catch finally§.x;
         param1.rotationY = §static catch finally§.y;
         param1.rotationZ = §static catch finally§.z;
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
      }
      
      public static function calculateAlphaForObject(param1:Object3D, param2:Vector3, param3:Vector3, param4:Boolean, param5:Number, param6:Number) : void
      {
         var _loc8_:Number = param2.x - param1.x;
         var _loc9_:Number = param2.y - param1.y;
         var _loc10_:Number = param2.z - param1.z;
         var _loc7_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_ + _loc10_ * _loc10_);
         _loc8_ /= _loc7_;
         _loc9_ /= _loc7_;
         _loc10_ /= _loc7_;
         var _loc11_:Number = Math.abs(_loc8_ * param3.x + _loc9_ * param3.y + _loc10_ * param3.z);
         if(param4)
         {
            _loc11_ = 1 - _loc11_;
         }
         _loc11_ = Math.pow(_loc11_,param5);
         param1.alpha = 1 - _loc11_ / param6;
         if(param1.alpha < 0)
         {
            param1.alpha = 0;
         }
      }
   }
}

