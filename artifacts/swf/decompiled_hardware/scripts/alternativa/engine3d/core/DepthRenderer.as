package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import alternativa.engine3d.lights.TubeLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.gfx.core.BitmapTextureResource;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.RenderTargetTextureResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class DepthRenderer
   {
      
      private static const b21e6434:int = 62;
      
      private static const f44a9b70:int = 24;
      
      private var e53d1bd3:Array;
      
      private var correction:Vector.<Number>;
      
      private var b596f8:Vector.<Number>;
      
      private var a4c7b4cb:Vector.<Number>;
      
      private var f571b65a:ProgramResource;
      
      private var d2c15380:VertexBufferResource;
      
      private var f26580ff:IndexBufferResource;
      
      private var d2f31a7c:Vector.<Number>;
      
      private var e3457057:Vector.<Number>;
      
      private var e412aad1:ProgramResource;
      
      private var b2e10621:Vector.<Number>;
      
      private var b462fbfe:ProgramResource;
      
      private var ae1ce30:ProgramResource;
      
      private var ed7a91:ProgramResource;
      
      private var lightConst:Vector.<Number>;
      
      private var c1e6713a:VertexBufferResource;
      
      private var d586fee:IndexBufferResource;
      
      alternativa3d var depthBuffer:RenderTargetTextureResource;
      
      alternativa3d var lightBuffer:RenderTargetTextureResource;
      
      private var e205cbd6:RenderTargetTextureResource;
      
      private var scissor:Rectangle;
      
      private var table:BitmapTextureResource;
      
      private var noise:BitmapTextureResource;
      
      private var bias:Number = 0.1;
      
      private var d4d5f9c0:int = 128;
      
      private var d1672d1:int = 4;
      
      private var d4aef429:int = 16;
      
      private var intensity:Number = 2.5;
      
      private var f1644b6:Number = 0.2;
      
      private var cb3d421:int = 6;
      
      private var a1e42b8:Number;
      
      alternativa3d var correctionX:Number;
      
      alternativa3d var correctionY:Number;
      
      public function DepthRenderer()
      {
         var _loc25_:int = 0;
         var _loc23_:int = 0;
         var _loc1_:int = 0;
         var _loc24_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc4_:int = 0;
         var _loc19_:int = 0;
         var _loc27_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         e53d1bd3 = [];
         correction = new <Number>[0,0,0,1,0,0,0,1,0,0,0,0.5];
         b596f8 = new <Number>[0.00392156862745098,0,0,1,0.5,0.5,0,1];
         a4c7b4cb = new <Number>[0,0,0,1];
         d2c15380 = new VertexBufferResource(new <Number>[-1,1,0,0,0,-1,-1,0,0,1,1,-1,0,1,1,1,1,0,1,0],5);
         f26580ff = new IndexBufferResource(new <uint>[0,1,3,2,3,1]);
         d2f31a7c = new <Number>[0,0,0,1,0,0,0,1,1,1,0,1];
         e3457057 = new <Number>[0,0,0,3.141592653589793 * 2,0,0,0,1,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,1,0,0,3.141592653589793 * 2,3.141592653589793 * 2];
         b2e10621 = new <Number>[0,0,0,1,0,0,0,1];
         lightConst = new Vector.<Number>();
         scissor = new Rectangle();
         a1e42b8 = 3.141592653589793 * 2 / cb3d421;
         super();
         var _loc6_:Vector.<Number> = new Vector.<Number>(62 * 40);
         var _loc5_:Vector.<uint> = new Vector.<uint>(62 * 36);
         var _loc18_:int = 0;
         while(_loc18_ < 62)
         {
            _loc1_ = 4 + _loc18_ * 2;
            _loc24_ = 4 + _loc18_ * 5;
            _loc10_ = _loc18_ * 8;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc11_ = _loc10_ + 1;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc12_ = _loc11_ + 1;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc13_ = _loc12_ + 1;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc14_ = _loc13_ + 1;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc15_ = _loc14_ + 1;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc16_ = _loc15_ + 1;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc17_ = _loc16_ + 1;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = -1;
            _loc25_++;
            _loc6_[_loc25_] = 1;
            _loc25_++;
            _loc6_[_loc25_] = _loc1_;
            _loc25_++;
            _loc6_[_loc25_] = _loc24_;
            _loc25_++;
            _loc5_[_loc23_] = _loc10_;
            _loc23_++;
            _loc5_[_loc23_] = _loc14_;
            _loc23_++;
            _loc5_[_loc23_] = _loc11_;
            _loc23_++;
            _loc5_[_loc23_] = _loc11_;
            _loc23_++;
            _loc5_[_loc23_] = _loc14_;
            _loc23_++;
            _loc5_[_loc23_] = _loc15_;
            _loc23_++;
            _loc5_[_loc23_] = _loc11_;
            _loc23_++;
            _loc5_[_loc23_] = _loc15_;
            _loc23_++;
            _loc5_[_loc23_] = _loc16_;
            _loc23_++;
            _loc5_[_loc23_] = _loc11_;
            _loc23_++;
            _loc5_[_loc23_] = _loc16_;
            _loc23_++;
            _loc5_[_loc23_] = _loc12_;
            _loc23_++;
            _loc5_[_loc23_] = _loc14_;
            _loc23_++;
            _loc5_[_loc23_] = _loc16_;
            _loc23_++;
            _loc5_[_loc23_] = _loc15_;
            _loc23_++;
            _loc5_[_loc23_] = _loc14_;
            _loc23_++;
            _loc5_[_loc23_] = _loc17_;
            _loc23_++;
            _loc5_[_loc23_] = _loc16_;
            _loc23_++;
            _loc5_[_loc23_] = _loc12_;
            _loc23_++;
            _loc5_[_loc23_] = _loc16_;
            _loc23_++;
            _loc5_[_loc23_] = _loc17_;
            _loc23_++;
            _loc5_[_loc23_] = _loc12_;
            _loc23_++;
            _loc5_[_loc23_] = _loc17_;
            _loc23_++;
            _loc5_[_loc23_] = _loc13_;
            _loc23_++;
            _loc5_[_loc23_] = _loc10_;
            _loc23_++;
            _loc5_[_loc23_] = _loc13_;
            _loc23_++;
            _loc5_[_loc23_] = _loc17_;
            _loc23_++;
            _loc5_[_loc23_] = _loc10_;
            _loc23_++;
            _loc5_[_loc23_] = _loc17_;
            _loc23_++;
            _loc5_[_loc23_] = _loc14_;
            _loc23_++;
            _loc5_[_loc23_] = _loc10_;
            _loc23_++;
            _loc5_[_loc23_] = _loc11_;
            _loc23_++;
            _loc5_[_loc23_] = _loc12_;
            _loc23_++;
            _loc5_[_loc23_] = _loc10_;
            _loc23_++;
            _loc5_[_loc23_] = _loc12_;
            _loc23_++;
            _loc5_[_loc23_] = _loc13_;
            _loc23_++;
            _loc18_++;
         }
         this.c1e6713a = new VertexBufferResource(_loc6_,5);
         this.d586fee = new IndexBufferResource(_loc5_);
         var _loc2_:Vector.<uint> = new Vector.<uint>(this.d4d5f9c0 * this.d4d5f9c0);
         var _loc20_:Number = 6.283185307179586;
         var _loc22_:int = this.d4d5f9c0 - 1;
         _loc18_ = 0;
         while(_loc18_ < this.d4d5f9c0)
         {
            _loc27_ = (_loc18_ / _loc22_ - 0.5) * 2;
            _loc19_ = 0;
            while(_loc19_ < this.d4d5f9c0)
            {
               _loc26_ = (_loc19_ / _loc22_ - 0.5) * 2;
               _loc21_ = Math.atan2(_loc27_,_loc26_);
               if(_loc21_ < 0)
               {
                  _loc21_ += _loc20_;
               }
               _loc2_[_loc4_] = Math.round(255 * _loc21_ / _loc20_);
               _loc4_++;
               _loc19_++;
            }
            _loc18_++;
         }
         this.table = new BitmapTextureResource(new BitmapData(this.d4d5f9c0,this.d4d5f9c0,false,0),false);
         this.table.bitmapData.setVector(this.table.bitmapData.rect,_loc2_);
         _loc2_ = new Vector.<uint>(this.d1672d1 * this.d1672d1);
         _loc4_ = 0;
         _loc18_ = 0;
         while(_loc18_ < this.d1672d1)
         {
            _loc19_ = 0;
            while(_loc19_ < this.d1672d1)
            {
               _loc8_ = Math.random() * this.a1e42b8;
               _loc9_ = Math.sin(_loc8_) * 255;
               _loc3_ = Math.cos(_loc8_) * 255;
               _loc7_ = (this.f1644b6 + Math.random() * (1 - this.f1644b6)) * 255;
               _loc2_[_loc4_] = _loc9_ << 16 | _loc3_ << 8 | _loc7_;
               _loc4_++;
               _loc19_++;
            }
            _loc18_++;
         }
         this.noise = new BitmapTextureResource(new BitmapData(this.d1672d1,this.d1672d1,false,0),false);
         this.noise.bitmapData.setVector(this.noise.bitmapData.rect,_loc2_);
         this.depthBuffer = new RenderTargetTextureResource(1,1);
         this.e205cbd6 = new RenderTargetTextureResource(1,1);
         this.lightBuffer = new RenderTargetTextureResource(1,1);
      }
      
      alternativa3d function render(param1:Camera3D, param2:Number, param3:Number, param4:Number, param5:Boolean, param6:Boolean, param7:Number, param8:Vector.<Object3D>, param9:int) : void
      {
         var _loc13_:VertexBufferResource = null;
         var _loc18_:IndexBufferResource = null;
         var _loc11_:int = 0;
         var _loc25_:TextureMaterial = null;
         var _loc19_:int = 0;
         var _loc10_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc21_:int = 0;
         var _loc27_:Object3D = null;
         var _loc14_:Mesh = null;
         var _loc12_:BSP = null;
         var _loc22_:OmniLight = null;
         var _loc24_:SpotLight = null;
         var _loc16_:TubeLight = null;
         var _loc26_:Device = param1.device;
         if(param2 > 2048)
         {
            param2 = 2048;
         }
         if(param3 > 2048)
         {
            param3 = 2048;
         }
         if(param4 > 1)
         {
            param4 = 1;
         }
         param2 = Math.round(param2 * param4);
         param3 = Math.round(param3 * param4);
         if(param2 < 1)
         {
            param2 = 1;
         }
         if(param3 < 1)
         {
            param3 = 1;
         }
         this.scissor.width = param2;
         this.scissor.height = param3;
         var _loc15_:int = 1 << Math.ceil(Math.log(param2) / 0.6931471805599453);
         var _loc17_:int = 1 << Math.ceil(Math.log(param3) / 0.6931471805599453);
         if(_loc15_ != this.depthBuffer.width || _loc17_ != this.depthBuffer.height)
         {
            this.depthBuffer.dispose();
            this.depthBuffer = new RenderTargetTextureResource(_loc15_,_loc17_);
            this.e205cbd6.dispose();
            this.e205cbd6 = new RenderTargetTextureResource(_loc15_,_loc17_);
            this.lightBuffer.dispose();
            this.lightBuffer = new RenderTargetTextureResource(_loc15_,_loc17_);
         }
         if(!param5)
         {
            this.noise.reset();
            this.e205cbd6.reset();
            this.d2c15380.reset();
            this.f26580ff.reset();
         }
         if(!param6)
         {
            this.lightBuffer.reset();
            this.c1e6713a.reset();
            this.d586fee.reset();
         }
         if(!param5 && !param6)
         {
            this.table.reset();
         }
         this.correctionX = param2 / this.depthBuffer.width;
         this.correctionY = param3 / this.depthBuffer.height;
         _loc26_.setRenderToTexture(this.depthBuffer,true);
         _loc26_.clear(1,0,0.25,1);
         _loc26_.setScissorRectangle(this.scissor);
         this.correction[0] = this.correctionX;
         this.correction[1] = this.correctionY;
         this.correction[2] = 255 / param1.farClipping;
         this.correction[4] = 1 - this.correctionX;
         this.correction[5] = 1 - this.correctionY;
         this.correction[8] = param1.correctionX;
         this.correction[9] = param1.correctionY;
         _loc26_.setProgramConstantsFromVector("vertex",3,param1.projection,1,false);
         _loc26_.setProgramConstantsFromVector("vertex",4,this.correction,3,false);
         if(param5 || param6)
         {
            _loc26_.setTextureAt(0,this.table);
         }
         var _loc20_:int = 0;
         while(_loc20_ < param9)
         {
            _loc27_ = param8[_loc20_];
            if(_loc27_ is Mesh)
            {
               _loc14_ = Mesh(_loc27_);
               _loc13_ = _loc14_.vertexBuffer;
               _loc18_ = _loc14_.indexBuffer;
               _loc11_ = _loc14_.numTriangles;
               _loc25_ = _loc14_.faceList.material as TextureMaterial;
            }
            else if(_loc27_ is BSP)
            {
               _loc12_ = BSP(_loc27_);
               _loc13_ = _loc12_.vertexBuffer;
               _loc18_ = _loc12_.indexBuffer;
               _loc11_ = _loc12_.numTriangles;
               _loc25_ = _loc12_.faces[0].material as TextureMaterial;
            }
            if(_loc25_ != null && _loc25_.alphaTestThreshold > 0 && _loc25_.transparent)
            {
               _loc26_.setProgram(this.f44bc6af(param5 || param6,true,param1.view.quality,_loc25_.repeat,_loc25_._mipMapping > 0,false,false));
               _loc26_.setVertexBufferAt(2,_loc13_,3,"float2");
               _loc26_.setTextureAt(1,_loc25_.textureResource);
               this.a4c7b4cb[0] = _loc25_.textureResource.correctionU;
               this.a4c7b4cb[1] = _loc25_.textureResource.correctionV;
               this.a4c7b4cb[3] = _loc25_.alphaTestThreshold;
               _loc26_.setProgramConstantsFromVector("vertex",7,this.a4c7b4cb,1);
            }
            else
            {
               _loc26_.setProgram(this.f44bc6af(param5 || param6,false));
            }
            _loc26_.setVertexBufferAt(0,_loc13_,0,"float3");
            _loc26_.setProgramConstantsFromVector("vertex",0,_loc27_.transformConst,3,false);
            _loc26_.setProgramConstantsFromVector("fragment",0,this.b596f8,2);
            if(param5 || param6)
            {
               _loc26_.setVertexBufferAt(1,_loc13_,5,"float3");
            }
            _loc26_.drawTriangles(_loc18_,0,_loc11_);
            _loc26_.setTextureAt(1,null);
            _loc26_.setVertexBufferAt(2,null);
            _loc20_++;
         }
         if(param6)
         {
            _loc26_.setRenderToTexture(this.lightBuffer,false);
            _loc26_.clear(param7,param7,param7,0);
            _loc26_.setBlendFactors("one","one");
            _loc26_.setTextureAt(0,this.depthBuffer);
            _loc26_.setVertexBufferAt(0,this.c1e6713a,0,"float3");
            _loc26_.setVertexBufferAt(1,this.c1e6713a,3,"float2");
            _loc26_.setProgramConstantsFromVector("vertex",0,param1.projection,1,false);
            _loc26_.setProgramConstantsFromVector("vertex",1,this.correction,3,false);
            this.e3457057[0] = param1.farClipping;
            this.e3457057[1] = param1.farClipping / 255;
            this.e3457057[4] = 2 / this.correctionX;
            this.e3457057[5] = 2 / this.correctionY;
            this.e3457057[6] = 0;
            this.e3457057[8] = 1;
            this.e3457057[9] = 1;
            this.e3457057[10] = 0.5;
            this.e3457057[12] = param1.correctionX;
            this.e3457057[13] = param1.correctionY;
            this.e3457057[16] = 0.5;
            this.e3457057[17] = 0.5;
            _loc26_.setProgramConstantsFromVector("fragment",0,this.e3457057,7,false);
            _loc26_.setProgram(this.a1537048());
            _loc21_ = 0;
            _loc19_ = 0;
            _loc20_ = 0;
            while(_loc20_ < param1.omniesCount)
            {
               _loc22_ = param1.omnies[_loc20_];
               this.lightConst[_loc21_] = _loc22_.cmd * param1.correctionX;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.cmh * param1.correctionY;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.cml;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.attenuationEnd;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.intensity * param1.deferredLightingStrength * (_loc22_.color >> 16 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.intensity * param1.deferredLightingStrength * (_loc22_.color >> 8 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc22_.intensity * param1.deferredLightingStrength * (_loc22_.color & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = 1 / (_loc22_.attenuationEnd - _loc22_.attenuationBegin);
               _loc21_++;
               if(++_loc19_ == 62 || _loc20_ == param1.omniesCount - 1)
               {
                  _loc26_.setProgramConstantsFromVector("vertex",4,this.lightConst,_loc19_ * 2,false);
                  _loc26_.drawTriangles(this.d586fee,0,_loc19_ * 6 * 2);
                  _loc19_ = 0;
                  _loc21_ = 0;
               }
               _loc20_++;
            }
            _loc26_.setProgram(this.a1ebf75b());
            _loc21_ = 0;
            _loc19_ = 0;
            _loc20_ = 0;
            while(_loc20_ < param1.spotsCount)
            {
               _loc24_ = param1.spots[_loc20_];
               _loc10_ = Math.cos(_loc24_.hotspot * 0.5);
               _loc23_ = Math.cos(_loc24_.falloff * 0.5);
               this.lightConst[_loc21_] = _loc24_.cma;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmb;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmc;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmd;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cme;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmf;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmg;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmh;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmi;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmj;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cmk;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.cml;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.attenuationEnd;
               _loc21_++;
               this.lightConst[_loc21_] = 1 / (_loc24_.attenuationEnd - _loc24_.attenuationBegin);
               _loc21_++;
               this.lightConst[_loc21_] = _loc23_;
               _loc21_++;
               this.lightConst[_loc21_] = 1 / (_loc10_ - _loc23_);
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.intensity * param1.deferredLightingStrength * (_loc24_.color >> 16 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.intensity * param1.deferredLightingStrength * (_loc24_.color >> 8 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc24_.intensity * param1.deferredLightingStrength * (_loc24_.color & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = Math.sin(_loc24_.falloff * 0.5) * _loc24_.attenuationEnd;
               _loc21_++;
               if(++_loc19_ == 24 || _loc20_ == param1.spotsCount - 1)
               {
                  _loc26_.setProgramConstantsFromVector("vertex",4,this.lightConst,_loc19_ * 5,false);
                  _loc26_.drawTriangles(this.d586fee,0,_loc19_ * 6 * 2);
                  _loc19_ = 0;
                  _loc21_ = 0;
               }
               _loc20_++;
            }
            _loc26_.setProgram(this.a1076362());
            _loc21_ = 0;
            _loc19_ = 0;
            _loc20_ = 0;
            while(_loc20_ < param1.tubesCount)
            {
               _loc16_ = param1.tubes[_loc20_];
               this.lightConst[_loc21_] = _loc16_.cma;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmb;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmc;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmd;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cme;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmf;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmg;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmh;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmi;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmj;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cmk;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.cml;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.attenuationEnd;
               _loc21_++;
               this.lightConst[_loc21_] = 1 / (_loc16_.attenuationEnd - _loc16_.attenuationBegin);
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.length * 0.5 + _loc16_.falloff;
               _loc21_++;
               this.lightConst[_loc21_] = 1 / _loc16_.falloff;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.intensity * param1.deferredLightingStrength * (_loc16_.color >> 16 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.intensity * param1.deferredLightingStrength * (_loc16_.color >> 8 & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.intensity * param1.deferredLightingStrength * (_loc16_.color & 0xFF) / 255;
               _loc21_++;
               this.lightConst[_loc21_] = _loc16_.length * 0.5;
               _loc21_++;
               if(++_loc19_ == 24 || _loc20_ == param1.tubesCount - 1)
               {
                  _loc26_.setProgramConstantsFromVector("vertex",4,this.lightConst,_loc19_ * 5,false);
                  _loc26_.drawTriangles(this.d586fee,0,_loc19_ * 6 * 2);
                  _loc19_ = 0;
                  _loc21_ = 0;
               }
               _loc20_++;
            }
            _loc26_.setBlendFactors("one","zero");
         }
         if(param5)
         {
            _loc26_.setRenderToTexture(this.e205cbd6,false);
            _loc26_.clear(0,0,0,0);
            _loc26_.setProgram(this.f65972db());
            _loc26_.setTextureAt(0,this.depthBuffer);
            _loc26_.setTextureAt(1,this.noise);
            _loc26_.setVertexBufferAt(0,this.d2c15380,0,"float3");
            _loc26_.setVertexBufferAt(1,this.d2c15380,3,"float2");
            this.d2f31a7c[0] = _loc15_ / this.d1672d1;
            this.d2f31a7c[1] = _loc17_ / this.d1672d1;
            this.d2f31a7c[4] = 2 / this.correctionX;
            this.d2f31a7c[5] = 2 / this.correctionY;
            _loc26_.setProgramConstantsFromVector("vertex",0,this.d2f31a7c,3,false);
            this.e3457057[0] = param1.farClipping;
            this.e3457057[1] = param1.farClipping / 255;
            this.e3457057[4] = 2 / this.correctionX;
            this.e3457057[5] = 2 / this.correctionY;
            this.e3457057[6] = param1.ssaoRadius;
            this.e3457057[8] = 1;
            this.e3457057[9] = 1;
            this.e3457057[10] = this.bias;
            this.e3457057[11] = this.intensity * 1 / this.cb3d421;
            this.e3457057[12] = param1.correctionX;
            this.e3457057[13] = param1.correctionY;
            this.e3457057[15] = 1 / param1.ssaoRange;
            this.e3457057[16] = Math.cos(this.a1e42b8);
            this.e3457057[17] = Math.sin(this.a1e42b8);
            this.e3457057[20] = -Math.sin(this.a1e42b8);
            this.e3457057[21] = Math.cos(this.a1e42b8);
            this.e3457057[24] = this.correctionX - 1 / _loc15_;
            this.e3457057[25] = this.correctionY - 1 / _loc17_;
            _loc26_.setProgramConstantsFromVector("fragment",0,this.e3457057,7,false);
            _loc26_.drawTriangles(this.f26580ff,0,2);
            _loc26_.setTextureAt(1,null);
            _loc26_.setRenderToTexture(this.depthBuffer,false);
            _loc26_.clear(0,0,0,0);
            _loc26_.setProgram(this.d4a70171());
            _loc26_.setTextureAt(0,this.e205cbd6);
            this.b2e10621[0] = 1 / _loc15_;
            this.b2e10621[1] = 1 / _loc17_;
            this.b2e10621[3] = 1 / this.d4aef429;
            this.b2e10621[4] = this.correctionX - 1 / _loc15_;
            this.b2e10621[5] = this.correctionY - 1 / _loc17_;
            _loc26_.setProgramConstantsFromVector("fragment",0,this.b2e10621,2,false);
            _loc26_.drawTriangles(this.f26580ff,0,2);
         }
         _loc26_.setVertexBufferAt(1,null);
         _loc26_.setTextureAt(0,null);
         _loc26_.setScissorRectangle(null);
      }
      
      alternativa3d function resetResources() : void
      {
         this.noise.reset();
         this.table.reset();
         this.depthBuffer.reset();
         this.e205cbd6.reset();
         this.lightBuffer.reset();
         this.d2c15380.reset();
         this.f26580ff.reset();
         this.c1e6713a.reset();
         this.d586fee.reset();
      }
      
      private function f44bc6af(param1:Boolean, param2:Boolean, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false) : ProgramResource
      {
         var _loc11_:ByteArray = null;
         var _loc8_:ByteArray = null;
         var _loc10_:int = int(param1) | int(param2) << 1 | int(param3) << 2 | int(param4) << 3 | int(param5) << 4 | int(param6) << 5 | int(param7) << 6;
         var _loc9_:ProgramResource = this.e53d1bd3[_loc10_];
         if(_loc9_ == null)
         {
            _loc11_ = new DepthRendererDepthVertexShader(param1,param2).agalcode;
            _loc8_ = new DepthRendererDepthFragmentShader(param1,param2,param3,param4,param5).agalcode;
            _loc9_ = new ProgramResource(_loc11_,_loc8_);
            this.e53d1bd3[_loc10_] = _loc9_;
         }
         return _loc9_;
      }
      
      private function f65972db() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:ByteArray = null;
         var _loc2_:ProgramResource = this.f571b65a;
         if(_loc2_ == null)
         {
            _loc3_ = new DepthRendererSSAOVertexShader().agalcode;
            _loc1_ = new DepthRendererSSAOFragmentShader(this.cb3d421).agalcode;
            _loc2_ = new ProgramResource(_loc3_,_loc1_);
            this.f571b65a = _loc2_;
         }
         return _loc2_;
      }
      
      private function d4a70171() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:ByteArray = null;
         var _loc2_:ProgramResource = this.e412aad1;
         if(_loc2_ == null)
         {
            _loc3_ = new DepthRendererBlurVertexShader().agalcode;
            _loc1_ = new DepthRendererBlurFragmentShader().agalcode;
            _loc2_ = new ProgramResource(_loc3_,_loc1_);
            this.e412aad1 = _loc2_;
         }
         return _loc2_;
      }
      
      private function a1537048() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:ByteArray = null;
         var _loc2_:ProgramResource = this.b462fbfe;
         if(_loc2_ == null)
         {
            _loc3_ = new DepthRendererLightVertexShader(0).agalcode;
            _loc1_ = new DepthRendererLightFragmentShader(0).agalcode;
            _loc2_ = new ProgramResource(_loc3_,_loc1_);
            this.b462fbfe = _loc2_;
         }
         return _loc2_;
      }
      
      private function a1ebf75b() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:ByteArray = null;
         var _loc2_:ProgramResource = this.ae1ce30;
         if(_loc2_ == null)
         {
            _loc3_ = new DepthRendererLightVertexShader(1).agalcode;
            _loc1_ = new DepthRendererLightFragmentShader(1).agalcode;
            _loc2_ = new ProgramResource(_loc3_,_loc1_);
            this.ae1ce30 = _loc2_;
         }
         return _loc2_;
      }
      
      private function a1076362() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:ByteArray = null;
         var _loc2_:ProgramResource = this.ed7a91;
         if(_loc2_ == null)
         {
            _loc3_ = new DepthRendererLightVertexShader(2).agalcode;
            _loc1_ = new DepthRendererLightFragmentShader(2).agalcode;
            _loc2_ = new ProgramResource(_loc3_,_loc1_);
            this.ed7a91 = _loc2_;
         }
         return _loc2_;
      }
   }
}

