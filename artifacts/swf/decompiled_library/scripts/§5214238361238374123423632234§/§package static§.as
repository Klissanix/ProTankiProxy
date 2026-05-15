package §5214238361238374123423632234§
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214232252232265123423632234§;
   import §each var null§.§521423119402311953123423632234§;
   import §finally catch with§.§throw for continue§;
   import §for catch for§.§521423136582313671123423632234§;
   import §package package false§.§default set override§;
   
   public class §package static§
   {
      
      private static const §extends for if§:§521423119402311953123423632234§ = new §521423119402311953123423632234§(0,1);
      
      private static const §5214232784232797123423632234§:§521423119402311953123423632234§ = new §521423119402311953123423632234§(0,0.2);
      
      public function §package static§()
      {
         super();
      }
      
      public static function §5214235163235176123423632234§(param1:Vector3, param2:Number, param3:§default set override§) : void
      {
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc32_:Number = param2 - 10;
         var _loc19_:Number = param1.y;
         var _loc21_:Number = _loc32_ / 2;
         var _loc14_:Number = 0.82;
         var _loc15_:Number = 1 - (1 - _loc14_) * (1 - _loc14_) * _loc19_ * _loc19_ / (_loc21_ * _loc21_);
         if(_loc15_ > 0)
         {
            _loc15_ = Math.sqrt(_loc15_);
         }
         else
         {
            _loc15_ = 1 - (1 - _loc14_) * _loc19_ / _loc21_;
         }
         var _loc24_:Number = (_loc14_ - 1) * _loc19_ / ((1 + _loc15_) * _loc21_);
         var _loc18_:Number = _loc15_ * _loc21_ - _loc24_ * _loc19_;
         var _loc31_:Number = (1 - _loc14_) * _loc19_ / ((1 + _loc15_) * _loc21_);
         var _loc27_:Number = (1 - _loc15_) * _loc21_ / ((1 - _loc14_) * _loc19_);
         var _temp_4:* = §throw for continue§;
         var _temp_3:* = _loc31_;
         var _temp_2:* = _loc27_;
         var _loc37_:Number = 0.00001;
         var _loc35_:Number = _temp_2;
         var _loc34_:Number = _temp_3;
         var _loc33_:§throw for continue§ = _temp_4;
         var _loc36_:Number = _loc34_ - _loc35_;
         if((_loc36_ < 0 ? _loc36_ > -_loc37_ : _loc36_ < _loc37_) || _loc31_ < _loc27_)
         {
            _loc28_ = _loc14_ * _loc19_;
            _loc29_ = _loc24_ * _loc28_ + _loc18_;
         }
         else
         {
            _loc28_ = (1 - _loc15_) * _loc21_ / _loc24_ + _loc19_;
            _loc29_ = _loc21_;
         }
         var _loc20_:Number = _loc29_ - _loc15_ * _loc21_;
         var _loc22_:Number = _loc19_ - _loc28_;
         var _loc8_:Number = Math.sqrt(_loc20_ * _loc20_ + _loc22_ * _loc22_) / 2;
         _loc20_ = (1 + _loc15_) * _loc21_;
         _loc22_ = (1 - _loc14_) * _loc19_;
         var _loc5_:Number = Math.sqrt(_loc20_ * _loc20_ + _loc22_ * _loc22_) / 2;
         var _loc11_:§5214232252232265123423632234§ = new §5214232252232265123423632234§(new Vector3(param1.x,_loc8_,_loc5_),16,§5214232784232797123423632234§);
         var _loc6_:Matrix4 = new Matrix4();
         var _loc10_:Number = Math.atan(_loc31_);
         _loc6_.setRotationMatrix(-_loc10_,0,0);
         var _loc12_:Number = _loc14_ * _loc19_ + _loc5_ * Math.sin(_loc10_) - _loc8_ * Math.cos(_loc10_);
         var _loc4_:Number = -_loc21_ + _loc5_ * Math.cos(_loc10_) + _loc8_ * Math.sin(_loc10_) - (param1.z - _loc32_ / 2);
         var _loc9_:Vector3 = new Vector3(0,_loc12_,_loc4_);
         _loc6_.setPosition(_loc9_);
         var _loc25_:Vector.<§521423136582313671123423632234§> = param3.§5214234549234562123423632234§;
         param3.§5214232783232796123423632234§.§throw package else§(_loc11_,_loc6_);
         _loc25_[_loc25_.length] = _loc11_;
         _loc11_ = new §5214232252232265123423632234§(new Vector3(param1.x,_loc8_,_loc5_),16,§5214232784232797123423632234§);
         _loc6_.setRotationMatrix(_loc10_,0,0);
         _loc9_.y = -_loc9_.y;
         _loc6_.setPosition(_loc9_);
         param3.§5214232783232796123423632234§.§throw package else§(_loc11_,_loc6_);
         _loc25_[_loc25_.length] = _loc11_;
         var _loc16_:Number = param2 * 3 / 4;
         var _loc30_:Vector3 = new Vector3(param1.x,param1.y * _loc14_,_loc16_ / 2);
         var _loc17_:Matrix4 = new Matrix4();
         _loc17_.§function var import§ = _loc30_.z - param1.z;
         var _loc7_:§5214232252232265123423632234§ = new §5214232252232265123423632234§(_loc30_,16,§5214232784232797123423632234§);
         param3.§5214232783232796123423632234§.§throw package else§(_loc7_,_loc17_);
         _loc25_[_loc25_.length] = _loc7_;
         var _loc23_:Number = param2 * 3 / 4;
         var _loc13_:Vector3 = new Vector3(param1.x,param1.y * _loc14_,_loc23_ / 2);
         _loc17_.§function var import§ = param2 - _loc13_.z - param1.z;
         var _loc26_:§5214232252232265123423632234§ = new §5214232252232265123423632234§(_loc13_,16,§extends for if§);
         param3.§5214232783232796123423632234§.§throw package else§(_loc26_,_loc17_);
         _loc25_[_loc25_.length] = _loc26_;
      }
      
      public static function §finally finally var§(param1:Vector3, param2:Number, param3:§default set override§) : void
      {
         var _loc4_:Vector3 = new Vector3(param1.x,param1.y,param2 / 2);
         var _loc5_:§5214232252232265123423632234§ = new §5214232252232265123423632234§(_loc4_,0,§5214232784232797123423632234§);
         var _loc6_:Matrix4 = new Matrix4();
         _loc6_.§function var import§ = param2 / 2 - param1.z;
         param3.§5214232783232796123423632234§.§throw package else§(_loc5_,_loc6_);
         param3.§521423122122312225123423632234§ = _loc5_;
      }
   }
}

