package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.RenderTargetTextureResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class ShadowAtlas
   {
      
      alternativa3d static const sizeLimit:int = 1024;
      
      private static var e273e765:Array = [];
      
      private static var c4ee7e52:VertexBufferResource = new VertexBufferResource(new <Number>[-1,1,0,0,0,-1,-1,0,0,1,1,-1,0,1,1,1,1,0,1,0],5);
      
      private static var c45ff37:IndexBufferResource = new IndexBufferResource(new <uint>[0,1,3,2,3,1]);
      
      private static var d3b27019:Vector.<Number> = new <Number>[0,0,0,1,0,0,0,1];
      
      alternativa3d var shadows:Vector.<Shadow> = new Vector.<Shadow>();
      
      alternativa3d var shadowsCount:int = 0;
      
      private var mapSize:int;
      
      private var blur:int;
      
      private var c3fb018:Array = [];
      
      private var d5a8c76f:RenderTargetTextureResource;
      
      private var e12f70df:RenderTargetTextureResource;
      
      public function ShadowAtlas(param1:int, param2:int)
      {
         super();
         this.mapSize = param1;
         this.blur = param2;
      }
      
      alternativa3d function renderCasters(param1:Camera3D) : void
      {
         var _loc5_:int = 0;
         var _loc3_:Shadow = null;
         var _loc7_:Device = param1.device;
         var _loc4_:int = 1024 / this.mapSize;
         var _loc6_:int = Math.ceil(this.shadowsCount / _loc4_);
         var _loc9_:int = this.shadowsCount > _loc4_ ? _loc4_ : this.shadowsCount;
         _loc6_ = 1 << Math.ceil(Math.log(_loc6_) / 0.6931471805599453);
         _loc9_ = 1 << Math.ceil(Math.log(_loc9_) / 0.6931471805599453);
         if(_loc6_ > _loc4_)
         {
            _loc6_ = _loc4_;
            this.shadowsCount = _loc6_ * _loc9_;
         }
         var _loc2_:int = _loc6_ << 8 | _loc9_;
         this.d5a8c76f = this.c3fb018[_loc2_];
         var _loc8_:int = 0x010000 | _loc2_;
         this.e12f70df = this.c3fb018[_loc8_];
         if(this.d5a8c76f == null)
         {
            this.d5a8c76f = new RenderTargetTextureResource(_loc9_ * this.mapSize,_loc6_ * this.mapSize);
            this.e12f70df = new RenderTargetTextureResource(_loc9_ * this.mapSize,_loc6_ * this.mapSize);
            this.c3fb018[_loc2_] = this.d5a8c76f;
            this.c3fb018[_loc8_] = this.e12f70df;
         }
         _loc7_.setRenderToTexture(this.d5a8c76f,true);
         _loc7_.clear(0,0,0,0,0);
         while(_loc5_ < this.shadowsCount)
         {
            _loc3_ = this.shadows[_loc5_];
            _loc3_.texture = this.d5a8c76f;
            _loc3_.textureScaleU = 1 / _loc9_;
            _loc3_.textureScaleV = 1 / _loc6_;
            _loc3_.textureOffsetU = _loc5_ % _loc9_ / _loc9_;
            _loc3_.textureOffsetV = int(_loc5_ / _loc9_) / _loc6_;
            _loc3_.renderCasters(param1);
            _loc5_++;
         }
      }
      
      alternativa3d function renderBlur(param1:Camera3D) : void
      {
         var _loc2_:Device = param1.device;
         if(this.blur > 0)
         {
            _loc2_.setVertexBufferAt(0,c4ee7e52,0,"float3");
            _loc2_.setVertexBufferAt(1,c4ee7e52,3,"float2");
            d3b27019[0] = 1 / this.d5a8c76f.width;
            d3b27019[1] = 1 / this.d5a8c76f.height;
            d3b27019[3] = 1 + this.blur + this.blur;
            d3b27019[4] = this.blur / this.d5a8c76f.width;
            d3b27019[5] = this.blur / this.d5a8c76f.height;
            _loc2_.setProgramConstantsFromVector("fragment",0,d3b27019,2);
            _loc2_.setRenderToTexture(this.e12f70df,false);
            _loc2_.clear(0,0,0,0);
            _loc2_.setProgram(this.d4a70171(1,this.blur));
            _loc2_.setTextureAt(0,this.d5a8c76f);
            _loc2_.drawTriangles(c45ff37,0,2);
            _loc2_.setRenderToTexture(this.d5a8c76f,false);
            _loc2_.clear(0,0,0,0);
            _loc2_.setProgram(this.d4a70171(2,this.blur));
            _loc2_.setTextureAt(0,this.e12f70df);
            _loc2_.drawTriangles(c45ff37,0,2);
         }
      }
      
      alternativa3d function clear() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Shadow = null;
         while(_loc2_ < this.shadowsCount)
         {
            _loc1_ = this.shadows[_loc2_];
            _loc1_.texture = null;
            _loc2_++;
         }
         this.shadows.length = 0;
         this.shadowsCount = 0;
      }
      
      private function d4a70171(param1:int, param2:int) : ProgramResource
      {
         var _loc6_:ByteArray = null;
         var _loc3_:ByteArray = null;
         var _loc5_:int = (param1 << 16) + param2;
         var _loc4_:ProgramResource = e273e765[_loc5_];
         if(_loc4_ == null)
         {
            _loc6_ = new ShadowAtlasVertexShader().agalcode;
            _loc3_ = new ShadowAtlasFragmentShader(param2,param1 == 1).agalcode;
            _loc4_ = new ProgramResource(_loc6_,_loc3_);
            e273e765[_loc5_] = _loc4_;
         }
         return _loc4_;
      }
   }
}

