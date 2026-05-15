package §override for continue§
{
   public class DynamicMatrix
   {
      
      public static const §null use continue§:int = 0;
      
      public static const §5214234707234720123423632234§:int = 1;
      
      private var §5214237052237065123423632234§:int;
      
      private var §do catch if§:int;
      
      protected var §5214238917238930123423632234§:Vector.<Vector.<Number>>;
      
      public function DynamicMatrix(param1:int, param2:int)
      {
         super();
         this.b2232017(param1,param2);
      }
      
      private function b2232017(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 > 0 && param2 > 0)
         {
            this.§5214237052237065123423632234§ = param1;
            this.§do catch if§ = param2;
            this.§5214238917238930123423632234§ = new Vector.<Vector.<Number>>(param2);
            while(_loc3_ < param2)
            {
               this.§5214238917238930123423632234§[_loc3_] = new Vector.<Number>(param1);
               _loc4_ = 0;
               while(_loc4_ < param2)
               {
                  this.§5214238917238930123423632234§[_loc3_][_loc4_] = 0;
                  _loc4_++;
               }
               _loc3_++;
            }
         }
      }
      
      public function GetHeight() : Number
      {
         return this.§do catch if§;
      }
      
      public function GetValue(param1:int, param2:int) : Number
      {
         var _loc3_:Number = 0;
         if(param1 >= 0 && param1 < this.§do catch if§ && param2 >= 0 && param2 <= this.§5214237052237065123423632234§)
         {
            _loc3_ = this.§5214238917238930123423632234§[param1][param2];
         }
         return _loc3_;
      }
      
      public function Add(param1:DynamicMatrix) : Boolean
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = NaN;
         if(!this.§5214238917238930123423632234§ || !param1)
         {
            return false;
         }
         var _loc4_:int = param1.GetHeight();
         var _loc6_:int = param1.GetWidth();
         if(this.§5214237052237065123423632234§ != _loc6_ || this.§do catch if§ != _loc4_)
         {
            return false;
         }
         while(_loc3_ < this.§do catch if§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§5214237052237065123423632234§)
            {
               _loc2_ = 0;
               _loc2_ = this.§5214238917238930123423632234§[_loc3_][_loc5_] + param1.GetValue(_loc3_,_loc5_);
               this.§5214238917238930123423632234§[_loc3_][_loc5_] = _loc2_;
               _loc5_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function LoadIdentity() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§5214238917238930123423632234§)
         {
            while(_loc1_ < this.§do catch if§)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5214237052237065123423632234§)
               {
                  if(_loc1_ == _loc2_)
                  {
                     this.§5214238917238930123423632234§[_loc1_][_loc2_] = 1;
                  }
                  else
                  {
                     this.§5214238917238930123423632234§[_loc1_][_loc2_] = 0;
                  }
                  _loc2_++;
               }
               _loc1_++;
            }
         }
      }
      
      public function GetWidth() : Number
      {
         return this.§5214237052237065123423632234§;
      }
      
      public function LoadZeros() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§5214238917238930123423632234§)
         {
            while(_loc1_ < this.§do catch if§)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5214237052237065123423632234§)
               {
                  this.§5214238917238930123423632234§[_loc1_][_loc2_] = 0;
                  _loc2_++;
               }
               _loc1_++;
            }
         }
      }
      
      public function MultiplyNumber(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Number = NaN;
         if(!this.§5214238917238930123423632234§)
         {
            return false;
         }
         while(_loc3_ < this.§do catch if§)
         {
            _loc4_ = 0;
            while(_loc4_ < this.§5214237052237065123423632234§)
            {
               _loc2_ = 0;
               _loc2_ = this.§5214238917238930123423632234§[_loc3_][_loc4_] * param1;
               this.§5214238917238930123423632234§[_loc3_][_loc4_] = _loc2_;
               _loc4_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function Multiply(param1:DynamicMatrix, param2:int = 0) : Boolean
      {
         var _loc3_:DynamicMatrix = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(!this.§5214238917238930123423632234§ || !param1)
         {
            return false;
         }
         var _loc6_:int = param1.GetHeight();
         var _loc10_:int = param1.GetWidth();
         if(param2 == 1)
         {
            if(this.§5214237052237065123423632234§ != _loc6_)
            {
               return false;
            }
            _loc3_ = new DynamicMatrix(_loc10_,this.§do catch if§);
            while(_loc5_ < this.§do catch if§)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc10_)
               {
                  _loc4_ = 0;
                  _loc8_ = 0;
                  _loc9_ = 0;
                  while(_loc8_ < Math.max(this.§do catch if§,_loc6_) && _loc9_ < Math.max(this.§5214237052237065123423632234§,_loc10_))
                  {
                     _loc4_ += param1.GetValue(_loc8_,_loc7_) * this.§5214238917238930123423632234§[_loc5_][_loc9_];
                     _loc8_++;
                     _loc9_++;
                  }
                  _loc3_.SetValue(_loc5_,_loc7_,_loc4_);
                  _loc7_++;
               }
               _loc5_++;
            }
            this.b5bc337f();
            this.b2232017(_loc10_,this.§do catch if§);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§5214237052237065123423632234§)
               {
                  this.§5214238917238930123423632234§[_loc5_][_loc7_] = _loc3_.GetValue(_loc5_,_loc7_);
                  _loc7_++;
               }
               _loc5_++;
            }
         }
         else
         {
            if(this.§do catch if§ != _loc10_)
            {
               return false;
            }
            _loc3_ = new DynamicMatrix(this.§5214237052237065123423632234§,_loc6_);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§5214237052237065123423632234§)
               {
                  _loc4_ = 0;
                  _loc8_ = 0;
                  _loc9_ = 0;
                  while(_loc8_ < Math.max(_loc6_,this.§do catch if§) && _loc9_ < Math.max(_loc10_,this.§5214237052237065123423632234§))
                  {
                     _loc4_ += this.§5214238917238930123423632234§[_loc8_][_loc7_] * param1.GetValue(_loc5_,_loc9_);
                     _loc8_++;
                     _loc9_++;
                  }
                  _loc3_.SetValue(_loc5_,_loc7_,_loc4_);
                  _loc7_++;
               }
               _loc5_++;
            }
            this.b5bc337f();
            this.b2232017(this.§5214237052237065123423632234§,_loc6_);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§5214237052237065123423632234§)
               {
                  this.§5214238917238930123423632234§[_loc5_][_loc7_] = _loc3_.GetValue(_loc5_,_loc7_);
                  _loc7_++;
               }
               _loc5_++;
            }
         }
         return true;
      }
      
      private function b5bc337f() : void
      {
         this.§5214238917238930123423632234§ = null;
      }
      
      public function SetValue(param1:int, param2:int, param3:Number) : void
      {
         if(param1 >= 0 && param1 < this.§do catch if§ && param2 >= 0 && param2 <= this.§5214237052237065123423632234§)
         {
            this.§5214238917238930123423632234§[param1][param2] = param3;
         }
      }
   }
}

