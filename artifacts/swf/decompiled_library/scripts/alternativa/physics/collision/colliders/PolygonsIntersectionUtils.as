package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §each var null§.§function set class§;
   import flash.geom.Point;
   import §for catch for§.§521423136582313671123423632234§;
   
   public class PolygonsIntersectionUtils
   {
      
      private static const §5214236141236154123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const §5214239639239652123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const §5214238369238382123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static var §521423105332310546123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static var §5214239115239128123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const point:Point = new Point();
      
      private static const §class use with§:Vector3 = new Vector3();
      
      private static const §catch var do§:Vector3 = new Vector3();
      
      public function PolygonsIntersectionUtils()
      {
         super();
      }
      
      private static function a75c9393(param1:Point, param2:Point, param3:Point, param4:Point, param5:Point) : void
      {
         var _loc10_:Number = param2.x - param1.x;
         var _loc12_:Number = param2.y - param1.y;
         var _loc8_:Number = param4.x - param3.x;
         var _loc11_:Number = param4.y - param3.y;
         var _loc7_:Number = param3.x - param1.x;
         var _loc9_:Number = param3.y - param1.y;
         var _loc6_:Number = (_loc10_ * _loc9_ - _loc12_ * _loc7_) / (_loc12_ * _loc8_ - _loc10_ * _loc11_);
         param5.x = param3.x + _loc6_ * _loc8_;
         param5.y = param3.y + _loc6_ * _loc11_;
      }
      
      private static function clip(param1:Point, param2:Point, param3:Vector.<Point>, param4:Vector.<Point>, param5:int) : int
      {
         var _loc7_:int = 0;
         var _loc8_:Point = null;
         var _loc6_:Boolean = false;
         var _loc11_:Point = param3[param5 - 1];
         var _temp_2:* = param1;
         var _temp_1:* = param2;
         var _loc14_:Point = _loc11_;
         var _loc13_:Point = _temp_1;
         var _loc12_:Point = _temp_2;
         var _loc15_:Number = _loc13_.x - _loc12_.x;
         var _loc17_:Number = _loc13_.y - _loc12_.y;
         var _loc18_:Number = _loc14_.x - _loc12_.x;
         var _loc16_:Number = _loc14_.y - _loc12_.y;
         var _loc10_:Boolean = _loc15_ * _loc16_ - _loc17_ * _loc18_ > 0;
         var _loc9_:int = 0;
         while(_loc7_ < param5)
         {
            _loc8_ = param3[_loc7_];
            var _temp_4:* = param1;
            var _temp_3:* = param2;
            var _loc21_:Point = _loc8_;
            var _loc20_:Point = _temp_3;
            var _loc19_:Point = _temp_4;
            var _loc22_:Number = _loc20_.x - _loc19_.x;
            var _loc24_:Number = _loc20_.y - _loc19_.y;
            var _loc25_:Number = _loc21_.x - _loc19_.x;
            var _loc23_:Number = _loc21_.y - _loc19_.y;
            _loc6_ = _loc22_ * _loc23_ - _loc24_ * _loc25_ > 0;
            if(_loc6_)
            {
               if(!_loc10_)
               {
                  var _temp_9:* = param1;
                  var _temp_8:* = param2;
                  var _temp_7:* = _loc11_;
                  var _temp_6:* = _loc8_;
                  var _loc26_:Point = point;
                  var _loc28_:Point = _temp_6;
                  var _loc27_:Point = _temp_7;
                  var _loc37_:Point = _temp_8;
                  var _loc36_:Point = _temp_9;
                  var _loc33_:Number = _loc37_.x - _loc36_.x;
                  var _loc35_:Number = _loc37_.y - _loc36_.y;
                  var _loc31_:Number = _loc28_.x - _loc27_.x;
                  var _loc34_:Number = _loc28_.y - _loc27_.y;
                  var _loc30_:Number = _loc27_.x - _loc36_.x;
                  var _loc32_:Number = _loc27_.y - _loc36_.y;
                  var _loc29_:Number = (_loc33_ * _loc32_ - _loc35_ * _loc30_) / (_loc35_ * _loc31_ - _loc33_ * _loc34_);
                  _loc26_.x = _loc27_.x + _loc29_ * _loc31_;
                  _loc26_.y = _loc27_.y + _loc29_ * _loc34_;
                  var _temp_11:* = point;
                  var _temp_10:* = param4;
                  var _loc39_:int = _loc9_++;
                  var _loc41_:Vector.<Point> = _temp_10;
                  var _loc40_:Point = _temp_11;
                  var _loc38_:Point = _loc41_[_loc39_];
                  _loc38_.x = _loc40_.x;
                  _loc38_.y = _loc40_.y;
               }
               var _temp_14:* = _loc8_;
               var _temp_13:* = param4;
               var _loc43_:int = _loc9_++;
               var _loc45_:Vector.<Point> = _temp_13;
               var _loc44_:Point = _temp_14;
               var _loc42_:Point = _loc45_[_loc43_];
               _loc42_.x = _loc44_.x;
               _loc42_.y = _loc44_.y;
            }
            else if(_loc10_)
            {
               var _temp_19:* = param1;
               var _temp_18:* = param2;
               var _temp_17:* = _loc11_;
               var _temp_16:* = _loc8_;
               var _loc46_:Point = point;
               var _loc48_:Point = _temp_16;
               var _loc47_:Point = _temp_17;
               var _loc57_:Point = _temp_18;
               var _loc56_:Point = _temp_19;
               var _loc53_:Number = _loc57_.x - _loc56_.x;
               var _loc55_:Number = _loc57_.y - _loc56_.y;
               var _loc51_:Number = _loc48_.x - _loc47_.x;
               var _loc54_:Number = _loc48_.y - _loc47_.y;
               var _loc50_:Number = _loc47_.x - _loc56_.x;
               var _loc52_:Number = _loc47_.y - _loc56_.y;
               var _loc49_:Number = (_loc53_ * _loc52_ - _loc55_ * _loc50_) / (_loc55_ * _loc51_ - _loc53_ * _loc54_);
               _loc46_.x = _loc47_.x + _loc49_ * _loc51_;
               _loc46_.y = _loc47_.y + _loc49_ * _loc54_;
               var _temp_21:* = point;
               var _temp_20:* = param4;
               var _loc59_:int = _loc9_++;
               var _loc61_:Vector.<Point> = _temp_20;
               var _loc60_:Point = _temp_21;
               var _loc58_:Point = _loc61_[_loc59_];
               _loc58_.x = _loc60_.x;
               _loc58_.y = _loc60_.y;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc8_;
            _loc7_++;
         }
         return _loc9_;
      }
      
      private static function f75fe021(param1:Vector.<Vertex>, param2:int, param3:Vector.<Point>) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Vertex = null;
         var _loc4_:Point = null;
         while(_loc6_ < param2)
         {
            _loc5_ = param1[_loc6_];
            _loc4_ = param3[_loc6_];
            _loc4_.x = _loc5_.§package use true§.x;
            _loc4_.y = _loc5_.§package use true§.y;
            _loc6_++;
         }
      }
      
      private static function e74029db(param1:Point, param2:Vector.<Point>, param3:int) : void
      {
         var _loc4_:Point = param2[param3];
         _loc4_.x = param1.x;
         _loc4_.y = param1.y;
      }
      
      private static function c4a5d732(param1:Vector.<Vertex>, param2:Vector3) : void
      {
         var _loc6_:Vertex = param1[0];
         var _loc7_:Vertex = param1[1];
         var _loc8_:Vertex = param1[2];
         var _loc3_:Vector3 = _loc6_.§package use true§;
         var _loc4_:Vector3 = _loc7_.§package use true§;
         var _loc5_:Vector3 = _loc8_.§package use true§;
         var _loc10_:Number = _loc4_.x - _loc3_.x;
         var _loc12_:Number = _loc4_.y - _loc3_.y;
         var _loc9_:Number = _loc4_.z - _loc3_.z;
         var _loc14_:Number = _loc5_.x - _loc3_.x;
         var _loc11_:Number = _loc5_.y - _loc3_.y;
         var _loc13_:Number = _loc5_.z - _loc3_.z;
         param2.x = _loc12_ * _loc13_ - _loc9_ * _loc11_;
         param2.y = _loc9_ * _loc14_ - _loc10_ * _loc13_;
         param2.z = _loc10_ * _loc11_ - _loc12_ * _loc14_;
         param2.normalize();
      }
      
      private static function a60fed07(param1:Point, param2:Vector3, param3:Vector3) : Number
      {
         var _loc4_:Number = param2.dot(param3);
         return (_loc4_ - param1.x * param3.x - param1.y * param3.y) / param3.z;
      }
      
      private static function e61cdd0b(param1:Vector.<Point>, param2:Vector.<Point>, param3:int) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Point = null;
         var _loc4_:Point = null;
         while(_loc6_ < param3)
         {
            _loc5_ = param1[_loc6_];
            _loc4_ = param2[_loc6_];
            _loc4_.x = _loc5_.x;
            _loc4_.y = _loc5_.y;
            _loc6_++;
         }
      }
      
      private static function b142aaf5(param1:Vector.<Point>, param2:int, param3:Vector.<Point>, param4:int, param5:Vector.<Point>) : int
      {
         var _loc8_:int = 0;
         var _loc10_:Point = null;
         var _loc7_:* = undefined;
         e61cdd0b(param3,§521423105332310546123423632234§,param4);
         var _loc6_:int = param4;
         var _loc9_:Point = param1[param2 - 1];
         while(_loc8_ < param2)
         {
            _loc10_ = param1[_loc8_];
            _loc6_ = clip(_loc9_,_loc10_,§521423105332310546123423632234§,§5214239115239128123423632234§,_loc6_);
            if(_loc6_ == 0)
            {
               break;
            }
            _loc9_ = _loc10_;
            _loc7_ = §521423105332310546123423632234§;
            §521423105332310546123423632234§ = §5214239115239128123423632234§;
            §5214239115239128123423632234§ = _loc7_;
            _loc8_++;
         }
         e61cdd0b(§521423105332310546123423632234§,param5,_loc6_);
         return _loc6_;
      }
      
      public static function findContacts(param1:§521423136582313671123423632234§, param2:Vector.<Vertex>, param3:int, param4:§521423136582313671123423632234§, param5:Vector.<Vertex>, param6:int, param7:Matrix4, param8:Vector.<§function set class§>) : void
      {
         var _loc11_:int = 0;
         var _loc12_:Point = null;
         var _loc13_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:§function set class§ = null;
         var _loc10_:Vector3 = null;
         c4a5d732(param2,§class use with§);
         c4a5d732(param5,§catch var do§);
         f75fe021(param2,param3,§5214236141236154123423632234§);
         f75fe021(param5,param6,§5214239639239652123423632234§);
         var _loc9_:int = b142aaf5(§5214236141236154123423632234§,param3,§5214239639239652123423632234§,param6,§5214238369238382123423632234§);
         while(_loc11_ < _loc9_)
         {
            _loc12_ = §5214238369238382123423632234§[_loc11_];
            var _temp_3:* = _loc12_;
            var _temp_2:* = param2[0].§package use true§;
            var _loc16_:Vector3 = §class use with§;
            var _loc18_:Vector3 = _temp_2;
            var _loc19_:Point = _temp_3;
            var _loc17_:Number = _loc18_.dot(_loc16_);
            _loc13_ = (_loc17_ - _loc19_.x * _loc16_.x - _loc19_.y * _loc16_.y) / _loc16_.z;
            var _temp_6:* = _loc12_;
            var _temp_5:* = param5[0].§package use true§;
            var _loc20_:Vector3 = §catch var do§;
            var _loc22_:Vector3 = _temp_5;
            var _loc23_:Point = _temp_6;
            var _loc21_:Number = _loc22_.dot(_loc20_);
            _loc15_ = (_loc21_ - _loc23_.x * _loc20_.x - _loc23_.y * _loc20_.y) / _loc20_.z;
            if(_loc15_ > _loc13_)
            {
               _loc14_ = §function set class§.§52142342923442123423632234§();
               _loc14_.§continue switch native§ = param1;
               _loc14_.§with const get§ = param4;
               _loc10_ = _loc14_.§dynamic final§;
               _loc10_.x = _loc12_.x;
               _loc10_.y = _loc12_.y;
               _loc10_.z = 0.5 * (_loc13_ + _loc15_);
               _loc10_.transform4(param7);
               _loc14_.§5214237971237984123423632234§ = _loc15_ - _loc13_;
               _loc14_.§5214233761233774123423632234§.x = param7.§521423117972311810123423632234§;
               _loc14_.§5214233761233774123423632234§.y = param7.§null use use§;
               _loc14_.§5214233761233774123423632234§.z = param7.m22;
               param8[param8.length] = _loc14_;
            }
            _loc11_++;
         }
      }
      
      private static function a287de25(param1:Point, param2:Point, param3:Point) : Boolean
      {
         var _loc4_:Number = param2.x - param1.x;
         var _loc6_:Number = param2.y - param1.y;
         var _loc7_:Number = param3.x - param1.x;
         var _loc5_:Number = param3.y - param1.y;
         return _loc4_ * _loc5_ - _loc6_ * _loc7_ > 0;
      }
   }
}

