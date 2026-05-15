package §null catch catch§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   
   public class §override set set§
   {
      
      private var §52142350123514123423632234§:Graphics;
      
      private var §each var continue§:Boolean;
      
      public function §override set set§(param1:Graphics)
      {
         super();
         this.§52142350123514123423632234§ = param1;
      }
      
      public function §finally for import§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc9_:Number = NaN;
         if(param4 > 360)
         {
            param4 = 360;
         }
         param4 = 3.141592653589793 / 180 * param4;
         var _loc7_:Number = param4 / 8;
         var _loc16_:Number = param3 / Math.cos(_loc7_ / 2);
         var _loc13_:Number = param5 *= 3.141592653589793 / 180;
         var _loc11_:Number = param1 + Math.cos(param5) * param3;
         var _loc10_:Number = param2 + Math.sin(param5) * param3;
         if(param6)
         {
            this.§for for true§(param1,param2);
            this.§import for case§(_loc11_,_loc10_);
         }
         else
         {
            this.§for for true§(_loc11_,_loc10_);
         }
         _loc9_ = 0;
         while(_loc9_ < 8)
         {
            _loc13_ += _loc7_;
            _loc8_ = param1 + Math.cos(_loc13_ - _loc7_ / 2) * _loc16_;
            _loc15_ = param2 + Math.sin(_loc13_ - _loc7_ / 2) * _loc16_;
            _loc14_ = param1 + Math.cos(_loc13_) * param3;
            _loc12_ = param2 + Math.sin(_loc13_) * param3;
            this.§5214234446234459123423632234§(_loc8_,_loc15_,_loc14_,_loc12_);
            _loc9_++;
         }
         if(param6)
         {
            this.§import for case§(param1,param2);
         }
      }
      
      public function §5214238018238031123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.drawRoundRectComplex(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §52142331523328123423632234§(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void
      {
         this.§52142350123514123423632234§.beginGradientFill(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §var const for§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc5_:Number = 0.7853981633974483;
         var _loc10_:Number = 0;
         var _loc8_:Number = param3 / Math.cos(_loc5_ / 2);
         var _loc13_:Number = param4 / Math.cos(_loc5_ / 2);
         this.§for for true§(param1 + param3,param2);
         _loc7_ = 0;
         while(_loc7_ < 8)
         {
            _loc10_ += _loc5_;
            _loc6_ = param1 + Math.cos(_loc10_ - _loc5_ / 2) * _loc8_;
            _loc12_ = param2 + Math.sin(_loc10_ - _loc5_ / 2) * _loc13_;
            _loc11_ = param1 + Math.cos(_loc10_) * param3;
            _loc9_ = param2 + Math.sin(_loc10_) * param4;
            this.§5214234446234459123423632234§(_loc6_,_loc12_,_loc11_,_loc9_);
            _loc7_++;
         }
      }
      
      public function §null var const§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.moveTo(param1,param2);
         this.§52142350123514123423632234§.lineTo(param3,param4);
      }
      
      public function §false set final§() : void
      {
         this.§52142350123514123423632234§.clear();
         this.§each var continue§ = false;
      }
      
      public function §switch const throw§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         var _loc9_:Number = NaN;
         if(param3 < 3)
         {
            return;
         }
         var _loc7_:Number = 3.141592653589793 * 2 / param3;
         var _loc8_:Number = param6 = 3.141592653589793 * (param6 - 90) / 180;
         var _loc11_:Number = param1 + Math.cos(_loc8_ + _loc7_ / 2) * param4;
         var _loc10_:Number = param2 + Math.sin(_loc8_ + _loc7_ / 2) * param4;
         this.§for for true§(_loc11_,_loc10_);
         _loc8_ += _loc7_;
         _loc9_ = 0;
         while(_loc9_ < param3)
         {
            _loc11_ = param1 + Math.cos(_loc8_) * param5;
            _loc10_ = param2 + Math.sin(_loc8_) * param5;
            this.§import for case§(_loc11_,_loc10_);
            _loc11_ = param1 + Math.cos(_loc8_ + _loc7_ / 2) * param4;
            _loc10_ = param2 + Math.sin(_loc8_ + _loc7_ / 2) * param4;
            this.§import for case§(_loc11_,_loc10_);
            _loc8_ += _loc7_;
            _loc9_++;
         }
      }
      
      public function §521423127702312783123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0) : void
      {
         var _loc10_:Number = NaN;
         param5 = param5 * 3.141592653589793 / 180;
         var _loc9_:Number = 2 * 3.141592653589793 / param3;
         var _loc6_:Number = param4 / 2 / Math.sin(_loc9_ / 2);
         var _loc8_:Number = Math.cos(param5) * _loc6_ + param1;
         var _loc7_:Number = Math.sin(param5) * _loc6_ + param2;
         this.§for for true§(_loc8_,_loc7_);
         _loc10_ = 1;
         while(_loc10_ <= param3)
         {
            _loc8_ = Math.cos(_loc9_ * _loc10_ + param5) * _loc6_ + param1;
            _loc7_ = Math.sin(_loc9_ * _loc10_ + param5) * _loc6_ + param2;
            this.§import for case§(_loc8_,_loc7_);
            _loc10_++;
         }
      }
      
      public function set §5214235960235973123423632234§(param1:Graphics) : void
      {
         this.§52142350123514123423632234§ = param1;
      }
      
      public function §521423107452310758123423632234§(param1:Number = 1, param2:Number = 0, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3) : void
      {
         this.§52142350123514123423632234§.lineStyle(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§each var continue§ = true;
      }
      
      public function §5214235945235958123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.§finally for import§(param4,param5,param2,param1,param3,true);
      }
      
      public function §function set if§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.drawCircle(param1,param2,param3);
      }
      
      public function §catch var in§(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.lineGradientStyle(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §for for true§(param1:Number, param2:Number) : void
      {
         this.§52142350123514123423632234§.moveTo(param1,param2);
      }
      
      public function §5214234446234459123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.curveTo(param1,param2,param3,param4);
      }
      
      public function §import for case§(param1:Number, param2:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.lineTo(param1,param2);
      }
      
      public function §true package if§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         param6 = param6 * 3.141592653589793 / 180;
         param5 = param5 * 3.141592653589793 / 180;
         var _loc11_:Number = Math.cos(param5 - param6) * param3;
         var _loc10_:Number = Math.sin(param5 - param6) * param3;
         var _loc7_:Number = Math.cos(-param6) * param4;
         var _loc12_:Number = Math.sin(-param6) * param4;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         this.§null var const§(-_loc8_ + param1,-_loc9_ + param2,_loc7_ - _loc8_ + param1,_loc12_ - _loc9_ + param2);
         this.§import for case§(_loc11_ - _loc8_ + param1,_loc10_ - _loc9_ + param2);
         this.§import for case§(-_loc8_ + param1,-_loc9_ + param2);
      }
      
      public function §else use const§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.drawRoundRect(param1,param2,param3,param4,param5);
      }
      
      public function §try use native§(param1:BitmapData, param2:Matrix = null, param3:Boolean = true, param4:Boolean = false) : void
      {
         this.§52142350123514123423632234§.beginBitmapFill(param1,param2,param3,param4);
      }
      
      public function get §5214235960235973123423632234§() : Graphics
      {
         return this.§52142350123514123423632234§;
      }
      
      public function §null package implements§(param1:Number, param2:Number = 1) : void
      {
         this.§52142350123514123423632234§.beginFill(param1,param2);
      }
      
      public function §const use super§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.moveTo(param1,param2);
         this.§52142350123514123423632234§.curveTo(param3,param4,param5,param6);
      }
      
      public function §5214234370234383123423632234§() : void
      {
         this.§52142350123514123423632234§.endFill();
      }
      
      public function §for package null§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§each var continue§)
         {
            this.§521423107452310758123423632234§();
         }
         this.§52142350123514123423632234§.drawRect(param1,param2,param3,param4);
      }
   }
}

