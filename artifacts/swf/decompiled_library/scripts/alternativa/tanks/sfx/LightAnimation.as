package alternativa.tanks.sfx
{
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import alternativa.engine3d.lights.TubeLight;
   import §class switch switch§.§else set case§;
   
   public final class LightAnimation
   {
      
      private var §while set extends§:int;
      
      private var time:Vector.<uint>;
      
      private var intensity:Vector.<Number>;
      
      private var color:Vector.<uint>;
      
      private var attenuationBegin:Vector.<Number>;
      
      private var attenuationEnd:Vector.<Number>;
      
      public function LightAnimation(param1:Vector.<§else set case§>)
      {
         var _loc2_:int = 0;
         var _loc3_:§else set case§ = null;
         super();
         this.§while set extends§ = param1.length;
         this.intensity = new Vector.<Number>(this.§while set extends§,true);
         this.color = new Vector.<uint>(this.§while set extends§,true);
         this.attenuationBegin = new Vector.<Number>(this.§while set extends§,true);
         this.attenuationEnd = new Vector.<Number>(this.§while set extends§,true);
         this.time = new Vector.<uint>(this.§while set extends§,true);
         while(_loc2_ < this.§while set extends§)
         {
            _loc3_ = param1[_loc2_];
            this.intensity[_loc2_] = _loc3_.§with for try§;
            this.color[_loc2_] = uint(_loc3_.color);
            this.attenuationBegin[_loc2_] = _loc3_.§5214231747231760123423632234§;
            this.attenuationEnd[_loc2_] = _loc3_.§var var include§;
            this.time[_loc2_] = uint(_loc3_.§dynamic finally var§);
            _loc2_++;
         }
      }
      
      private static function c5d8782a(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc8_:Number = (param1 >> 16 & 0xFF) / 255;
         var _loc12_:Number = (param1 >> 8 & 0xFF) / 255;
         var _loc9_:Number = (param1 & 0xFF) / 255;
         var _loc4_:Number = (param2 >> 16 & 0xFF) / 255;
         var _loc10_:Number = (param2 >> 8 & 0xFF) / 255;
         var _loc5_:Number = (param2 & 0xFF) / 255;
         var _loc6_:int = d588259a(_loc8_,_loc4_,param3) * 255;
         var _loc11_:int = d588259a(_loc12_,_loc10_,param3) * 255;
         var _loc7_:int = d588259a(_loc9_,_loc5_,param3) * 255;
         return _loc6_ << 16 | _loc11_ << 8 | _loc7_;
      }
      
      private static function d588259a(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
      
      private function f6a199e0(param1:Number, param2:TubeLight) : void
      {
         var _loc8_:int = this.d3367dec(int(param1));
         var _loc12_:int = this.d3367dec(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.intensity[_loc8_];
         var _loc11_:Number = this.intensity[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.attenuationBegin[_loc8_];
         var _loc9_:Number = this.attenuationBegin[_loc12_];
         var _loc5_:Number = this.attenuationEnd[_loc8_];
         var _loc6_:Number = this.attenuationEnd[_loc12_];
         param2.intensity = d588259a(_loc13_,_loc11_,_loc3_);
         param2.color = c5d8782a(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = d588259a(_loc7_,_loc9_,_loc3_);
         param2.attenuationEnd = d588259a(_loc5_,_loc6_,_loc3_);
      }
      
      public function getFramesCount() : int
      {
         return this.§while set extends§;
      }
      
      private function d5ad3bc9(param1:Number, param2:SpotLight) : void
      {
         var _loc8_:int = this.d3367dec(int(param1));
         var _loc12_:int = this.d3367dec(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.intensity[_loc8_];
         var _loc11_:Number = this.intensity[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.attenuationBegin[_loc8_];
         var _loc9_:Number = this.attenuationBegin[_loc12_];
         var _loc5_:Number = this.attenuationEnd[_loc8_];
         var _loc6_:Number = this.attenuationEnd[_loc12_];
         param2.intensity = d588259a(_loc13_,_loc11_,_loc3_);
         param2.color = c5d8782a(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = d588259a(_loc7_,_loc9_,_loc3_);
         param2.attenuationEnd = d588259a(_loc5_,_loc6_,_loc3_);
      }
      
      public function updateByTime(param1:Light3D, param2:int, param3:int = -1) : void
      {
         var _loc4_:Number = 1;
         if(param3 > 0 && this.§while set extends§ > 0)
         {
            _loc4_ = this.time[this.§while set extends§ - 1] / param3;
         }
         var _loc5_:Number = this.a3793b5f(param2 * _loc4_);
         this.e11de242(param1,_loc5_);
      }
      
      private function a3793b5f(param1:Number) : Number
      {
         var _loc4_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = 0;
         if(param1 < this.time[this.§while set extends§ - 1])
         {
            while(_loc4_ < this.§while set extends§ - 1)
            {
               _loc2_ = this.time[_loc4_];
               _loc3_ = this.time[_loc4_ + 1];
               if(param1 >= _loc2_ && param1 < _loc3_)
               {
                  _loc5_ = (param1 - _loc2_) / (_loc3_ - _loc2_);
                  _loc6_ = _loc4_ + _loc5_;
                  break;
               }
               _loc4_++;
            }
         }
         else
         {
            _loc6_ = this.§while set extends§ - 1;
         }
         return _loc6_;
      }
      
      private function e11de242(param1:Light3D, param2:Number) : void
      {
         if(param1 is OmniLight)
         {
            this.d7535635(param2,OmniLight(param1));
         }
         else if(param1 is SpotLight)
         {
            this.d5ad3bc9(param2,SpotLight(param1));
         }
         else if(param1 is TubeLight)
         {
            this.f6a199e0(param2,TubeLight(param1));
         }
         param1.calculateBounds();
      }
      
      public function getLiveTime() : int
      {
         return this.time[this.§while set extends§ - 1];
      }
      
      private function d3367dec(param1:int) : int
      {
         return param1 < this.§while set extends§ ? param1 : this.§while set extends§ - 1;
      }
      
      private function d7535635(param1:Number, param2:OmniLight) : void
      {
         var _loc8_:int = this.d3367dec(int(param1));
         var _loc12_:int = this.d3367dec(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.intensity[_loc8_];
         var _loc11_:Number = this.intensity[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.attenuationBegin[_loc8_];
         var _loc9_:Number = this.attenuationBegin[_loc12_];
         var _loc5_:Number = this.attenuationEnd[_loc8_];
         var _loc6_:Number = this.attenuationEnd[_loc12_];
         param2.intensity = d588259a(_loc13_,_loc11_,_loc3_);
         param2.color = c5d8782a(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = d588259a(_loc7_,_loc9_,_loc3_);
         param2.attenuationEnd = d588259a(_loc5_,_loc6_,_loc3_);
      }
   }
}

