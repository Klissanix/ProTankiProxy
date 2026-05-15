package §do catch return§
{
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §each var null§.§521423119402311953123423632234§;
   import §for catch for§.§521423136582313671123423632234§;
   
   public class §5214237379237392123423632234§ extends §521423136582313671123423632234§
   {
      
      public var §521423134652313478123423632234§:Vector3 = new Vector3();
      
      public var §5214232428232441123423632234§:Vector3 = new Vector3();
      
      public var §5214238317238330123423632234§:Vector3 = new Vector3();
      
      public var §native package for§:Vector3 = new Vector3();
      
      public var §521423123972312410123423632234§:Vector3 = new Vector3();
      
      public var §catch switch var§:Vector3 = new Vector3();
      
      public function §5214237379237392123423632234§(param1:Vector3, param2:Vector3, param3:Vector3, param4:int, param5:§521423119402311953123423632234§)
      {
         super(8,param4,param5);
         this.§5214237872237885123423632234§(param1,param2,param3);
      }
      
      override public function §5214239358239371123423632234§(param1:Vector3, param2:Vector3, param3:Number, param4:Vector3) : Number
      {
         var _loc12_:Matrix4 = this.§try const throw§;
         var _loc5_:Number = param2.x * _loc12_.§521423117972311810123423632234§ + param2.y * _loc12_.§null use use§ + param2.z * _loc12_.m22;
         if(_loc5_ < param3 && _loc5_ > -param3)
         {
            return -1;
         }
         var _loc6_:Number = param1.x - _loc12_.§catch package continue§;
         var _loc7_:Number = param1.y - _loc12_.§include var break§;
         var _loc8_:Number = param1.z - _loc12_.§function var import§;
         var _loc11_:Number = _loc6_ * _loc12_.§521423117972311810123423632234§ + _loc7_ * _loc12_.§null use use§ + _loc8_ * _loc12_.m22;
         var _loc13_:Number = -_loc11_ / _loc5_;
         if(_loc13_ < 0)
         {
            return -1;
         }
         var _loc9_:Number = _loc6_ * _loc12_.m00 + _loc7_ * _loc12_.§5214234411234424123423632234§ + _loc8_ * _loc12_.§521423135662313579123423632234§;
         var _loc10_:Number = _loc6_ * _loc12_.§5214239800239813123423632234§ + _loc7_ * _loc12_.m11 + _loc8_ * _loc12_.§case set function§;
         _loc6_ = _loc9_ + _loc13_ * (param2.x * _loc12_.m00 + param2.y * _loc12_.§5214234411234424123423632234§ + param2.z * _loc12_.§521423135662313579123423632234§);
         _loc7_ = _loc10_ + _loc13_ * (param2.x * _loc12_.§5214239800239813123423632234§ + param2.y * _loc12_.m11 + param2.z * _loc12_.§case set function§);
         if(this.§native package for§.x * (_loc7_ - this.§521423134652313478123423632234§.y) - this.§native package for§.y * (_loc6_ - this.§521423134652313478123423632234§.x) < 0 || this.§521423123972312410123423632234§.x * (_loc7_ - this.§5214232428232441123423632234§.y) - this.§521423123972312410123423632234§.y * (_loc6_ - this.§5214232428232441123423632234§.x) < 0 || this.§catch switch var§.x * (_loc7_ - this.§5214238317238330123423632234§.y) - this.§catch switch var§.y * (_loc6_ - this.§5214238317238330123423632234§.x) < 0)
         {
            return -1;
         }
         if(param2.x * _loc12_.§521423117972311810123423632234§ + param2.y * _loc12_.§null use use§ + param2.z * _loc12_.m22 > 0)
         {
            param4.x = -_loc12_.§521423117972311810123423632234§;
            param4.y = -_loc12_.§null use use§;
            param4.z = -_loc12_.m22;
         }
         else
         {
            param4.x = _loc12_.§521423117972311810123423632234§;
            param4.y = _loc12_.§null use use§;
            param4.z = _loc12_.m22;
         }
         return _loc13_;
      }
      
      override public function §finally switch static§() : §521423130562313069123423632234§
      {
         var _loc7_:§521423130562313069123423632234§ = this.§catch for include§;
         var _loc3_:Matrix4 = this.§try const throw§;
         var _loc1_:Number = 0.005;
         var _loc8_:Number = _loc1_ * _loc3_.§521423117972311810123423632234§;
         var _loc5_:Number = _loc1_ * _loc3_.§null use use§;
         var _loc6_:Number = _loc1_ * _loc3_.m22;
         var _loc2_:Number = this.§521423134652313478123423632234§.x * _loc3_.m00 + this.§521423134652313478123423632234§.y * _loc3_.§5214239800239813123423632234§;
         _loc7_.§false for use§ = _loc7_.§case package class§ = _loc2_ + _loc8_;
         var _loc4_:Number = _loc2_ - _loc8_;
         if(_loc4_ > _loc7_.§case package class§)
         {
            _loc7_.§case package class§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§false for use§)
         {
            _loc7_.§false for use§ = _loc4_;
         }
         _loc2_ = this.§521423134652313478123423632234§.x * _loc3_.§5214234411234424123423632234§ + this.§521423134652313478123423632234§.y * _loc3_.m11;
         _loc7_.§use set return§ = _loc7_.§switch const final§ = _loc2_ + _loc5_;
         _loc4_ = _loc2_ - _loc5_;
         if(_loc4_ > _loc7_.§switch const final§)
         {
            _loc7_.§switch const final§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§use set return§)
         {
            _loc7_.§use set return§ = _loc4_;
         }
         _loc2_ = this.§521423134652313478123423632234§.x * _loc3_.§521423135662313579123423632234§ + this.§521423134652313478123423632234§.y * _loc3_.§case set function§;
         _loc7_.§super const if§ = _loc7_.§const for get§ = _loc2_ + _loc6_;
         _loc4_ = _loc2_ - _loc6_;
         if(_loc4_ > _loc7_.§const for get§)
         {
            _loc7_.§const for get§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§super const if§)
         {
            _loc7_.§super const if§ = _loc4_;
         }
         _loc2_ = this.§5214232428232441123423632234§.x * _loc3_.m00 + this.§5214232428232441123423632234§.y * _loc3_.§5214239800239813123423632234§;
         _loc4_ = _loc2_ + _loc8_;
         if(_loc4_ > _loc7_.§case package class§)
         {
            _loc7_.§case package class§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§false for use§)
         {
            _loc7_.§false for use§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc8_;
         if(_loc4_ > _loc7_.§case package class§)
         {
            _loc7_.§case package class§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§false for use§)
         {
            _loc7_.§false for use§ = _loc4_;
         }
         _loc2_ = this.§5214232428232441123423632234§.x * _loc3_.§5214234411234424123423632234§ + this.§5214232428232441123423632234§.y * _loc3_.m11;
         _loc4_ = _loc2_ + _loc5_;
         if(_loc4_ > _loc7_.§switch const final§)
         {
            _loc7_.§switch const final§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§use set return§)
         {
            _loc7_.§use set return§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc5_;
         if(_loc4_ > _loc7_.§switch const final§)
         {
            _loc7_.§switch const final§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§use set return§)
         {
            _loc7_.§use set return§ = _loc4_;
         }
         _loc2_ = this.§5214232428232441123423632234§.x * _loc3_.§521423135662313579123423632234§ + this.§5214232428232441123423632234§.y * _loc3_.§case set function§;
         _loc4_ = _loc2_ + _loc6_;
         if(_loc4_ > _loc7_.§const for get§)
         {
            _loc7_.§const for get§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§super const if§)
         {
            _loc7_.§super const if§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc6_;
         if(_loc4_ > _loc7_.§const for get§)
         {
            _loc7_.§const for get§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§super const if§)
         {
            _loc7_.§super const if§ = _loc4_;
         }
         _loc2_ = this.§5214238317238330123423632234§.x * _loc3_.m00 + this.§5214238317238330123423632234§.y * _loc3_.§5214239800239813123423632234§;
         _loc4_ = _loc2_ + _loc8_;
         if(_loc4_ > _loc7_.§case package class§)
         {
            _loc7_.§case package class§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§false for use§)
         {
            _loc7_.§false for use§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc8_;
         if(_loc4_ > _loc7_.§case package class§)
         {
            _loc7_.§case package class§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§false for use§)
         {
            _loc7_.§false for use§ = _loc4_;
         }
         _loc2_ = this.§5214238317238330123423632234§.x * _loc3_.§5214234411234424123423632234§ + this.§5214238317238330123423632234§.y * _loc3_.m11;
         _loc4_ = _loc2_ + _loc5_;
         if(_loc4_ > _loc7_.§switch const final§)
         {
            _loc7_.§switch const final§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§use set return§)
         {
            _loc7_.§use set return§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc5_;
         if(_loc4_ > _loc7_.§switch const final§)
         {
            _loc7_.§switch const final§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§use set return§)
         {
            _loc7_.§use set return§ = _loc4_;
         }
         _loc2_ = this.§5214238317238330123423632234§.x * _loc3_.§521423135662313579123423632234§ + this.§5214238317238330123423632234§.y * _loc3_.§case set function§;
         _loc4_ = _loc2_ + _loc6_;
         if(_loc4_ > _loc7_.§const for get§)
         {
            _loc7_.§const for get§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§super const if§)
         {
            _loc7_.§super const if§ = _loc4_;
         }
         _loc4_ = _loc2_ - _loc6_;
         if(_loc4_ > _loc7_.§const for get§)
         {
            _loc7_.§const for get§ = _loc4_;
         }
         else if(_loc4_ < _loc7_.§super const if§)
         {
            _loc7_.§super const if§ = _loc4_;
         }
         _loc7_.§false for use§ += _loc3_.§catch package continue§;
         _loc7_.§case package class§ += _loc3_.§catch package continue§;
         _loc7_.§use set return§ += _loc3_.§include var break§;
         _loc7_.§switch const final§ += _loc3_.§include var break§;
         _loc7_.§super const if§ += _loc3_.§function var import§;
         _loc7_.§const for get§ += _loc3_.§function var import§;
         return _loc7_;
      }
      
      override protected function §throw set throw§() : §521423136582313671123423632234§
      {
         return new §5214237379237392123423632234§(this.§521423134652313478123423632234§,this.§5214232428232441123423632234§,this.§5214238317238330123423632234§,collisionGroup,§if set implements§);
      }
      
      private function §5214237872237885123423632234§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         this.§521423134652313478123423632234§.copy(param1);
         this.§5214232428232441123423632234§.copy(param2);
         this.§5214238317238330123423632234§.copy(param3);
         this.§native package for§.diff(param2,param1);
         this.§native package for§.normalize();
         this.§521423123972312410123423632234§.diff(param3,param2);
         this.§521423123972312410123423632234§.normalize();
         this.§catch switch var§.diff(param1,param3);
         this.§catch switch var§.normalize();
      }
      
      override public function §override var for§(param1:§521423136582313671123423632234§) : §521423136582313671123423632234§
      {
         super.§override var for§(param1);
         var _loc2_:§5214237379237392123423632234§ = param1 as §5214237379237392123423632234§;
         if(_loc2_ != null)
         {
            this.§521423134652313478123423632234§.copy(_loc2_.§521423134652313478123423632234§);
            this.§5214232428232441123423632234§.copy(_loc2_.§5214232428232441123423632234§);
            this.§5214238317238330123423632234§.copy(_loc2_.§5214238317238330123423632234§);
            this.§native package for§.copy(_loc2_.§native package for§);
            this.§521423123972312410123423632234§.copy(_loc2_.§521423123972312410123423632234§);
            this.§catch switch var§.copy(_loc2_.§catch switch var§);
         }
         return this;
      }
   }
}

