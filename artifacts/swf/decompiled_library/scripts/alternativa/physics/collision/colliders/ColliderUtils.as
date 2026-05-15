package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214231131231144123423632234§;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§5214237379237392123423632234§;
   
   public class ColliderUtils
   {
      
      private static const §class use each§:Vector3 = new Vector3();
      
      private static const §try switch false§:Vector3 = new Vector3();
      
      public function ColliderUtils()
      {
         super();
      }
      
      public static function buildContactBasis(param1:Vector3, param2:Matrix4, param3:Matrix4, param4:Matrix4) : void
      {
         var _loc6_:Vector3 = §class use each§;
         var _loc5_:Vector3 = §try switch false§;
         if(Math.abs(param1.x) < Math.abs(param1.y))
         {
            _loc6_.x = 0;
            _loc6_.y = param1.z;
            _loc6_.z = -param1.y;
         }
         else
         {
            _loc6_.x = -param1.z;
            _loc6_.y = 0;
            _loc6_.z = param1.x;
         }
         _loc6_.normalize();
         _loc5_.x = param1.y * _loc6_.z - param1.z * _loc6_.y;
         _loc5_.y = param1.z * _loc6_.x - param1.x * _loc6_.z;
         _loc5_.z = param1.x * _loc6_.y - param1.y * _loc6_.x;
         param4.m00 = _loc6_.x;
         param4.§5214234411234424123423632234§ = _loc6_.y;
         param4.§521423135662313579123423632234§ = _loc6_.z;
         param4.§5214239800239813123423632234§ = _loc5_.x;
         param4.m11 = _loc5_.y;
         param4.§case set function§ = _loc5_.z;
         param4.§521423117972311810123423632234§ = param1.x;
         param4.§null use use§ = param1.y;
         param4.m22 = param1.z;
      }
      
      public static function transformFaceToReferenceSpace(param1:Matrix4, param2:Matrix4, param3:Vector.<Vertex>, param4:int) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Vertex = null;
         while(_loc6_ < param4)
         {
            _loc5_ = param3[_loc6_];
            param2.transformVector(_loc5_.local,_loc5_.§default var do§);
            param1.transformVectorInverse(_loc5_.§default var do§,_loc5_.§package use true§);
            _loc6_++;
         }
      }
      
      public static function getRectFaceInCCWOrder(param1:§5214231131231144123423632234§, param2:Vector3, param3:Vector.<Vertex>) : void
      {
         var _loc6_:Vector3 = param1.§return const dynamic§;
         var _loc4_:Vertex = param3[0];
         _loc4_.local.x = _loc6_.x;
         _loc4_.local.y = _loc6_.y;
         _loc4_.local.z = 0;
         _loc4_ = param3[1];
         _loc4_.local.x = -_loc6_.x;
         _loc4_.local.y = _loc6_.y;
         _loc4_.local.z = 0;
         _loc4_ = param3[2];
         _loc4_.local.x = -_loc6_.x;
         _loc4_.local.y = -_loc6_.y;
         _loc4_.local.z = 0;
         _loc4_ = param3[3];
         _loc4_.local.x = _loc6_.x;
         _loc4_.local.y = -_loc6_.y;
         _loc4_.local.z = 0;
         var _loc7_:Matrix4 = param1.§try const throw§;
         var _loc5_:Number = param2.x * _loc7_.§521423117972311810123423632234§ + param2.y * _loc7_.§null use use§ + param2.z * _loc7_.m22;
         if(_loc5_ < 0)
         {
            _loc4_ = param3[0];
            param3[0] = param3[3];
            param3[3] = _loc4_;
            _loc4_ = param3[1];
            param3[1] = param3[2];
            param3[2] = _loc4_;
         }
      }
      
      public static function getBoxFaceVerticesInCCWOrder(param1:§5214232252232265123423632234§, param2:Vector3, param3:FaceSide, param4:Vector.<Vertex>) : void
      {
         var _loc11_:Vector3 = null;
         var _loc12_:Vertex = null;
         var _loc10_:Matrix4 = param1.§try const throw§;
         var _loc17_:int = 0;
         var _loc13_:Number = _loc10_.m00;
         var _loc15_:Number = _loc10_.§5214234411234424123423632234§;
         var _loc16_:Number = _loc10_.§521423135662313579123423632234§;
         var _loc5_:Number = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.z;
         var _loc7_:Number = _loc5_ > 0 ? _loc5_ : -_loc5_;
         _loc13_ = _loc10_.§5214239800239813123423632234§;
         _loc15_ = _loc10_.m11;
         _loc16_ = _loc10_.§case set function§;
         var _loc6_:Number = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.z;
         var _loc14_:Number = _loc6_ > 0 ? _loc6_ : -_loc6_;
         if(_loc14_ > _loc7_)
         {
            _loc7_ = _loc14_;
            _loc5_ = _loc6_;
            _loc17_ = 1;
         }
         _loc13_ = _loc10_.§521423117972311810123423632234§;
         _loc15_ = _loc10_.§null use use§;
         _loc16_ = _loc10_.m22;
         _loc6_ = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.z;
         _loc14_ = _loc6_ > 0 ? _loc6_ : -_loc6_;
         if(_loc14_ > _loc7_)
         {
            _loc5_ = _loc6_;
            _loc17_ = 2;
         }
         var _loc8_:Number = _loc5_ > 0 ? 1 : -1;
         if(param3 == FaceSide.§dynamic set if§)
         {
            _loc8_ = -_loc8_;
         }
         var _loc9_:Vector3 = param1.§return const dynamic§;
         switch(_loc17_)
         {
            case 0:
               _loc11_ = param4[0].local;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.z = _loc9_.z;
               _loc11_ = param4[1].local;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.z = _loc9_.z;
               _loc11_ = param4[2].local;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.z = -_loc9_.z;
               _loc11_ = param4[3].local;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.z = -_loc9_.z;
               break;
            case 1:
               _loc11_ = param4[0].local;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.z = _loc9_.z;
               _loc11_ = param4[1].local;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.z = -_loc9_.z;
               _loc11_ = param4[2].local;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.z = -_loc9_.z;
               _loc11_ = param4[3].local;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.z = _loc9_.z;
               break;
            case 2:
               _loc11_ = param4[0].local;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.z = _loc8_ * _loc9_.z;
               _loc11_ = param4[1].local;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.z = _loc8_ * _loc9_.z;
               _loc11_ = param4[2].local;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.z = _loc8_ * _loc9_.z;
               _loc11_ = param4[3].local;
               _loc11_.x = _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.z = _loc8_ * _loc9_.z;
               break;
            default:
               throw new Error();
         }
         if(_loc5_ < 0)
         {
            _loc12_ = param4[0];
            param4[0] = param4[3];
            param4[3] = _loc12_;
            _loc12_ = param4[1];
            param4[1] = param4[2];
            param4[2] = _loc12_;
         }
      }
      
      public static function getTriangleFaceInCCWOrder(param1:§5214237379237392123423632234§, param2:Vector3, param3:Vector.<Vertex>) : void
      {
         var _loc4_:Vertex = param3[0];
         _loc4_.local.x = param1.§521423134652313478123423632234§.x;
         _loc4_.local.y = param1.§521423134652313478123423632234§.y;
         _loc4_.local.z = 0;
         _loc4_ = param3[1];
         _loc4_.local.x = param1.§5214232428232441123423632234§.x;
         _loc4_.local.y = param1.§5214232428232441123423632234§.y;
         _loc4_.local.z = 0;
         _loc4_ = param3[2];
         _loc4_.local.x = param1.§5214238317238330123423632234§.x;
         _loc4_.local.y = param1.§5214238317238330123423632234§.y;
         _loc4_.local.z = 0;
         var _loc6_:Matrix4 = param1.§try const throw§;
         var _loc5_:Number = param2.x * _loc6_.§521423117972311810123423632234§ + param2.y * _loc6_.§null use use§ + param2.z * _loc6_.m22;
         if(_loc5_ < 0)
         {
            _loc4_ = param3[0];
            param3[0] = param3[2];
            param3[2] = _loc4_;
         }
      }
   }
}

