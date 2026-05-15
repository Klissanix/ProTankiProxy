package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.gfx.agal.FragmentShader;
   import alternativa.gfx.agal.Shader;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.TextureResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class Shadow
   {
      
      private static var b5dff886:ProgramResource;
      
      private static var c184f110:ProgramResource;
      
      private static var b1512218:Vector.<Number> = new <Number>[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0];
      
      private static var b74c0288:VertexBufferResource = new VertexBufferResource(new <Number>[0,0,0,0,1,0,1,1,0,1,0,0,0,0,1,0,1,1,1,1,1,1,0,1],3);
      
      private static var e61037e:IndexBufferResource = new IndexBufferResource(new <uint>[0,1,3,2,3,1,7,6,4,5,4,6,4,5,0,1,0,5,3,2,7,6,7,2,0,3,4,7,4,3,5,6,1,2,1,6]);
      
      private static var c518e234:Vector.<Number> = new Vector.<Number>(20);
      
      private static var c216ba3:Vector.<Number> = new <Number>[1,0,1,0.5];
      
      private static var c3abbecb:Array = [];
      
      public var mapSize:int;
      
      public var blur:int;
      
      public var attenuation:Number;
      
      public var nearDistance:Number;
      
      public var farDistance:Number;
      
      public var color:int;
      
      public var alpha:Number;
      
      public var direction:Vector3D = new Vector3D(0,0,-1);
      
      public var offset:Number = 0;
      
      public var backFadeRange:Number = 0;
      
      private var e44575b2:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var a73a677c:int = 0;
      
      alternativa3d var receiversBuffers:Vector.<int> = new Vector.<int>();
      
      alternativa3d var receiversFirstIndexes:Vector.<int> = new Vector.<int>();
      
      alternativa3d var receiversNumsTriangles:Vector.<int> = new Vector.<int>();
      
      alternativa3d var receiversCount:int = 0;
      
      private var b12e649b:Vector3D = new Vector3D();
      
      private var light:DirectionalLight = new DirectionalLight(0);
      
      private var boundVertexList:Vertex = Vertex.createList(8);
      
      private var a1b0c6e3:Number;
      
      private var f16bbd2d:Number;
      
      private var a1669d25:Number;
      
      private var minZ:Number;
      
      alternativa3d var boundMinX:Number;
      
      alternativa3d var boundMinY:Number;
      
      alternativa3d var boundMinZ:Number;
      
      alternativa3d var boundMaxX:Number;
      
      alternativa3d var boundMaxY:Number;
      
      alternativa3d var boundMaxZ:Number;
      
      alternativa3d var cameraInside:Boolean;
      
      private var transformConst:Vector.<Number> = new Vector.<Number>(12);
      
      private var d24d3d38:Vector.<Number> = new <Number>[0,0,0,1,0,0,0,1];
      
      private var colorConst:Vector.<Number> = new Vector.<Number>(12);
      
      private var d7ae716:Vector.<Number> = new <Number>[0,0,0,1];
      
      alternativa3d var texture:TextureResource;
      
      alternativa3d var textureScaleU:Number;
      
      alternativa3d var textureScaleV:Number;
      
      alternativa3d var textureOffsetU:Number;
      
      alternativa3d var textureOffsetV:Number;
      
      public function Shadow(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:int = 0, param7:Number = 1)
      {
         super();
         if(param1 > 1024)
         {
            throw new Error("Value of mapSize too big.");
         }
         var _loc8_:Number = Math.log(param1) / 0.6931471805599453;
         if(_loc8_ != int(_loc8_))
         {
            throw new Error("Value of mapSize must be power of 2.");
         }
         this.mapSize = param1;
         this.blur = param2;
         this.attenuation = param3;
         this.nearDistance = param4;
         this.farDistance = param5;
         this.color = param6;
         this.alpha = param7;
      }
      
      alternativa3d static function getCasterProgram() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:FragmentShader = null;
         var _loc2_:ProgramResource = b5dff886;
         if(_loc2_ == null)
         {
            _loc3_ = new ShadowCasterVertexShader().agalcode;
            _loc1_ = new FragmentShader();
            _loc1_.mov(FragmentShader.oc,Shader.v0);
            _loc2_ = new ProgramResource(_loc3_,_loc1_.agalcode);
            b5dff886 = _loc2_;
         }
         return _loc2_;
      }
      
      public function addCaster(param1:Mesh) : void
      {
         this.e44575b2[this.a73a677c] = param1;
         this.a73a677c++;
      }
      
      public function removeCaster(param1:Mesh) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.a73a677c)
         {
            if(this.e44575b2[_loc2_] == param1)
            {
               this.a73a677c--;
               while(_loc2_ < this.a73a677c)
               {
                  this.e44575b2[_loc2_] = this.e44575b2[int(_loc2_ + 1)];
                  _loc2_++;
               }
               this.e44575b2.length = this.a73a677c;
               break;
            }
            _loc2_++;
         }
      }
      
      public function removeAllCasters() : void
      {
         this.a73a677c = 0;
         this.e44575b2.length = 0;
      }
      
      alternativa3d function checkVisibility(param1:Camera3D) : Boolean
      {
         var _loc19_:Object3D = null;
         var _loc9_:Object3D = null;
         var _loc2_:Vertex = null;
         var _loc4_:Number = NaN;
         var _loc22_:int = 0;
         if(this.a73a677c == 0)
         {
            return false;
         }
         if(this.direction != null)
         {
            this.b12e649b.x = this.direction.x;
            this.b12e649b.y = this.direction.y;
            this.b12e649b.z = this.direction.z;
            this.b12e649b.normalize();
         }
         else
         {
            this.b12e649b.x = 0;
            this.b12e649b.y = 0;
            this.b12e649b.z = -1;
         }
         this.light.rotationX = Math.atan2(this.b12e649b.z,Math.sqrt(this.b12e649b.x * this.b12e649b.x + this.b12e649b.y * this.b12e649b.y)) - 3.141592653589793 / 2;
         this.light.rotationY = 0;
         this.light.rotationZ = -Math.atan2(this.b12e649b.x,this.b12e649b.y);
         this.light.composeMatrix();
         var _loc5_:Number = this.light.ma;
         var _loc7_:Number = this.light.mb;
         var _loc8_:Number = this.light.mc;
         var _loc10_:Number = this.light.md;
         var _loc11_:Number = this.light.me;
         var _loc12_:Number = this.light.mf;
         var _loc13_:Number = this.light.mg;
         var _loc14_:Number = this.light.mh;
         var _loc15_:Number = this.light.mi;
         var _loc16_:Number = this.light.mj;
         var _loc17_:Number = this.light.mk;
         var _loc18_:Number = this.light.ml;
         this.light.invertMatrix();
         this.light.ima = this.light.ma;
         this.light.imb = this.light.mb;
         this.light.imc = this.light.mc;
         this.light.imd = this.light.md;
         this.light.ime = this.light.me;
         this.light.imf = this.light.mf;
         this.light.img = this.light.mg;
         this.light.imh = this.light.mh;
         this.light.imi = this.light.mi;
         this.light.imj = this.light.mj;
         this.light.imk = this.light.mk;
         this.light.iml = this.light.ml;
         this.light.boundMinX = 1e+22;
         this.light.boundMinY = 1e+22;
         this.light.boundMinZ = 1e+22;
         this.light.boundMaxX = -1e+22;
         this.light.boundMaxY = -1e+22;
         this.light.boundMaxZ = -1e+22;
         while(_loc22_ < this.a73a677c)
         {
            _loc19_ = this.e44575b2[_loc22_];
            _loc19_.composeMatrix();
            _loc9_ = _loc19_._parent;
            while(_loc9_ != null)
            {
               Object3D.tA.composeMatrixFromSource(_loc9_);
               _loc19_.appendMatrix(Object3D.tA);
               _loc9_ = _loc9_._parent;
            }
            _loc19_.appendMatrix(this.light);
            _loc2_ = this.boundVertexList;
            _loc2_.x = _loc19_.boundMinX;
            _loc2_.y = _loc19_.boundMinY;
            _loc2_.z = _loc19_.boundMinZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMaxX;
            _loc2_.y = _loc19_.boundMinY;
            _loc2_.z = _loc19_.boundMinZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMinX;
            _loc2_.y = _loc19_.boundMaxY;
            _loc2_.z = _loc19_.boundMinZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMaxX;
            _loc2_.y = _loc19_.boundMaxY;
            _loc2_.z = _loc19_.boundMinZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMinX;
            _loc2_.y = _loc19_.boundMinY;
            _loc2_.z = _loc19_.boundMaxZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMaxX;
            _loc2_.y = _loc19_.boundMinY;
            _loc2_.z = _loc19_.boundMaxZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMinX;
            _loc2_.y = _loc19_.boundMaxY;
            _loc2_.z = _loc19_.boundMaxZ;
            _loc2_ = _loc2_.next;
            _loc2_.x = _loc19_.boundMaxX;
            _loc2_.y = _loc19_.boundMaxY;
            _loc2_.z = _loc19_.boundMaxZ;
            _loc2_ = this.boundVertexList;
            while(_loc2_ != null)
            {
               _loc2_.cameraX = _loc19_.ma * _loc2_.x + _loc19_.mb * _loc2_.y + _loc19_.mc * _loc2_.z + _loc19_.md;
               _loc2_.cameraY = _loc19_.me * _loc2_.x + _loc19_.mf * _loc2_.y + _loc19_.mg * _loc2_.z + _loc19_.mh;
               _loc2_.cameraZ = _loc19_.mi * _loc2_.x + _loc19_.mj * _loc2_.y + _loc19_.mk * _loc2_.z + _loc19_.ml;
               if(_loc2_.cameraX < this.light.boundMinX)
               {
                  this.light.boundMinX = _loc2_.cameraX;
               }
               if(_loc2_.cameraX > this.light.boundMaxX)
               {
                  this.light.boundMaxX = _loc2_.cameraX;
               }
               if(_loc2_.cameraY < this.light.boundMinY)
               {
                  this.light.boundMinY = _loc2_.cameraY;
               }
               if(_loc2_.cameraY > this.light.boundMaxY)
               {
                  this.light.boundMaxY = _loc2_.cameraY;
               }
               if(_loc2_.cameraZ < this.light.boundMinZ)
               {
                  this.light.boundMinZ = _loc2_.cameraZ;
               }
               if(_loc2_.cameraZ > this.light.boundMaxZ)
               {
                  this.light.boundMaxZ = _loc2_.cameraZ;
               }
               _loc2_ = _loc2_.next;
            }
            _loc22_++;
         }
         var _loc23_:int = this.mapSize - 1 - 1 - this.blur - this.blur;
         var _loc27_:Number = this.light.boundMaxX - this.light.boundMinX;
         var _loc21_:Number = this.light.boundMaxY - this.light.boundMinY;
         var _loc25_:Number = _loc27_ > _loc21_ ? _loc27_ : _loc21_;
         var _loc3_:Number = _loc25_ / _loc23_;
         var _loc6_:Number = (1 + this.blur) * _loc3_;
         var _loc26_:Number = (1 + this.blur) * _loc3_;
         if(_loc27_ > _loc21_)
         {
            _loc26_ += (Math.ceil((_loc21_ - 0.01) / (_loc3_ + _loc3_)) * (_loc3_ + _loc3_) - _loc21_) * 0.5;
         }
         else
         {
            _loc6_ += (Math.ceil((_loc27_ - 0.01) / (_loc3_ + _loc3_)) * (_loc3_ + _loc3_) - _loc27_) * 0.5;
         }
         this.light.boundMinX -= _loc6_;
         this.light.boundMaxX += _loc6_;
         this.light.boundMinY -= _loc26_;
         this.light.boundMaxY += _loc26_;
         this.light.boundMinZ += this.offset;
         this.light.boundMaxZ += this.attenuation;
         this.a1669d25 = _loc25_ * this.mapSize / _loc23_;
         if(_loc27_ > _loc21_)
         {
            this.a1b0c6e3 = this.light.boundMinX;
            this.f16bbd2d = this.light.boundMinY - (this.light.boundMaxX - this.light.boundMinX - (this.light.boundMaxY - this.light.boundMinY)) * 0.5;
         }
         else
         {
            this.a1b0c6e3 = this.light.boundMinX - (this.light.boundMaxY - this.light.boundMinY - (this.light.boundMaxX - this.light.boundMinX)) * 0.5;
            this.f16bbd2d = this.light.boundMinY;
         }
         var _loc24_:Number = param1.farClipping;
         param1.farClipping = this.farDistance * param1.shadowsDistanceMultiplier;
         this.light.ma = _loc5_;
         this.light.mb = _loc7_;
         this.light.mc = _loc8_;
         this.light.md = _loc10_;
         this.light.me = _loc11_;
         this.light.mf = _loc12_;
         this.light.mg = _loc13_;
         this.light.mh = _loc14_;
         this.light.mi = _loc15_;
         this.light.mj = _loc16_;
         this.light.mk = _loc17_;
         this.light.ml = _loc18_;
         this.light.appendMatrix(param1);
         var _loc20_:Boolean = this.cullingInCamera(param1);
         param1.farClipping = _loc24_;
         if(_loc20_)
         {
            if(param1.debug && param1.checkInDebug(this.light) & 8)
            {
               Debug.drawBounds(param1,this.light,this.light.boundMinX,this.light.boundMinY,this.light.boundMinZ,this.light.boundMaxX,this.light.boundMaxY,this.light.boundMaxZ,16711935);
            }
            this.boundMinX = 1e+22;
            this.boundMinY = 1e+22;
            this.boundMinZ = 1e+22;
            this.boundMaxX = -1e+22;
            this.boundMaxY = -1e+22;
            this.boundMaxZ = -1e+22;
            _loc2_ = this.boundVertexList;
            while(_loc2_ != null)
            {
               _loc2_.cameraX = _loc5_ * _loc2_.x + _loc7_ * _loc2_.y + _loc8_ * _loc2_.z + _loc10_;
               _loc2_.cameraY = _loc11_ * _loc2_.x + _loc12_ * _loc2_.y + _loc13_ * _loc2_.z + _loc14_;
               _loc2_.cameraZ = _loc15_ * _loc2_.x + _loc16_ * _loc2_.y + _loc17_ * _loc2_.z + _loc18_;
               if(_loc2_.cameraX < this.boundMinX)
               {
                  this.boundMinX = _loc2_.cameraX;
               }
               if(_loc2_.cameraX > this.boundMaxX)
               {
                  this.boundMaxX = _loc2_.cameraX;
               }
               if(_loc2_.cameraY < this.boundMinY)
               {
                  this.boundMinY = _loc2_.cameraY;
               }
               if(_loc2_.cameraY > this.boundMaxY)
               {
                  this.boundMaxY = _loc2_.cameraY;
               }
               if(_loc2_.cameraZ < this.boundMinZ)
               {
                  this.boundMinZ = _loc2_.cameraZ;
               }
               if(_loc2_.cameraZ > this.boundMaxZ)
               {
                  this.boundMaxZ = _loc2_.cameraZ;
               }
               _loc2_ = _loc2_.next;
            }
            this.cameraInside = false;
            if(this.minZ <= param1.nearClipping)
            {
               _loc4_ = this.light.ima * param1.gmd + this.light.imb * param1.gmh + this.light.imc * param1.gml + this.light.imd;
               if(_loc4_ - param1.nearClipping <= this.light.boundMaxX && _loc4_ + param1.nearClipping >= this.light.boundMinX)
               {
                  _loc4_ = this.light.ime * param1.gmd + this.light.imf * param1.gmh + this.light.img * param1.gml + this.light.imh;
                  if(_loc4_ - param1.nearClipping <= this.light.boundMaxY && _loc4_ + param1.nearClipping >= this.light.boundMinY)
                  {
                     _loc4_ = this.light.imi * param1.gmd + this.light.imj * param1.gmh + this.light.imk * param1.gml + this.light.iml;
                     if(_loc4_ - param1.nearClipping <= this.light.boundMaxZ && _loc4_ + param1.nearClipping >= this.light.boundMinZ)
                     {
                        this.cameraInside = true;
                     }
                  }
               }
            }
         }
         return _loc20_;
      }
      
      alternativa3d function renderCasters(param1:Camera3D) : void
      {
         var _loc4_:Mesh = null;
         var _loc7_:int = 0;
         var _loc9_:Device = param1.device;
         var _loc6_:Number = 2 / this.a1669d25;
         var _loc8_:Number = -2 / this.a1669d25;
         var _loc10_:Number = 1 / (this.light.boundMaxZ - this.attenuation - (this.light.boundMinZ - this.offset));
         var _loc2_:Number = -(this.light.boundMinZ - this.offset) * _loc10_;
         var _loc5_:Number = (this.light.boundMinX + this.light.boundMaxX) * 0.5;
         var _loc3_:Number = (this.light.boundMinY + this.light.boundMaxY) * 0.5;
         while(_loc7_ < this.a73a677c)
         {
            _loc4_ = this.e44575b2[_loc7_];
            _loc4_.prepareResources();
            b1512218[0] = _loc4_.ma * _loc6_;
            b1512218[1] = _loc4_.mb * _loc6_;
            b1512218[2] = _loc4_.mc * _loc6_;
            b1512218[3] = (_loc4_.md - _loc5_) * _loc6_;
            b1512218[4] = _loc4_.me * _loc8_;
            b1512218[5] = _loc4_.mf * _loc8_;
            b1512218[6] = _loc4_.mg * _loc8_;
            b1512218[7] = (_loc4_.mh - _loc3_) * _loc8_;
            b1512218[8] = _loc4_.mi * _loc10_;
            b1512218[9] = _loc4_.mj * _loc10_;
            b1512218[10] = _loc4_.mk * _loc10_;
            b1512218[11] = _loc4_.ml * _loc10_ + _loc2_;
            b1512218[12] = this.textureScaleU;
            b1512218[13] = this.textureScaleV;
            b1512218[16] = 2 * this.textureOffsetU - 1 + this.textureScaleU;
            b1512218[17] = -(2 * this.textureOffsetV - 1 + this.textureScaleV);
            _loc9_.setVertexBufferAt(0,_loc4_.vertexBuffer,0,"float3");
            _loc9_.setProgramConstantsFromVector("vertex",0,b1512218,5,false);
            _loc9_.drawTriangles(_loc4_.indexBuffer,0,_loc4_.numTriangles);
            _loc7_++;
         }
         this.d7ae716[0] = this.textureOffsetU;
         this.d7ae716[1] = this.textureOffsetV;
         this.d7ae716[2] = this.textureOffsetU + this.textureScaleU;
         this.d7ae716[3] = this.textureOffsetV + this.textureScaleV;
      }
      
      alternativa3d function renderVolume(param1:Camera3D) : void
      {
         var _loc2_:Device = param1.device;
         c518e234[0] = this.light.ma;
         c518e234[1] = this.light.mb;
         c518e234[2] = this.light.mc;
         c518e234[3] = this.light.md;
         c518e234[4] = this.light.me;
         c518e234[5] = this.light.mf;
         c518e234[6] = this.light.mg;
         c518e234[7] = this.light.mh;
         c518e234[8] = this.light.mi;
         c518e234[9] = this.light.mj;
         c518e234[10] = this.light.mk;
         c518e234[11] = this.light.ml;
         c518e234[12] = this.light.boundMaxX - this.light.boundMinX;
         c518e234[13] = this.light.boundMaxY - this.light.boundMinY;
         c518e234[14] = this.light.boundMaxZ - this.light.boundMinZ;
         c518e234[15] = 1;
         c518e234[16] = this.light.boundMinX;
         c518e234[17] = this.light.boundMinY;
         c518e234[18] = this.light.boundMinZ;
         c518e234[19] = 1;
         _loc2_.setProgram(this.c72372af());
         _loc2_.setVertexBufferAt(0,b74c0288,0,"float3");
         _loc2_.setProgramConstantsFromVector("vertex",11,c518e234,5,false);
         _loc2_.setProgramConstantsFromVector("vertex",16,param1.projection,1);
         _loc2_.setProgramConstantsFromVector("vertex",17,param1.correction,1);
         _loc2_.setProgramConstantsFromVector("fragment",13,c216ba3,1);
         _loc2_.drawTriangles(e61037e,0,12);
      }
      
      alternativa3d function renderReceivers(param1:Camera3D) : void
      {
         var _loc3_:int = 0;
         var _loc16_:int = 0;
         var _loc18_:Device = param1.device;
         var _loc9_:Number = this.light.boundMinZ - this.offset;
         var _loc2_:Number = this.light.boundMaxZ - this.attenuation - _loc9_;
         var _loc5_:Number = this.light.ima / this.a1669d25;
         var _loc6_:Number = this.light.imb / this.a1669d25;
         var _loc7_:Number = this.light.imc / this.a1669d25;
         var _loc8_:Number = (this.light.imd - this.a1b0c6e3) / this.a1669d25;
         var _loc10_:Number = this.light.ime / this.a1669d25;
         var _loc11_:Number = this.light.imf / this.a1669d25;
         var _loc12_:Number = this.light.img / this.a1669d25;
         var _loc13_:Number = (this.light.imh - this.f16bbd2d) / this.a1669d25;
         var _loc17_:Number = this.light.imi / _loc2_;
         var _loc19_:Number = this.light.imj / _loc2_;
         var _loc20_:Number = this.light.imk / _loc2_;
         var _loc21_:Number = (this.light.iml - _loc9_) / _loc2_;
         this.transformConst[0] = _loc5_ * param1.gma + _loc6_ * param1.gme + _loc7_ * param1.gmi;
         this.transformConst[1] = _loc5_ * param1.gmb + _loc6_ * param1.gmf + _loc7_ * param1.gmj;
         this.transformConst[2] = _loc5_ * param1.gmc + _loc6_ * param1.gmg + _loc7_ * param1.gmk;
         this.transformConst[3] = _loc5_ * param1.gmd + _loc6_ * param1.gmh + _loc7_ * param1.gml + _loc8_;
         this.transformConst[4] = _loc10_ * param1.gma + _loc11_ * param1.gme + _loc12_ * param1.gmi;
         this.transformConst[5] = _loc10_ * param1.gmb + _loc11_ * param1.gmf + _loc12_ * param1.gmj;
         this.transformConst[6] = _loc10_ * param1.gmc + _loc11_ * param1.gmg + _loc12_ * param1.gmk;
         this.transformConst[7] = _loc10_ * param1.gmd + _loc11_ * param1.gmh + _loc12_ * param1.gml + _loc13_;
         this.transformConst[8] = _loc17_ * param1.gma + _loc19_ * param1.gme + _loc20_ * param1.gmi;
         this.transformConst[9] = _loc17_ * param1.gmb + _loc19_ * param1.gmf + _loc20_ * param1.gmj;
         this.transformConst[10] = _loc17_ * param1.gmc + _loc19_ * param1.gmg + _loc20_ * param1.gmk;
         this.transformConst[11] = _loc17_ * param1.gmd + _loc19_ * param1.gmh + _loc20_ * param1.gml + _loc21_;
         this.d24d3d38[0] = this.textureScaleU;
         this.d24d3d38[1] = this.textureScaleV;
         this.d24d3d38[4] = this.textureOffsetU;
         this.d24d3d38[5] = this.textureOffsetV;
         var _loc14_:Number = this.nearDistance * param1.shadowsDistanceMultiplier;
         var _loc4_:Number = this.farDistance * param1.shadowsDistanceMultiplier;
         var _loc15_:Number = 1 - (this.minZ - _loc14_) / (_loc4_ - _loc14_);
         if(_loc15_ < 0)
         {
            _loc15_ = 0;
         }
         if(_loc15_ > 1)
         {
            _loc15_ = 1;
         }
         this.colorConst[0] = 0;
         this.colorConst[1] = 256;
         this.colorConst[2] = 1;
         this.colorConst[3] = this.attenuation / _loc2_;
         this.colorConst[4] = 0;
         this.colorConst[5] = this.backFadeRange / _loc2_;
         this.colorConst[6] = this.offset / _loc2_;
         this.colorConst[7] = 1;
         this.colorConst[8] = (this.color >> 16 & 0xFF) / 255;
         this.colorConst[9] = (this.color >> 8 & 0xFF) / 255;
         this.colorConst[10] = (this.color & 0xFF) / 255;
         this.colorConst[11] = this.alpha * _loc15_ * param1.shadowsStrength;
         _loc18_.setProgram(this.c1992dd0(param1.view.quality,this.cameraInside,param1.view.correction));
         _loc18_.setProgramConstantsFromVector("vertex",11,param1.transform,3);
         _loc18_.setProgramConstantsFromVector("vertex",14,param1.projection,1);
         _loc18_.setProgramConstantsFromVector("vertex",15,this.transformConst,3);
         _loc18_.setProgramConstantsFromVector("vertex",18,param1.correction,1);
         _loc18_.setProgramConstantsFromVector("vertex",19,this.d24d3d38,2);
         _loc18_.setProgramConstantsFromVector("fragment",13,this.colorConst,3);
         _loc18_.setProgramConstantsFromVector("fragment",16,this.d7ae716,1);
         while(_loc3_ < this.receiversCount)
         {
            _loc16_ = this.receiversBuffers[_loc3_];
            _loc18_.setVertexBufferAt(0,param1.receiversVertexBuffers[_loc16_],0,"float3");
            _loc18_.drawTriangles(param1.receiversIndexBuffers[_loc16_],this.receiversFirstIndexes[_loc3_],this.receiversNumsTriangles[_loc3_]);
            _loc3_++;
         }
         this.receiversCount = 0;
      }
      
      private function c72372af() : ProgramResource
      {
         var _loc3_:ByteArray = null;
         var _loc1_:FragmentShader = null;
         var _loc2_:ProgramResource = c184f110;
         if(_loc2_ == null)
         {
            _loc3_ = new ShadowVolumeVertexShader().agalcode;
            _loc1_ = new FragmentShader();
            _loc1_.mov(FragmentShader.oc,FragmentShader.fc[13]);
            _loc2_ = new ProgramResource(_loc3_,_loc1_.agalcode);
            c184f110 = _loc2_;
         }
         return _loc2_;
      }
      
      private function c1992dd0(param1:Boolean, param2:Boolean, param3:Boolean) : ProgramResource
      {
         var _loc7_:ByteArray = null;
         var _loc4_:ByteArray = null;
         var _loc6_:int = int(param1) | int(param2) << 1 | int(param3) << 2;
         var _loc5_:ProgramResource = c3abbecb[_loc6_];
         if(_loc5_ == null)
         {
            _loc7_ = new ShadowReceiverVertexShader(param3).agalcode;
            _loc4_ = new ShadowReceiverFragmentShader(param1,param2).agalcode;
            _loc5_ = new ProgramResource(_loc7_,_loc4_);
            c3abbecb[_loc6_] = _loc5_;
         }
         return _loc5_;
      }
      
      private function cullingInCamera(param1:Camera3D) : Boolean
      {
         var _loc4_:Vertex = this.boundVertexList;
         _loc4_.x = this.light.boundMinX;
         _loc4_.y = this.light.boundMinY;
         _loc4_.z = this.light.boundMinZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMaxX;
         _loc4_.y = this.light.boundMinY;
         _loc4_.z = this.light.boundMinZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMinX;
         _loc4_.y = this.light.boundMaxY;
         _loc4_.z = this.light.boundMinZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMaxX;
         _loc4_.y = this.light.boundMaxY;
         _loc4_.z = this.light.boundMinZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMinX;
         _loc4_.y = this.light.boundMinY;
         _loc4_.z = this.light.boundMaxZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMaxX;
         _loc4_.y = this.light.boundMinY;
         _loc4_.z = this.light.boundMaxZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMinX;
         _loc4_.y = this.light.boundMaxY;
         _loc4_.z = this.light.boundMaxZ;
         _loc4_ = _loc4_.next;
         _loc4_.x = this.light.boundMaxX;
         _loc4_.y = this.light.boundMaxY;
         _loc4_.z = this.light.boundMaxZ;
         this.minZ = 1e+22;
         _loc4_ = this.boundVertexList;
         while(_loc4_ != null)
         {
            _loc4_.cameraX = this.light.ma * _loc4_.x + this.light.mb * _loc4_.y + this.light.mc * _loc4_.z + this.light.md;
            _loc4_.cameraY = this.light.me * _loc4_.x + this.light.mf * _loc4_.y + this.light.mg * _loc4_.z + this.light.mh;
            _loc4_.cameraZ = this.light.mi * _loc4_.x + this.light.mj * _loc4_.y + this.light.mk * _loc4_.z + this.light.ml;
            if(_loc4_.cameraZ < this.minZ)
            {
               this.minZ = _loc4_.cameraZ;
            }
            _loc4_ = _loc4_.next;
         }
         var _loc5_:Number = param1.nearClipping;
         _loc4_ = this.boundVertexList;
         var _loc3_:Boolean = false;
         var _loc6_:Boolean = false;
         while(_loc4_ != null)
         {
            if(_loc4_.cameraZ > _loc5_)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         var _loc2_:Number = param1.farClipping;
         _loc4_ = this.boundVertexList;
         _loc3_ = false;
         _loc6_ = false;
         while(_loc4_ != null)
         {
            if(_loc4_.cameraZ < _loc2_)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         _loc4_ = this.boundVertexList;
         _loc3_ = false;
         _loc6_ = false;
         while(_loc4_ != null)
         {
            if(-_loc4_.cameraX < _loc4_.cameraZ)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         _loc4_ = this.boundVertexList;
         _loc3_ = false;
         _loc6_ = false;
         while(_loc4_ != null)
         {
            if(_loc4_.cameraX < _loc4_.cameraZ)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         _loc4_ = this.boundVertexList;
         _loc3_ = false;
         _loc6_ = false;
         while(_loc4_ != null)
         {
            if(-_loc4_.cameraY < _loc4_.cameraZ)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         _loc4_ = this.boundVertexList;
         _loc3_ = false;
         _loc6_ = false;
         while(_loc4_ != null)
         {
            if(_loc4_.cameraY < _loc4_.cameraZ)
            {
               _loc3_ = true;
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc6_ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         if(_loc6_ && !_loc3_)
         {
            return false;
         }
         return true;
      }
   }
}

