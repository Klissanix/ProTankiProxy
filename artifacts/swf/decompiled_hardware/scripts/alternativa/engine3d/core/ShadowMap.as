package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
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
   
   public class ShadowMap
   {
      
      private static const sizeLimit:int = 2048;
      
      private static const a65b0b57:Number = 2048;
      
      public static const numSamples:int = 6;
      
      private var a595de16:Array;
      
      private var ac2e18d:VertexBufferResource;
      
      private var d41647ed:IndexBufferResource;
      
      alternativa3d var transform:Vector.<Number>;
      
      alternativa3d var params:Vector.<Number>;
      
      private var f43d6a02:Vector.<Number>;
      
      private var fragment:Vector.<Number>;
      
      private var a4c7b4cb:Vector.<Number>;
      
      private var scissor:Rectangle;
      
      alternativa3d var map:RenderTargetTextureResource;
      
      alternativa3d var noise:BitmapTextureResource;
      
      private var d1672d1:int = 64;
      
      private var a1e42b8:Number = 1.0471975511965976;
      
      private var e6d6227b:Number = 1.3;
      
      private var f1644b6:Number = 0.3;
      
      public var mapSize:int;
      
      public var nearDistance:Number;
      
      public var farDistance:Number;
      
      public var bias:Number = 0;
      
      public var biasMultiplier:Number = 30;
      
      public var additionalSpace:Number = 0;
      
      public var alphaThreshold:Number = 0.1;
      
      private var d15d1e62:DirectionalLight;
      
      private var boundVertexList:Vertex;
      
      private var light:DirectionalLight;
      
      private var b1ba0161:Number;
      
      private var a1b0c6e3:Number;
      
      private var f16bbd2d:Number;
      
      private var a1669d25:Number;
      
      private var a2e6959e:Number;
      
      alternativa3d var boundMinX:Number;
      
      alternativa3d var boundMinY:Number;
      
      alternativa3d var boundMinZ:Number;
      
      alternativa3d var boundMaxX:Number;
      
      alternativa3d var boundMaxY:Number;
      
      alternativa3d var boundMaxZ:Number;
      
      public function ShadowMap(param1:int, param2:Number, param3:Number, param4:Number = 0, param5:Number = 0)
      {
         var _loc10_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         a595de16 = [];
         ac2e18d = new VertexBufferResource(new <Number>[0,2,4,6],1);
         d41647ed = new IndexBufferResource(new <uint>[0,1,3,1,2,3]);
         alternativa3d::transform = new <Number>[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
         alternativa3d::params = new <Number>[-255 * 2048,-2048,2048,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1];
         f43d6a02 = new <Number>[0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0.00392156862745098,1];
         fragment = new <Number>[0.00392156862745098,0,1,1];
         a4c7b4cb = new <Number>[0,0,0,1];
         scissor = new Rectangle();
         d15d1e62 = new DirectionalLight(8355711);
         boundVertexList = Vertex.createList(8);
         super();
         if(param1 > 2048)
         {
            throw new Error("Value of mapSize too big.");
         }
         var _loc14_:Number = Math.log(param1) / 0.6931471805599453;
         if(_loc14_ != int(_loc14_))
         {
            throw new Error("Value of mapSize must be power of 2.");
         }
         this.mapSize = param1;
         this.nearDistance = param2;
         this.farDistance = param3;
         this.bias = param4;
         this.additionalSpace = param5;
         this.d15d1e62.rotationX = 3.141592653589793;
         this.map = new RenderTargetTextureResource(param1,param1);
         var _loc6_:Vector.<uint> = new Vector.<uint>(this.d1672d1 * this.d1672d1);
         while(_loc9_ < this.d1672d1)
         {
            _loc10_ = 0;
            while(_loc10_ < this.d1672d1)
            {
               _loc12_ = Math.random() * this.a1e42b8;
               _loc13_ = Math.sin(_loc12_) * 255;
               _loc7_ = Math.cos(_loc12_) * 255;
               _loc11_ = (this.f1644b6 + Math.random() * (1 - this.f1644b6)) * 255;
               _loc6_[_loc8_] = _loc13_ << 16 | _loc7_ << 8 | _loc11_;
               _loc8_++;
               _loc10_++;
            }
            _loc9_++;
         }
         this.noise = new BitmapTextureResource(new BitmapData(this.d1672d1,this.d1672d1,false,0),false);
         this.noise.bitmapData.setVector(this.noise.bitmapData.rect,_loc6_);
      }
      
      alternativa3d function calculateBounds(param1:Camera3D) : void
      {
         if(param1.directionalLight != null)
         {
            this.light = param1.directionalLight;
         }
         else
         {
            this.light = this.d15d1e62;
         }
         this.light.composeMatrix();
         this.b1ba0161 = this.light.mk;
         this.light.calculateInverseMatrix();
         var _loc7_:Number = this.light.ima;
         var _loc8_:Number = this.light.imb;
         var _loc9_:Number = this.light.imc;
         var _loc10_:Number = this.light.imd;
         var _loc11_:Number = this.light.ime;
         var _loc12_:Number = this.light.imf;
         var _loc13_:Number = this.light.img;
         var _loc14_:Number = this.light.imh;
         var _loc15_:Number = this.light.imi;
         var _loc16_:Number = this.light.imj;
         var _loc17_:Number = this.light.imk;
         var _loc19_:Number = this.light.iml;
         this.light.ima = _loc7_ * param1.gma + _loc8_ * param1.gme + _loc9_ * param1.gmi;
         this.light.imb = _loc7_ * param1.gmb + _loc8_ * param1.gmf + _loc9_ * param1.gmj;
         this.light.imc = _loc7_ * param1.gmc + _loc8_ * param1.gmg + _loc9_ * param1.gmk;
         this.light.imd = _loc7_ * param1.gmd + _loc8_ * param1.gmh + _loc9_ * param1.gml + _loc10_;
         this.light.ime = _loc11_ * param1.gma + _loc12_ * param1.gme + _loc13_ * param1.gmi;
         this.light.imf = _loc11_ * param1.gmb + _loc12_ * param1.gmf + _loc13_ * param1.gmj;
         this.light.img = _loc11_ * param1.gmc + _loc12_ * param1.gmg + _loc13_ * param1.gmk;
         this.light.imh = _loc11_ * param1.gmd + _loc12_ * param1.gmh + _loc13_ * param1.gml + _loc14_;
         this.light.imi = _loc15_ * param1.gma + _loc16_ * param1.gme + _loc17_ * param1.gmi;
         this.light.imj = _loc15_ * param1.gmb + _loc16_ * param1.gmf + _loc17_ * param1.gmj;
         this.light.imk = _loc15_ * param1.gmc + _loc16_ * param1.gmg + _loc17_ * param1.gmk;
         this.light.iml = _loc15_ * param1.gmd + _loc16_ * param1.gmh + _loc17_ * param1.gml + _loc19_;
         var _loc3_:Vertex = this.boundVertexList;
         _loc3_.x = -param1.nearClipping;
         _loc3_.y = -param1.nearClipping;
         _loc3_.z = param1.nearClipping;
         _loc3_ = _loc3_.next;
         _loc3_.x = -param1.nearClipping;
         _loc3_.y = param1.nearClipping;
         _loc3_.z = param1.nearClipping;
         _loc3_ = _loc3_.next;
         _loc3_.x = param1.nearClipping;
         _loc3_.y = param1.nearClipping;
         _loc3_.z = param1.nearClipping;
         _loc3_ = _loc3_.next;
         _loc3_.x = param1.nearClipping;
         _loc3_.y = -param1.nearClipping;
         _loc3_.z = param1.nearClipping;
         _loc3_ = _loc3_.next;
         _loc3_.x = -this.farDistance;
         _loc3_.y = -this.farDistance;
         _loc3_.z = this.farDistance;
         _loc3_ = _loc3_.next;
         _loc3_.x = -this.farDistance;
         _loc3_.y = this.farDistance;
         _loc3_.z = this.farDistance;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.farDistance;
         _loc3_.y = this.farDistance;
         _loc3_.z = this.farDistance;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.farDistance;
         _loc3_.y = -this.farDistance;
         _loc3_.z = this.farDistance;
         this.light.boundMinX = 1e+22;
         this.light.boundMinY = 1e+22;
         this.light.boundMinZ = 1e+22;
         this.light.boundMaxX = -1e+22;
         this.light.boundMaxY = -1e+22;
         this.light.boundMaxZ = -1e+22;
         _loc3_ = this.boundVertexList;
         while(_loc3_ != null)
         {
            _loc3_.cameraX = this.light.ima * _loc3_.x + this.light.imb * _loc3_.y + this.light.imc * _loc3_.z + this.light.imd;
            _loc3_.cameraY = this.light.ime * _loc3_.x + this.light.imf * _loc3_.y + this.light.img * _loc3_.z + this.light.imh;
            _loc3_.cameraZ = this.light.imi * _loc3_.x + this.light.imj * _loc3_.y + this.light.imk * _loc3_.z + this.light.iml;
            if(_loc3_.cameraX < this.light.boundMinX)
            {
               this.light.boundMinX = _loc3_.cameraX;
            }
            if(_loc3_.cameraX > this.light.boundMaxX)
            {
               this.light.boundMaxX = _loc3_.cameraX;
            }
            if(_loc3_.cameraY < this.light.boundMinY)
            {
               this.light.boundMinY = _loc3_.cameraY;
            }
            if(_loc3_.cameraY > this.light.boundMaxY)
            {
               this.light.boundMaxY = _loc3_.cameraY;
            }
            if(_loc3_.cameraZ < this.light.boundMinZ)
            {
               this.light.boundMinZ = _loc3_.cameraZ;
            }
            if(_loc3_.cameraZ > this.light.boundMaxZ)
            {
               this.light.boundMaxZ = _loc3_.cameraZ;
            }
            _loc3_ = _loc3_.next;
         }
         var _loc20_:Vertex = this.boundVertexList;
         var _loc21_:Vertex = this.boundVertexList.next.next.next.next.next.next;
         var _loc22_:Vertex = this.boundVertexList.next.next.next.next;
         var _loc18_:Number = _loc21_.cameraX - _loc20_.cameraX;
         var _loc25_:Number = _loc21_.cameraY - _loc20_.cameraY;
         var _loc23_:Number = _loc21_.cameraZ - _loc20_.cameraZ;
         var _loc2_:Number = _loc22_.cameraX - _loc21_.cameraX;
         var _loc26_:Number = _loc22_.cameraY - _loc21_.cameraY;
         var _loc24_:Number = _loc22_.cameraZ - _loc21_.cameraZ;
         var _loc5_:Number = _loc18_ * _loc18_ + _loc25_ * _loc25_ + _loc23_ * _loc23_;
         var _loc6_:Number = _loc2_ * _loc2_ + _loc26_ * _loc26_ + _loc24_ * _loc24_;
         var _loc4_:int = Math.ceil(this.e6d6227b);
         this.a1669d25 = _loc5_ > _loc6_ ? Math.sqrt(_loc5_) : Math.sqrt(_loc6_);
         this.a2e6959e = this.a1669d25 / (this.mapSize - 1 - this.e6d6227b);
         this.a1669d25 += _loc4_ * this.a2e6959e * 2;
         this.light.boundMinX -= _loc4_ * this.a2e6959e;
         this.light.boundMaxX += _loc4_ * this.a2e6959e;
         this.light.boundMinY -= _loc4_ * this.a2e6959e;
         this.light.boundMaxY += _loc4_ * this.a2e6959e;
         this.light.boundMinZ -= this.additionalSpace;
         _loc3_ = this.boundVertexList;
         _loc3_.x = this.light.boundMinX;
         _loc3_.y = this.light.boundMinY;
         _loc3_.z = this.light.boundMinZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMaxX;
         _loc3_.y = this.light.boundMinY;
         _loc3_.z = this.light.boundMinZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMinX;
         _loc3_.y = this.light.boundMaxY;
         _loc3_.z = this.light.boundMinZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMaxX;
         _loc3_.y = this.light.boundMaxY;
         _loc3_.z = this.light.boundMinZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMinX;
         _loc3_.y = this.light.boundMinY;
         _loc3_.z = this.light.boundMaxZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMaxX;
         _loc3_.y = this.light.boundMinY;
         _loc3_.z = this.light.boundMaxZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMinX;
         _loc3_.y = this.light.boundMaxY;
         _loc3_.z = this.light.boundMaxZ;
         _loc3_ = _loc3_.next;
         _loc3_.x = this.light.boundMaxX;
         _loc3_.y = this.light.boundMaxY;
         _loc3_.z = this.light.boundMaxZ;
         this.boundMinX = 1e+22;
         this.boundMinY = 1e+22;
         this.boundMinZ = 1e+22;
         this.boundMaxX = -1e+22;
         this.boundMaxY = -1e+22;
         this.boundMaxZ = -1e+22;
         _loc3_ = this.boundVertexList;
         while(_loc3_ != null)
         {
            _loc3_.cameraX = this.light.ma * _loc3_.x + this.light.mb * _loc3_.y + this.light.mc * _loc3_.z + this.light.md;
            _loc3_.cameraY = this.light.me * _loc3_.x + this.light.mf * _loc3_.y + this.light.mg * _loc3_.z + this.light.mh;
            _loc3_.cameraZ = this.light.mi * _loc3_.x + this.light.mj * _loc3_.y + this.light.mk * _loc3_.z + this.light.ml;
            if(_loc3_.cameraX < this.boundMinX)
            {
               this.boundMinX = _loc3_.cameraX;
            }
            if(_loc3_.cameraX > this.boundMaxX)
            {
               this.boundMaxX = _loc3_.cameraX;
            }
            if(_loc3_.cameraY < this.boundMinY)
            {
               this.boundMinY = _loc3_.cameraY;
            }
            if(_loc3_.cameraY > this.boundMaxY)
            {
               this.boundMaxY = _loc3_.cameraY;
            }
            if(_loc3_.cameraZ < this.boundMinZ)
            {
               this.boundMinZ = _loc3_.cameraZ;
            }
            if(_loc3_.cameraZ > this.boundMaxZ)
            {
               this.boundMaxZ = _loc3_.cameraZ;
            }
            _loc3_ = _loc3_.next;
         }
      }
      
      alternativa3d function render(param1:Camera3D, param2:Vector.<Object3D>, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc26_:TextureMaterial = null;
         var _loc14_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc24_:int = 0;
         var _loc32_:Object3D = null;
         var _loc15_:VertexBufferResource = null;
         var _loc23_:IndexBufferResource = null;
         var _loc17_:Boolean = false;
         var _loc18_:Sprite3D = null;
         var _loc20_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc19_:Mesh = null;
         var _loc6_:BSP = null;
         var _loc31_:Device = param1.device;
         this.a1b0c6e3 = Math.floor(this.light.boundMinX / this.a2e6959e) * this.a2e6959e;
         this.f16bbd2d = Math.floor(this.light.boundMinY / this.a2e6959e) * this.a2e6959e;
         this.scissor.width = Math.ceil(this.light.boundMaxX / this.a2e6959e) - this.a1b0c6e3 / this.a2e6959e;
         this.scissor.height = Math.ceil(this.light.boundMaxY / this.a2e6959e) - this.f16bbd2d / this.a2e6959e;
         var _loc4_:Number = 2 / this.a1669d25;
         var _loc10_:Number = -2 / this.a1669d25;
         var _loc11_:Number = 255 / (this.light.boundMaxZ - this.light.boundMinZ);
         var _loc21_:Number = -(this.a1b0c6e3 + this.a1669d25 * 0.5) * _loc4_;
         var _loc13_:Number = -(this.f16bbd2d + this.a1669d25 * 0.5) * _loc10_;
         var _loc16_:Number = -this.light.boundMinZ * _loc11_;
         if(this.mapSize != this.map.width)
         {
            this.map.dispose();
            this.map = new RenderTargetTextureResource(this.mapSize,this.mapSize);
         }
         _loc31_.setRenderToTexture(this.map,true);
         _loc31_.clear(1,0,0);
         _loc31_.setScissorRectangle(this.scissor);
         this.transform[14] = 0.00392156862745098;
         while(_loc24_ < param3)
         {
            _loc32_ = param2[_loc24_];
            _loc15_ = null;
            _loc23_ = null;
            _loc17_ = false;
            if(_loc32_ is Sprite3D)
            {
               _loc18_ = Sprite3D(_loc32_);
               _loc26_ = TextureMaterial(_loc18_.material);
               _loc14_ = _loc18_.width;
               _loc7_ = _loc18_.height;
               if(_loc18_.autoSize)
               {
                  _loc14_ = _loc26_.texture.width * (_loc18_.bottomRightU - _loc18_.topLeftU);
                  _loc7_ = _loc26_.texture.height * (_loc18_.bottomRightV - _loc18_.topLeftV);
               }
               _loc20_ = Math.tan(Math.asin(-this.b1ba0161));
               _loc14_ *= _loc18_.scaleX;
               _loc7_ *= _loc18_.scaleY;
               _loc28_ = this.light.ima * _loc32_.md + this.light.imb * _loc32_.mh + this.light.imc * _loc32_.ml + this.light.imd;
               _loc29_ = this.light.ime * _loc32_.md + this.light.imf * _loc32_.mh + this.light.img * _loc32_.ml + this.light.imh;
               _loc30_ = this.light.imi * _loc32_.md + this.light.imj * _loc32_.mh + this.light.imk * _loc32_.ml + this.light.iml;
               _loc29_ += Math.sin(-this.b1ba0161) * _loc7_ / 4;
               _loc30_ -= Math.cos(-this.b1ba0161) * _loc7_ / 4;
               _loc9_ = -_loc14_ * _loc18_.originX;
               _loc12_ = -_loc7_ * _loc18_.originY;
               _loc22_ = -_loc12_ / _loc20_;
               _loc25_ = _loc9_ + _loc14_;
               _loc8_ = _loc12_ + _loc7_;
               _loc27_ = -_loc8_ / _loc20_;
               _loc9_ = (_loc9_ + _loc28_) * _loc4_ + _loc21_;
               _loc12_ = (_loc12_ + _loc29_) * _loc10_ + _loc13_;
               _loc22_ = (_loc22_ + _loc30_) * _loc11_ + _loc16_;
               _loc25_ = (_loc25_ + _loc28_) * _loc4_ + _loc21_;
               _loc8_ = (_loc8_ + _loc29_) * _loc10_ + _loc13_;
               _loc27_ = (_loc27_ + _loc30_) * _loc11_ + _loc16_;
               _loc22_ -= this.bias * this.biasMultiplier * _loc11_ / _loc20_;
               _loc27_ -= this.bias * this.biasMultiplier * _loc11_ / _loc20_;
               this.f43d6a02[0] = _loc9_;
               this.f43d6a02[1] = _loc12_;
               this.f43d6a02[2] = _loc22_;
               this.f43d6a02[4] = 0;
               this.f43d6a02[5] = 0;
               this.f43d6a02[8] = _loc9_;
               this.f43d6a02[9] = _loc8_;
               this.f43d6a02[10] = _loc27_;
               this.f43d6a02[12] = 0;
               this.f43d6a02[13] = 1;
               this.f43d6a02[16] = _loc25_;
               this.f43d6a02[17] = _loc8_;
               this.f43d6a02[18] = _loc27_;
               this.f43d6a02[20] = 1;
               this.f43d6a02[21] = 1;
               this.f43d6a02[24] = _loc25_;
               this.f43d6a02[25] = _loc12_;
               this.f43d6a02[26] = _loc22_;
               this.f43d6a02[28] = 1;
               this.f43d6a02[29] = 0;
               _loc15_ = this.ac2e18d;
               _loc23_ = this.d41647ed;
               _loc5_ = 2;
               _loc17_ = true;
               _loc31_.setProgram(this.getProgram(true,true));
               _loc31_.setVertexBufferAt(0,_loc15_,0,"float1");
               _loc31_.setProgramConstantsFromVector("vertex",0,this.f43d6a02,9,false);
            }
            else
            {
               this.transform[0] = (this.light.ima * _loc32_.ma + this.light.imb * _loc32_.me + this.light.imc * _loc32_.mi) * _loc4_;
               this.transform[1] = (this.light.ima * _loc32_.mb + this.light.imb * _loc32_.mf + this.light.imc * _loc32_.mj) * _loc4_;
               this.transform[2] = (this.light.ima * _loc32_.mc + this.light.imb * _loc32_.mg + this.light.imc * _loc32_.mk) * _loc4_;
               this.transform[3] = (this.light.ima * _loc32_.md + this.light.imb * _loc32_.mh + this.light.imc * _loc32_.ml + this.light.imd) * _loc4_ + _loc21_;
               this.transform[4] = (this.light.ime * _loc32_.ma + this.light.imf * _loc32_.me + this.light.img * _loc32_.mi) * _loc10_;
               this.transform[5] = (this.light.ime * _loc32_.mb + this.light.imf * _loc32_.mf + this.light.img * _loc32_.mj) * _loc10_;
               this.transform[6] = (this.light.ime * _loc32_.mc + this.light.imf * _loc32_.mg + this.light.img * _loc32_.mk) * _loc10_;
               this.transform[7] = (this.light.ime * _loc32_.md + this.light.imf * _loc32_.mh + this.light.img * _loc32_.ml + this.light.imh) * _loc10_ + _loc13_;
               this.transform[8] = (this.light.imi * _loc32_.ma + this.light.imj * _loc32_.me + this.light.imk * _loc32_.mi) * _loc11_;
               this.transform[9] = (this.light.imi * _loc32_.mb + this.light.imj * _loc32_.mf + this.light.imk * _loc32_.mj) * _loc11_;
               this.transform[10] = (this.light.imi * _loc32_.mc + this.light.imj * _loc32_.mg + this.light.imk * _loc32_.mk) * _loc11_;
               this.transform[11] = (this.light.imi * _loc32_.md + this.light.imj * _loc32_.mh + this.light.imk * _loc32_.ml + this.light.iml) * _loc11_ + _loc16_;
               if(_loc32_ is Mesh)
               {
                  _loc19_ = Mesh(_loc32_);
                  _loc19_.prepareResources();
                  _loc15_ = _loc19_.vertexBuffer;
                  _loc23_ = _loc19_.indexBuffer;
                  _loc5_ = _loc19_.numTriangles;
                  _loc26_ = _loc19_.faceList.material as TextureMaterial;
               }
               else if(_loc32_ is BSP)
               {
                  _loc6_ = BSP(_loc32_);
                  _loc6_.prepareResources();
                  _loc15_ = _loc6_.vertexBuffer;
                  _loc23_ = _loc6_.indexBuffer;
                  _loc5_ = _loc6_.numTriangles;
                  _loc26_ = _loc6_.faces[0].material as TextureMaterial;
               }
               else
               {
                  _loc26_ = null;
               }
               if(_loc26_ != null && _loc26_.transparent)
               {
                  _loc17_ = true;
                  _loc31_.setProgram(this.getProgram(true,false));
                  _loc31_.setVertexBufferAt(1,_loc15_,3,"float2");
               }
               else
               {
                  _loc31_.setProgram(this.getProgram(false,false));
               }
               _loc31_.setVertexBufferAt(0,_loc15_,0,"float3");
               _loc31_.setProgramConstantsFromVector("vertex",0,this.transform,4,false);
            }
            if(_loc15_ != null && _loc23_ != null)
            {
               _loc31_.setTextureAt(4,null);
               _loc31_.setTextureAt(6,null);
               if(_loc17_)
               {
                  _loc31_.setTextureAt(0,_loc26_.textureResource);
                  this.a4c7b4cb[0] = _loc26_.textureResource.correctionU;
                  this.a4c7b4cb[1] = _loc26_.textureResource.correctionV;
                  this.a4c7b4cb[3] = _loc32_ is Sprite3D ? 0.99 : this.alphaThreshold;
                  _loc31_.setProgramConstantsFromVector("vertex",10,this.a4c7b4cb,1);
               }
               _loc31_.setProgramConstantsFromVector("fragment",0,this.fragment,1);
               _loc31_.drawTriangles(_loc23_,0,_loc5_);
            }
            if(_loc17_)
            {
               _loc31_.setTextureAt(0,null);
               _loc31_.setVertexBufferAt(1,null);
            }
            _loc24_++;
         }
         _loc31_.setScissorRectangle(null);
         _loc4_ = 1 / this.a1669d25;
         _loc10_ = 1 / this.a1669d25;
         _loc21_ = -this.a1b0c6e3 * _loc4_;
         _loc13_ = -this.f16bbd2d * _loc10_;
         this.transform[0] = this.light.ima * _loc4_;
         this.transform[1] = this.light.imb * _loc4_;
         this.transform[2] = this.light.imc * _loc4_;
         this.transform[3] = this.light.imd * _loc4_ + _loc21_;
         this.transform[4] = this.light.ime * _loc10_;
         this.transform[5] = this.light.imf * _loc10_;
         this.transform[6] = this.light.img * _loc10_;
         this.transform[7] = this.light.imh * _loc10_ + _loc13_;
         this.transform[8] = this.light.imi * _loc11_;
         this.transform[9] = this.light.imj * _loc11_;
         this.transform[10] = this.light.imk * _loc11_;
         this.transform[11] = this.light.iml * _loc11_ + _loc16_ - this.bias * this.biasMultiplier * _loc11_;
         this.transform[12] = this.nearDistance;
         this.transform[13] = this.farDistance - this.nearDistance;
         this.transform[14] = -_loc11_;
         this.params[4] = 0;
         this.params[5] = 0;
         this.params[6] = this.e6d6227b / this.mapSize;
         this.params[7] = 1 / 6;
         this.params[8] = param1.view._width / this.d1672d1;
         this.params[9] = param1.view._height / this.d1672d1;
         this.params[11] = param1.directionalLight != null ? param1.directionalLightStrength * param1.shadowMapStrength : 0;
         this.params[12] = Math.cos(this.a1e42b8);
         this.params[13] = Math.sin(this.a1e42b8);
         this.params[16] = -Math.sin(this.a1e42b8);
         this.params[17] = Math.cos(this.a1e42b8);
      }
      
      public function dispose() : void
      {
         this.map.reset();
         this.noise.reset();
      }
      
      private function getProgram(param1:Boolean, param2:Boolean) : ProgramResource
      {
         var _loc6_:ByteArray = null;
         var _loc3_:ByteArray = null;
         var _loc5_:int = int(param1) | int(param2) << 1;
         var _loc4_:ProgramResource = this.a595de16[_loc5_];
         if(_loc4_ == null)
         {
            _loc6_ = new ShadowMapVertexShader(param1,param2).agalcode;
            _loc3_ = new ShadowMapFragmentShader(param1).agalcode;
            _loc4_ = new ProgramResource(_loc6_,_loc3_);
            this.a595de16[_loc5_] = _loc4_;
         }
         return _loc4_;
      }
   }
}

