package §do catch return§
{
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §each var null§.§521423119402311953123423632234§;
   import §for catch for§.§521423136582313671123423632234§;
   
   public class §5214232252232265123423632234§ extends §521423136582313671123423632234§
   {
      
      public var §return const dynamic§:Vector3 = new Vector3();
      
      public function §5214232252232265123423632234§(param1:Vector3, param2:int, param3:§521423119402311953123423632234§)
      {
         super(1,param2,param3);
         this.§return const dynamic§.copy(param1);
      }
      
      override public function §5214239358239371123423632234§(param1:Vector3, param2:Vector3, param3:Number, param4:Vector3) : Number
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc13_:Matrix4 = this.§try const throw§;
         var _loc11_:Number = -1;
         var _loc8_:Number = 1e+308;
         var _loc5_:Number = param1.x - _loc13_.§catch package continue§;
         var _loc6_:Number = param1.y - _loc13_.§include var break§;
         var _loc7_:Number = param1.z - _loc13_.§function var import§;
         var _loc9_:Number = _loc13_.m00 * _loc5_ + _loc13_.§5214234411234424123423632234§ * _loc6_ + _loc13_.§521423135662313579123423632234§ * _loc7_;
         var _loc10_:Number = _loc13_.§5214239800239813123423632234§ * _loc5_ + _loc13_.m11 * _loc6_ + _loc13_.§case set function§ * _loc7_;
         var _loc12_:Number = _loc13_.§521423117972311810123423632234§ * _loc5_ + _loc13_.§null use use§ * _loc6_ + _loc13_.m22 * _loc7_;
         _loc5_ = _loc13_.m00 * param2.x + _loc13_.§5214234411234424123423632234§ * param2.y + _loc13_.§521423135662313579123423632234§ * param2.z;
         _loc6_ = _loc13_.§5214239800239813123423632234§ * param2.x + _loc13_.m11 * param2.y + _loc13_.§case set function§ * param2.z;
         _loc7_ = _loc13_.§521423117972311810123423632234§ * param2.x + _loc13_.§null use use§ * param2.y + _loc13_.m22 * param2.z;
         if(_loc5_ < param3 && _loc5_ > -param3)
         {
            if(_loc9_ < -this.§return const dynamic§.x || _loc9_ > this.§return const dynamic§.x)
            {
               return -1;
            }
         }
         else
         {
            _loc14_ = (-this.§return const dynamic§.x - _loc9_) / _loc5_;
            _loc15_ = (this.§return const dynamic§.x - _loc9_) / _loc5_;
            if(_loc14_ < _loc15_)
            {
               if(_loc14_ > _loc11_)
               {
                  _loc11_ = _loc14_;
                  param4.x = -1;
                  param4.y = param4.z = 0;
               }
               if(_loc15_ < _loc8_)
               {
                  _loc8_ = _loc15_;
               }
            }
            else
            {
               if(_loc15_ > _loc11_)
               {
                  _loc11_ = _loc15_;
                  param4.x = 1;
                  param4.y = param4.z = 0;
               }
               if(_loc14_ < _loc8_)
               {
                  _loc8_ = _loc14_;
               }
            }
            if(_loc8_ < _loc11_)
            {
               return -1;
            }
         }
         if(_loc6_ < param3 && _loc6_ > -param3)
         {
            if(_loc10_ < -this.§return const dynamic§.y || _loc10_ > this.§return const dynamic§.y)
            {
               return -1;
            }
         }
         else
         {
            _loc14_ = (-this.§return const dynamic§.y - _loc10_) / _loc6_;
            _loc15_ = (this.§return const dynamic§.y - _loc10_) / _loc6_;
            if(_loc14_ < _loc15_)
            {
               if(_loc14_ > _loc11_)
               {
                  _loc11_ = _loc14_;
                  param4.y = -1;
                  param4.x = param4.z = 0;
               }
               if(_loc15_ < _loc8_)
               {
                  _loc8_ = _loc15_;
               }
            }
            else
            {
               if(_loc15_ > _loc11_)
               {
                  _loc11_ = _loc15_;
                  param4.y = 1;
                  param4.x = param4.z = 0;
               }
               if(_loc14_ < _loc8_)
               {
                  _loc8_ = _loc14_;
               }
            }
            if(_loc8_ < _loc11_)
            {
               return -1;
            }
         }
         if(_loc7_ < param3 && _loc7_ > -param3)
         {
            if(_loc12_ < -this.§return const dynamic§.z || _loc12_ > this.§return const dynamic§.z)
            {
               return -1;
            }
         }
         else
         {
            _loc14_ = (-this.§return const dynamic§.z - _loc12_) / _loc7_;
            _loc15_ = (this.§return const dynamic§.z - _loc12_) / _loc7_;
            if(_loc14_ < _loc15_)
            {
               if(_loc14_ > _loc11_)
               {
                  _loc11_ = _loc14_;
                  param4.z = -1;
                  param4.x = param4.y = 0;
               }
               if(_loc15_ < _loc8_)
               {
                  _loc8_ = _loc15_;
               }
            }
            else
            {
               if(_loc15_ > _loc11_)
               {
                  _loc11_ = _loc15_;
                  param4.z = 1;
                  param4.x = param4.y = 0;
               }
               if(_loc14_ < _loc8_)
               {
                  _loc8_ = _loc14_;
               }
            }
            if(_loc8_ < _loc11_)
            {
               return -1;
            }
         }
         _loc5_ = param4.x;
         _loc6_ = param4.y;
         _loc7_ = param4.z;
         param4.x = _loc13_.m00 * _loc5_ + _loc13_.§5214239800239813123423632234§ * _loc6_ + _loc13_.§521423117972311810123423632234§ * _loc7_;
         param4.y = _loc13_.§5214234411234424123423632234§ * _loc5_ + _loc13_.m11 * _loc6_ + _loc13_.§null use use§ * _loc7_;
         param4.z = _loc13_.§521423135662313579123423632234§ * _loc5_ + _loc13_.§case set function§ * _loc6_ + _loc13_.m22 * _loc7_;
         return _loc11_;
      }
      
      override public function §override var for§(param1:§521423136582313671123423632234§) : §521423136582313671123423632234§
      {
         var _loc2_:§5214232252232265123423632234§ = param1 as §5214232252232265123423632234§;
         if(_loc2_ == null)
         {
            return this;
         }
         super.§override var for§(_loc2_);
         this.§return const dynamic§.copy(_loc2_.§return const dynamic§);
         return this;
      }
      
      override public function §finally switch static§() : §521423130562313069123423632234§
      {
         var _loc4_:Matrix4 = §try const throw§;
         var _loc5_:§521423130562313069123423632234§ = this.§catch for include§;
         var _loc1_:Number = _loc4_.m00 < 0 ? -_loc4_.m00 : _loc4_.m00;
         var _loc2_:Number = _loc4_.§5214239800239813123423632234§ < 0 ? -_loc4_.§5214239800239813123423632234§ : _loc4_.§5214239800239813123423632234§;
         var _loc3_:Number = _loc4_.§521423117972311810123423632234§ < 0 ? -_loc4_.§521423117972311810123423632234§ : _loc4_.§521423117972311810123423632234§;
         _loc5_.§case package class§ = this.§return const dynamic§.x * _loc1_ + this.§return const dynamic§.y * _loc2_ + this.§return const dynamic§.z * _loc3_;
         _loc5_.§false for use§ = -_loc5_.§case package class§;
         _loc1_ = _loc4_.§5214234411234424123423632234§ < 0 ? -_loc4_.§5214234411234424123423632234§ : _loc4_.§5214234411234424123423632234§;
         _loc2_ = _loc4_.m11 < 0 ? -_loc4_.m11 : _loc4_.m11;
         _loc3_ = _loc4_.§null use use§ < 0 ? -_loc4_.§null use use§ : _loc4_.§null use use§;
         _loc5_.§switch const final§ = this.§return const dynamic§.x * _loc1_ + this.§return const dynamic§.y * _loc2_ + this.§return const dynamic§.z * _loc3_;
         _loc5_.§use set return§ = -_loc5_.§switch const final§;
         _loc1_ = _loc4_.§521423135662313579123423632234§ < 0 ? -_loc4_.§521423135662313579123423632234§ : _loc4_.§521423135662313579123423632234§;
         _loc2_ = _loc4_.§case set function§ < 0 ? -_loc4_.§case set function§ : _loc4_.§case set function§;
         _loc3_ = _loc4_.m22 < 0 ? -_loc4_.m22 : _loc4_.m22;
         _loc5_.§const for get§ = this.§return const dynamic§.x * _loc1_ + this.§return const dynamic§.y * _loc2_ + this.§return const dynamic§.z * _loc3_;
         _loc5_.§super const if§ = -_loc5_.§const for get§;
         _loc5_.§false for use§ += _loc4_.§catch package continue§;
         _loc5_.§case package class§ += _loc4_.§catch package continue§;
         _loc5_.§use set return§ += _loc4_.§include var break§;
         _loc5_.§switch const final§ += _loc4_.§include var break§;
         _loc5_.§super const if§ += _loc4_.§function var import§;
         _loc5_.§const for get§ += _loc4_.§function var import§;
         return _loc5_;
      }
      
      override protected function §throw set throw§() : §521423136582313671123423632234§
      {
         return new §5214232252232265123423632234§(this.§return const dynamic§,collisionGroup,§if set implements§);
      }
   }
}

