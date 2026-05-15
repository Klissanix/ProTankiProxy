package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.lights.*;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.TextureResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display3D.Context3DClearMask;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   import flash.utils.getTimer;
   
   use namespace alternativa3d;
   
   public class Camera3D extends Object3D
   {
      
      alternativa3d static var renderId:int = 0;
      
      private static const c274235:int = 8;
      
      private static const a506eb45:int = 16;
      
      private static const e16fa1dd:int = 18;
      
      private static const constants:Vector.<Number> = new Vector.<Number>(18 * 3 * 8);
      
      private static const d169679c:VertexBufferResource = b1686262(18 * 3);
      
      private static const f6cb575:IndexBufferResource = b42cfc50(18 * 3);
      
      public var view:View;
      
      public var fov:Number = 1.5707963267948966;
      
      public var nearClipping:Number = 1;
      
      public var farClipping:Number = 1000000;
      
      public var onRender:Function;
      
      alternativa3d var viewSizeX:Number;
      
      alternativa3d var viewSizeY:Number;
      
      alternativa3d var focalLength:Number;
      
      alternativa3d var correctionX:Number;
      
      alternativa3d var correctionY:Number;
      
      alternativa3d var lights:Vector.<Light3D> = new Vector.<Light3D>();
      
      alternativa3d var lightsLength:int = 0;
      
      alternativa3d var occluders:Vector.<Vertex> = new Vector.<Vertex>();
      
      alternativa3d var numOccluders:int;
      
      alternativa3d var occludedAll:Boolean;
      
      alternativa3d var numDraws:int;
      
      alternativa3d var numTriangles:int;
      
      alternativa3d var device:Device;
      
      alternativa3d var projection:Vector.<Number> = new Vector.<Number>(4);
      
      alternativa3d var correction:Vector.<Number> = new Vector.<Number>(4);
      
      alternativa3d var transform:Vector.<Number> = new Vector.<Number>(12);
      
      private var opaqueMaterials:Vector.<Material> = new Vector.<Material>();
      
      private var a676f807:Vector.<VertexBufferResource> = new Vector.<VertexBufferResource>();
      
      private var f2a92204:Vector.<IndexBufferResource> = new Vector.<IndexBufferResource>();
      
      private var b466b225:Vector.<int> = new Vector.<int>();
      
      private var c216879a:Vector.<int> = new Vector.<int>();
      
      private var c47e9100:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var e415b7fa:int = 0;
      
      private var d3d9d15d:Vector.<Material> = new Vector.<Material>();
      
      private var c4811692:Vector.<VertexBufferResource> = new Vector.<VertexBufferResource>();
      
      private var c542379a:Vector.<IndexBufferResource> = new Vector.<IndexBufferResource>();
      
      private var d6d6fca5:Vector.<int> = new Vector.<int>();
      
      private var b4af31b6:Vector.<int> = new Vector.<int>();
      
      private var b7557322:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var b6eb06bb:int = 0;
      
      private var a3d89f86:Vector.<Face> = new Vector.<Face>();
      
      private var a71995de:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var b5aa5e30:int = 0;
      
      private var e4c997a:Vector.<Face> = new Vector.<Face>();
      
      private var d5a71216:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var e66ec85a:int = 0;
      
      private var b6034c90:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var c657bc62:Vector.<Decal> = new Vector.<Decal>();
      
      private var f28c8f3d:int = 0;
      
      alternativa3d var depthObjects:Vector.<Object3D> = new Vector.<Object3D>();
      
      alternativa3d var depthCount:int = 0;
      
      alternativa3d var casterObjects:Vector.<Object3D> = new Vector.<Object3D>();
      
      alternativa3d var casterCount:int = 0;
      
      alternativa3d var shadowAtlases:Array = [];
      
      alternativa3d var receiversVertexBuffers:Vector.<VertexBufferResource>;
      
      alternativa3d var receiversIndexBuffers:Vector.<IndexBufferResource>;
      
      alternativa3d var gma:Number;
      
      alternativa3d var gmb:Number;
      
      alternativa3d var gmc:Number;
      
      alternativa3d var gmd:Number;
      
      alternativa3d var gme:Number;
      
      alternativa3d var gmf:Number;
      
      alternativa3d var gmg:Number;
      
      alternativa3d var gmh:Number;
      
      alternativa3d var gmi:Number;
      
      alternativa3d var gmj:Number;
      
      alternativa3d var gmk:Number;
      
      alternativa3d var gml:Number;
      
      alternativa3d var fogParams:Vector.<Number> = new <Number>[1,1,0,1];
      
      alternativa3d var fogFragment:Vector.<Number> = new <Number>[0,0,0,1];
      
      private var fragmentConst:Vector.<Number> = new <Number>[0,0,0,1,0.5,0.5,0,0.000244140625];
      
      private var shadows:Dictionary = new Dictionary();
      
      private var de90e67:Vector.<Shadow> = new Vector.<Shadow>();
      
      private var d363e697:DepthRenderer = new DepthRenderer();
      
      alternativa3d var depthMap:TextureResource;
      
      alternativa3d var lightMap:TextureResource;
      
      private var e304266d:Vector.<Number> = new <Number>[0,0,0,1];
      
      private var a4879bb7:Vector.<Number> = new <Number>[0,0,0,1];
      
      private var c20d2b0e:Vector.<Number> = new <Number>[0,0,0,1];
      
      private var b16c41b8:Vector.<Number> = new <Number>[0,0,0,1,0,0,0,1];
      
      alternativa3d var omnies:Vector.<OmniLight> = new Vector.<OmniLight>();
      
      alternativa3d var omniesCount:int = 0;
      
      alternativa3d var spots:Vector.<SpotLight> = new Vector.<SpotLight>();
      
      alternativa3d var spotsCount:int = 0;
      
      alternativa3d var tubes:Vector.<TubeLight> = new Vector.<TubeLight>();
      
      alternativa3d var tubesCount:int = 0;
      
      public var fogNear:Number = 0;
      
      public var fogFar:Number = 1000000;
      
      public var fogAlpha:Number = 0;
      
      public var fogColor:int = 8355711;
      
      public var softTransparency:Boolean = false;
      
      public var depthBufferScale:Number = 1;
      
      public var ssao:Boolean = false;
      
      public var ssaoRadius:Number = 100;
      
      public var ssaoRange:Number = 1000;
      
      public var ssaoColor:int = 0;
      
      public var ssaoAlpha:Number = 1;
      
      public var directionalLight:DirectionalLight;
      
      public var shadowMap:ShadowMap;
      
      public var ambientColor:int = 0;
      
      public var deferredLighting:Boolean = false;
      
      public var fogStrength:Number = 1;
      
      public var softTransparencyStrength:Number = 1;
      
      public var ssaoStrength:Number = 1;
      
      public var directionalLightStrength:Number = 1;
      
      public var shadowMapStrength:Number = 1;
      
      public var shadowsStrength:Number = 1;
      
      public var shadowsDistanceMultiplier:Number = 1;
      
      public var deferredLightingStrength:Number = 1;
      
      public var alternatePaintBlend:Boolean;
      
      public var debug:Boolean = false;
      
      private var a479d1b9:Object = {};
      
      private var c5f2c6c:Sprite = this.b1678191();
      
      public var fpsUpdatePeriod:int = 10;
      
      public var timerUpdatePeriod:int = 10;
      
      private var b32d3385:TextField;
      
      private var ca386e0:TextField;
      
      private var c10af4ab:TextField;
      
      private var b47269e7:TextField;
      
      private var c6f6fbc0:TextField;
      
      private var d52dd781:TextField;
      
      private var c52b709e:Bitmap;
      
      private var rect:Rectangle;
      
      private var c5fe83b4:String = "TR";
      
      private var cd6ec46:Number = 2;
      
      private var c1026366:Number = 2;
      
      private var f33308c8:int;
      
      private var d3fa2e03:int;
      
      private var a75d8fef:int;
      
      private var b5bbe1f2:int;
      
      private var e383ccde:int;
      
      private var a5885c1a:int;
      
      private var f449be2d:int;
      
      private var timer:int;
      
      private var e175bba3:Vertex = new Vertex();
      
      private var b3f4a433:Face = new Face();
      
      private var f648ee3c:Wrapper = new Wrapper();
      
      alternativa3d var lastWrapper:Wrapper = this.f648ee3c;
      
      alternativa3d var lastVertex:Vertex = this.e175bba3;
      
      alternativa3d var lastFace:Face = this.b3f4a433;
      
      public function Camera3D()
      {
         super();
      }
      
      private static function b1686262(param1:int) : VertexBufferResource
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Vector.<Number> = new Vector.<Number>(param1);
         _loc3_ = 0;
         while(_loc3_ < param1)
         {
            _loc2_[_loc3_] = (_loc3_ << 1) + 16;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param1 << 1)
         {
            _loc4_ = _loc3_ * 4 + 3;
            constants[_loc4_] = 1;
            _loc3_++;
         }
         return new VertexBufferResource(_loc2_,1);
      }
      
      private static function b42cfc50(param1:int) : IndexBufferResource
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<uint> = new Vector.<uint>(param1);
         while(_loc3_ < param1)
         {
            _loc2_[_loc3_] = _loc3_;
            _loc3_++;
         }
         return new IndexBufferResource(_loc2_);
      }
      
      public function addShadow(param1:Shadow) : void
      {
         this.shadows[param1] = true;
      }
      
      public function removeShadow(param1:Shadow) : void
      {
         delete this.shadows[param1];
      }
      
      public function removeAllShadows() : void
      {
         this.shadows = new Dictionary();
      }
      
      public function render() : void
      {
         var _loc5_:int = 0;
         var _loc4_:Shadow = null;
         var _loc1_:ShadowAtlas = null;
         var _loc6_:int = 0;
         var _loc16_:Object3D = null;
         var _loc14_:Light3D = null;
         var _loc2_:Boolean = false;
         var _loc13_:Material = null;
         var _loc11_:Decal = null;
         var _loc21_:int = 0;
         var _loc7_:TextureResource = null;
         var _loc15_:int = 0;
         var _loc8_:Face = null;
         var _loc22_:Object3D = null;
         var _loc9_:Boolean = false;
         var _loc12_:int = 0;
         var _loc18_:Sprite3D = null;
         var _loc3_:Face = null;
         var _loc19_:Face = null;
         var _loc20_:Object3D = null;
         var _loc17_:Sprite3D = null;
         var _loc10_:Boolean = false;
         this.numTriangles = 0;
         if(this.view != null && this.view.device != null && this.view.device.ready)
         {
            renderId = renderId + 1;
            this.device = this.view.device;
            this.view.configure();
            if(this.nearClipping < 1)
            {
               this.nearClipping = 1;
            }
            if(this.farClipping > 1000000)
            {
               this.farClipping = 1000000;
            }
            this.viewSizeX = this.view._width * 0.5;
            this.viewSizeY = this.view._height * 0.5;
            this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
            this.correctionX = this.viewSizeX / this.focalLength;
            this.correctionY = this.viewSizeY / this.focalLength;
            this.projection[0] = 1 << this.view.zBufferPrecision;
            this.projection[1] = 1;
            this.projection[2] = this.farClipping / (this.farClipping - this.nearClipping);
            this.projection[3] = this.nearClipping * this.farClipping / (this.nearClipping - this.farClipping);
            this.composeCameraMatrix();
            _loc16_ = this;
            while(_loc16_._parent != null)
            {
               _loc16_ = _loc16_._parent;
               _loc16_.composeMatrix();
               appendMatrix(_loc16_);
            }
            this.gma = ma;
            this.gmb = mb;
            this.gmc = mc;
            this.gmd = md;
            this.gme = me;
            this.gmf = mf;
            this.gmg = mg;
            this.gmh = mh;
            this.gmi = mi;
            this.gmj = mj;
            this.gmk = mk;
            this.gml = ml;
            invertMatrix();
            this.transform[0] = ma;
            this.transform[1] = mb;
            this.transform[2] = mc;
            this.transform[3] = md;
            this.transform[4] = me;
            this.transform[5] = mf;
            this.transform[6] = mg;
            this.transform[7] = mh;
            this.transform[8] = mi;
            this.transform[9] = mj;
            this.transform[10] = mk;
            this.transform[11] = ml;
            this.numOccluders = 0;
            this.occludedAll = false;
            if(_loc16_ != this && _loc16_.visible)
            {
               this.lightsLength = 0;
               _loc14_ = (_loc16_ as Object3DContainer).lightList;
               while(_loc14_ != null)
               {
                  if(_loc14_.visible)
                  {
                     _loc14_.calculateCameraMatrix(this);
                     if(_loc14_.checkFrustumCulling(this))
                     {
                        this.lights[this.lightsLength] = _loc14_;
                        this.lightsLength++;
                        if(!this.view.constrained && this.deferredLighting && this.deferredLightingStrength > 0)
                        {
                           if(_loc14_ is OmniLight)
                           {
                              this.omnies[this.omniesCount] = _loc14_ as OmniLight;
                              this.omniesCount++;
                           }
                           else if(_loc14_ is SpotLight)
                           {
                              this.spots[this.spotsCount] = _loc14_ as SpotLight;
                              this.spotsCount++;
                           }
                           else if(_loc14_ is TubeLight)
                           {
                              this.tubes[this.tubesCount] = _loc14_ as TubeLight;
                              this.tubesCount++;
                           }
                        }
                     }
                  }
                  _loc14_ = _loc14_.nextLight;
               }
               _loc16_.appendMatrix(this);
               _loc16_.cullingInCamera(this,63);
               if(this.debug)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this.lightsLength)
                  {
                     (this.lights[_loc5_] as Light3D).drawDebug(this);
                     _loc5_++;
                  }
               }
               _loc2_ = false;
               if(!this.view.constrained && this.shadowsStrength > 0)
               {
                  for(_loc4_ in this.shadows)
                  {
                     if(_loc4_.checkVisibility(this))
                     {
                        _loc5_ = _loc4_.mapSize + _loc4_.blur;
                        _loc1_ = this.shadowAtlases[_loc5_];
                        if(_loc1_ == null)
                        {
                           _loc1_ = new ShadowAtlas(_loc4_.mapSize,_loc4_.blur);
                           this.shadowAtlases[_loc5_] = _loc1_;
                        }
                        _loc1_.shadows[_loc1_.shadowsCount] = _loc4_;
                        _loc1_.shadowsCount++;
                        _loc2_ = true;
                     }
                  }
               }
               this.device.setCulling("front");
               this.device.setBlendFactors("one","zero");
               this.device.setStencilActions("none");
               this.device.setStencilReferenceValue(0);
               if(_loc2_)
               {
                  this.device.setCulling("back");
                  this.device.setDepthTest(true,"greaterEqual");
                  this.device.setProgram(Shadow.getCasterProgram());
                  for each(_loc1_ in this.shadowAtlases)
                  {
                     if(_loc1_.shadowsCount > 0)
                     {
                        _loc1_.renderCasters(this);
                     }
                  }
                  this.device.setCulling("front");
                  this.device.setDepthTest(false,"always");
                  for each(_loc1_ in this.shadowAtlases)
                  {
                     if(_loc1_.shadowsCount > 0)
                     {
                        _loc1_.renderBlur(this);
                     }
                  }
                  this.device.setTextureAt(0,null);
                  this.device.setVertexBufferAt(1,null);
               }
               if(this.directionalLight != null)
               {
                  this.directionalLight.composeAndAppend(this);
                  this.directionalLight.calculateInverseMatrix();
               }
               _loc16_.concatenatedAlpha = _loc16_.alpha;
               _loc16_.concatenatedBlendMode = _loc16_.blendMode;
               _loc16_.concatenatedColorTransform = _loc16_.colorTransform;
               _loc16_.draw(this);
               this.device.setDepthTest(true,"less");
               if(!this.view.constrained && this.shadowMap != null && this.shadowMapStrength > 0)
               {
                  this.shadowMap.calculateBounds(this);
                  this.shadowMap.render(this,this.casterObjects,this.casterCount);
               }
               this.depthMap = null;
               this.lightMap = null;
               if(!this.view.constrained && (this.softTransparency && this.softTransparencyStrength > 0 || this.ssao && this.ssaoStrength > 0 || this.deferredLighting && this.deferredLightingStrength > 0))
               {
                  this.d363e697.render(this,this.view._width,this.view._height,this.depthBufferScale,this.ssao && this.ssaoStrength > 0,this.deferredLighting && this.deferredLightingStrength > 0,this.directionalLight != null && this.directionalLightStrength > 0 || this.shadowMap != null && this.shadowMapStrength > 0 ? 0 : 0.5,this.depthObjects,this.depthCount);
                  if(this.softTransparency && this.softTransparencyStrength > 0 || this.ssao && this.ssaoStrength > 0)
                  {
                     this.depthMap = this.d363e697.depthBuffer;
                  }
                  if(this.deferredLighting && this.deferredLightingStrength > 0)
                  {
                     this.lightMap = this.d363e697.lightBuffer;
                  }
               }
               else
               {
                  this.d363e697.resetResources();
               }
               if(_loc2_ || !this.view.constrained && (this.softTransparency && this.softTransparencyStrength > 0 || this.ssao && this.ssaoStrength > 0 || this.deferredLighting && this.deferredLightingStrength > 0) || !this.view.constrained && this.shadowMap != null && this.shadowMapStrength > 0)
               {
                  this.device.setRenderToBackBuffer();
               }
               this.view.clearArea();
               this.device.setProgramConstantsFromVector("vertex",3,this.projection,1);
               this.fragmentConst[0] = this.farClipping;
               this.fragmentConst[1] = this.farClipping / 255;
               this.device.setProgramConstantsFromVector("fragment",17,this.fragmentConst,2);
               this.correction[0] = this.view.rect.width / this.device.width;
               this.correction[1] = this.view.rect.height / this.device.height;
               this.correction[2] = (this.view.rect.x * 2 + this.view.rect.width - this.device.width) / this.device.width;
               this.correction[3] = (this.view.rect.y * 2 + this.view.rect.height - this.device.height) / this.device.height;
               this.device.setProgramConstantsFromVector("vertex",13,this.correction,1);
               if(!this.view.constrained && (this.softTransparency && this.softTransparencyStrength > 0 || this.ssao && this.ssaoStrength > 0 || this.deferredLighting && this.deferredLightingStrength > 0 || this.shadowMap != null && this.shadowMapStrength > 0))
               {
                  this.e304266d[0] = this.d363e697.correctionX;
                  this.e304266d[1] = this.d363e697.correctionY;
                  this.device.setProgramConstantsFromVector("fragment",4,this.e304266d,1);
                  if(this.ssao && this.ssaoStrength > 0)
                  {
                     this.a4879bb7[0] = (1 - 2 * (this.ssaoColor >> 16 & 0xFF) / 255) * this.ssaoAlpha * this.ssaoStrength;
                     this.a4879bb7[1] = (1 - 2 * (this.ssaoColor >> 8 & 0xFF) / 255) * this.ssaoAlpha * this.ssaoStrength;
                     this.a4879bb7[2] = (1 - 2 * (this.ssaoColor & 0xFF) / 255) * this.ssaoAlpha * this.ssaoStrength;
                     this.device.setProgramConstantsFromVector("fragment",12,this.a4879bb7,1);
                  }
               }
               if(!this.view.constrained && this.shadowMap != null && this.shadowMapStrength > 0)
               {
                  this.device.setProgramConstantsFromVector("vertex",6,this.shadowMap.transform,4);
                  this.device.setProgramConstantsFromVector("fragment",5,this.shadowMap.params,5);
               }
               if(this.fogAlpha > 0 && this.fogStrength > 0)
               {
                  this.fogParams[2] = this.fogNear;
                  this.fogParams[3] = this.fogFar - this.fogNear;
                  this.device.setProgramConstantsFromVector("vertex",5,this.fogParams,1);
                  this.fogFragment[0] = (this.fogColor >> 16 & 0xFF) / 255;
                  this.fogFragment[1] = (this.fogColor >> 8 & 0xFF) / 255;
                  this.fogFragment[2] = (this.fogColor & 0xFF) / 255;
                  this.fogFragment[3] = this.fogAlpha * this.fogStrength;
                  this.device.setProgramConstantsFromVector("fragment",2,this.fogFragment,1);
               }
               if(!this.view.constrained && this.directionalLight != null && this.directionalLightStrength > 0)
               {
                  this.c20d2b0e[0] = -this.directionalLight.imi;
                  this.c20d2b0e[1] = -this.directionalLight.imj;
                  this.c20d2b0e[2] = -this.directionalLight.imk;
                  this.device.setProgramConstantsFromVector("vertex",10,this.c20d2b0e,1);
                  this.b16c41b8[0] = this.directionalLight.intensity * (this.directionalLight.color >> 16 & 0xFF) * 2 * this.directionalLightStrength / 255;
                  this.b16c41b8[1] = this.directionalLight.intensity * (this.directionalLight.color >> 8 & 0xFF) * 2 * this.directionalLightStrength / 255;
                  this.b16c41b8[2] = this.directionalLight.intensity * (this.directionalLight.color & 0xFF) * 2 * this.directionalLightStrength / 255;
                  this.b16c41b8[4] = 1 + ((this.ambientColor >> 16 & 0xFF) * 2 / 255 - 1) * this.directionalLightStrength;
                  this.b16c41b8[5] = 1 + ((this.ambientColor >> 8 & 0xFF) * 2 / 255 - 1) * this.directionalLightStrength;
                  this.b16c41b8[6] = 1 + ((this.ambientColor & 0xFF) * 2 / 255 - 1) * this.directionalLightStrength;
                  this.device.setProgramConstantsFromVector("fragment",10,this.b16c41b8,2);
               }
               else if(!this.view.constrained && this.shadowMap != null && this.shadowMapStrength > 0)
               {
                  this.b16c41b8[0] = 0;
                  this.b16c41b8[1] = 0;
                  this.b16c41b8[2] = 0;
                  this.b16c41b8[4] = 1;
                  this.b16c41b8[5] = 1;
                  this.b16c41b8[6] = 1;
                  this.device.setProgramConstantsFromVector("fragment",10,this.b16c41b8,2);
               }
               _loc5_ = 0;
               while(_loc5_ < this.e415b7fa)
               {
                  _loc13_ = this.opaqueMaterials[_loc5_];
                  _loc13_.drawOpaque(this,this.a676f807[_loc5_],this.f2a92204[_loc5_],this.b466b225[_loc5_],this.c216879a[_loc5_],this.c47e9100[_loc5_]);
                  _loc5_++;
               }
               this.device.setDepthTest(false,"lessEqual");
               _loc5_ = 0;
               while(_loc5_ < this.b6eb06bb)
               {
                  _loc13_ = this.d3d9d15d[_loc5_];
                  _loc13_.drawOpaque(this,this.c4811692[_loc5_],this.c542379a[_loc5_],this.d6d6fca5[_loc5_],this.b4af31b6[_loc5_],this.b7557322[_loc5_]);
                  _loc5_++;
               }
               this.device.setDepthTest(false,"less");
               _loc5_ = this.f28c8f3d - 1;
               while(_loc5_ >= 0)
               {
                  _loc11_ = this.c657bc62[_loc5_];
                  if(_loc11_.concatenatedBlendMode != "normal")
                  {
                     this.device.setBlendFactors("sourceAlpha","one");
                  }
                  else
                  {
                     this.device.setBlendFactors("sourceAlpha","oneMinusSourceAlpha");
                  }
                  _loc11_.faceList.material.drawOpaque(this,_loc11_.vertexBuffer,_loc11_.indexBuffer,0,_loc11_.numTriangles,_loc11_);
                  _loc5_--;
               }
               if(_loc2_)
               {
                  this.device.setTextureAt(0,null);
                  this.device.setTextureAt(1,null);
                  this.device.setTextureAt(2,null);
                  this.device.setTextureAt(3,null);
                  this.device.setTextureAt(4,null);
                  this.device.setTextureAt(5,null);
                  this.device.setTextureAt(6,null);
                  this.device.setVertexBufferAt(1,null);
                  this.device.setVertexBufferAt(2,null);
                  _loc21_ = 0;
                  for each(_loc1_ in this.shadowAtlases)
                  {
                     _loc5_ = 0;
                     while(_loc5_ < _loc1_.shadowsCount)
                     {
                        this.de90e67[_loc21_] = _loc1_.shadows[_loc5_];
                        _loc21_++;
                        _loc5_++;
                     }
                  }
                  this.device.setDepthTest(false,"less");
                  _loc7_ = null;
                  _loc5_ = 0;
                  while(_loc5_ < _loc21_)
                  {
                     if(_loc5_ > 0)
                     {
                        this.device.clear(0,0,0,0,1,0,Context3DClearMask.STENCIL);
                     }
                     this.device.setBlendFactors("zero","one");
                     this.device.setCulling("none");
                     this.device.setStencilActions("frontAndBack","always","invert");
                     _loc6_ = _loc5_;
                     _loc15_ = 1;
                     while(_loc6_ < _loc5_ + 8 && _loc6_ < _loc21_)
                     {
                        _loc4_ = this.de90e67[_loc6_];
                        if(!_loc4_.cameraInside)
                        {
                           this.device.setStencilReferenceValue(_loc15_,_loc15_,_loc15_);
                           _loc4_.renderVolume(this);
                        }
                        _loc6_++;
                        _loc15_ <<= 1;
                     }
                     this.device.setBlendFactors("sourceAlpha","oneMinusSourceAlpha");
                     this.device.setCulling("front");
                     this.device.setStencilActions("back","equal");
                     _loc6_ = _loc5_;
                     _loc15_ = 1;
                     while(_loc6_ < _loc5_ + 8 && _loc6_ < _loc21_)
                     {
                        _loc4_ = this.de90e67[_loc6_];
                        if(_loc4_.texture != _loc7_)
                        {
                           this.device.setTextureAt(0,_loc4_.texture);
                           _loc7_ = _loc4_.texture;
                        }
                        if(!_loc4_.cameraInside)
                        {
                           this.device.setStencilReferenceValue(_loc15_,_loc15_,_loc15_);
                           _loc4_.renderReceivers(this);
                        }
                        else
                        {
                           this.device.setStencilActions("back","always");
                           _loc4_.renderReceivers(this);
                           this.device.setStencilActions("back","equal");
                        }
                        _loc6_++;
                        _loc15_ <<= 1;
                     }
                     this.device.setTextureAt(0,null);
                     _loc7_ = null;
                     _loc5_ += 8;
                  }
                  this.device.setStencilActions();
                  this.device.setStencilReferenceValue(0);
               }
               this.device.setProgramConstantsFromVector("vertex",13,this.correction,1);
               this.device.setCulling("front");
               _loc5_ = 0;
               while(_loc5_ < this.e66ec85a)
               {
                  this.a3d89f86[this.b5aa5e30] = this.e4c997a[_loc5_];
                  this.a71995de[this.b5aa5e30] = this.d5a71216[_loc5_];
                  this.b5aa5e30++;
                  _loc5_++;
               }
               this.e66ec85a = this.b5aa5e30 - this.e66ec85a;
               this.device.setDepthTest(true,"less");
               _loc5_ = this.b5aa5e30 - 1;
               while(_loc5_ >= 0)
               {
                  if(_loc5_ + 1 == this.e66ec85a)
                  {
                     this.device.setDepthTest(false,"less");
                  }
                  _loc8_ = this.a3d89f86[_loc5_];
                  _loc22_ = this.a71995de[_loc5_];
                  if(_loc22_.concatenatedBlendMode != "normal")
                  {
                     this.device.setBlendFactors("sourceAlpha","one");
                  }
                  else
                  {
                     this.device.setBlendFactors("sourceAlpha","oneMinusSourceAlpha");
                  }
                  _loc9_ = _loc22_ is Sprite3D;
                  if(_loc9_)
                  {
                     _loc12_ = 0;
                     _loc18_ = Sprite3D(_loc22_);
                     _loc3_ = _loc8_;
                     while(_loc3_.processNext != null)
                     {
                        _loc3_.distance = _loc12_;
                        _loc3_ = _loc3_.processNext;
                     }
                     _loc3_.distance = _loc12_;
                     this.b6034c90[_loc12_] = _loc22_;
                     _loc12_++;
                     _loc6_ = _loc5_ - 1;
                     while(_loc6_ >= 0)
                     {
                        _loc19_ = this.a3d89f86[_loc6_];
                        if(_loc8_.material != _loc19_.material)
                        {
                           break;
                        }
                        _loc20_ = this.a71995de[_loc6_];
                        if(!(_loc20_ is Sprite3D))
                        {
                           break;
                        }
                        _loc17_ = Sprite3D(_loc20_);
                        if(_loc18_.useLight != _loc17_.useLight || _loc18_.useShadowMap != _loc17_.useShadowMap || _loc18_.lighted || _loc17_.lighted || _loc18_.softAttenuation != _loc17_.softAttenuation || _loc18_.concatenatedAlpha != _loc17_.concatenatedAlpha || _loc18_.concatenatedColorTransform != null || _loc17_.concatenatedColorTransform != null || _loc18_.concatenatedBlendMode != _loc17_.concatenatedBlendMode)
                        {
                           break;
                        }
                        _loc3_.processNext = _loc19_;
                        _loc3_ = _loc19_;
                        while(_loc3_.processNext != null)
                        {
                           _loc3_.distance = _loc12_;
                           _loc3_ = _loc3_.processNext;
                        }
                        _loc3_.distance = _loc12_;
                        this.b6034c90[_loc12_] = _loc20_;
                        _loc12_++;
                        _loc5_--;
                        _loc6_--;
                     }
                  }
                  _loc10_ = _loc9_ && !Sprite3D(_loc22_).depthTest;
                  if(_loc10_)
                  {
                     this.device.setDepthTest(false,"always");
                  }
                  this.e22ddf40(_loc8_,_loc22_,_loc9_);
                  if(_loc10_)
                  {
                     this.device.setDepthTest(false,"less");
                  }
                  _loc5_--;
               }
               this.device.setTextureAt(0,null);
               this.device.setTextureAt(1,null);
               this.device.setTextureAt(2,null);
               this.device.setTextureAt(3,null);
               this.device.setTextureAt(4,null);
               this.device.setTextureAt(5,null);
               this.device.setTextureAt(6,null);
               this.device.setTextureAt(7,null);
               this.device.setVertexBufferAt(1,null);
               this.device.setVertexBufferAt(2,null);
               this.device.setVertexBufferAt(3,null);
               this.device.setVertexBufferAt(4,null);
               this.device.setVertexBufferAt(5,null);
               this.device.setVertexBufferAt(6,null);
               this.device.setVertexBufferAt(7,null);
               this.opaqueMaterials.length = 0;
               this.a676f807.length = 0;
               this.f2a92204.length = 0;
               this.b466b225.length = 0;
               this.c216879a.length = 0;
               this.c47e9100.length = 0;
               this.e415b7fa = 0;
               this.d3d9d15d.length = 0;
               this.c4811692.length = 0;
               this.c542379a.length = 0;
               this.d6d6fca5.length = 0;
               this.b4af31b6.length = 0;
               this.b7557322.length = 0;
               this.b6eb06bb = 0;
               this.a3d89f86.length = 0;
               this.a71995de.length = 0;
               this.b5aa5e30 = 0;
               this.e4c997a.length = 0;
               this.d5a71216.length = 0;
               this.e66ec85a = 0;
               this.b6034c90.length = 0;
               this.c657bc62.length = 0;
               this.f28c8f3d = 0;
               this.depthObjects.length = 0;
               this.depthCount = 0;
               this.casterObjects.length = 0;
               this.casterCount = 0;
               this.omnies.length = 0;
               this.omniesCount = 0;
               this.spots.length = 0;
               this.spotsCount = 0;
               this.tubes.length = 0;
               this.tubesCount = 0;
               for each(_loc1_ in this.shadowAtlases)
               {
                  if(_loc1_.shadowsCount > 0)
                  {
                     _loc1_.clear();
                  }
               }
               this.receiversVertexBuffers = null;
               this.receiversIndexBuffers = null;
               this.deferredDestroy();
               this.clearOccluders();
               this.view.onRender(this);
               if(this.onRender != null)
               {
                  this.onRender();
               }
               this.view.present();
            }
            else
            {
               this.view.clearArea();
               if(this.onRender != null)
               {
                  this.onRender();
               }
               this.view.present();
            }
            this.device = null;
         }
      }
      
      private function e22ddf40(param1:Face, param2:Object3D, param3:Boolean) : void
      {
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:Face = null;
         var _loc12_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc9_:Vertex = null;
         var _loc11_:Object3D = null;
         var _loc10_:Material = param1.material;
         while(param1 != null)
         {
            _loc4_ = param1.processNext;
            param1.processNext = null;
            _loc12_ = param1.wrapper;
            _loc5_ = _loc12_.vertex;
            _loc12_ = _loc12_.next;
            _loc7_ = _loc12_.vertex;
            if(param3)
            {
               _loc11_ = this.b6034c90[int(param1.distance)];
               _loc12_ = _loc12_.next;
               while(_loc12_ != null)
               {
                  if(_loc8_ == 18)
                  {
                     if(_loc10_ != null)
                     {
                        this.device.setProgramConstantsFromVector("vertex",16,constants,_loc8_ * 6,false);
                        _loc10_.drawTransparent(this,d169679c,f6cb575,0,_loc8_,param2,true);
                     }
                     _loc8_ = 0;
                     _loc6_ = 0;
                  }
                  _loc9_ = _loc12_.vertex;
                  constants[_loc6_] = _loc5_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.md;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.v;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.mh;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.ml;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.md;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.v;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.mh;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.ml;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.md;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.v;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.mh;
                  _loc6_++;
                  constants[_loc6_] = -_loc11_.ml;
                  _loc6_++;
                  _loc8_++;
                  _loc7_ = _loc9_;
                  _loc12_ = _loc12_.next;
               }
            }
            else
            {
               _loc12_ = _loc12_.next;
               while(_loc12_ != null)
               {
                  if(_loc8_ == 18)
                  {
                     if(_loc10_ != null)
                     {
                        this.device.setProgramConstantsFromVector("vertex",16,constants,_loc8_ * 6,false);
                        _loc10_.drawTransparent(this,d169679c,f6cb575,0,_loc8_,param2,true);
                     }
                     _loc8_ = 0;
                     _loc6_ = 0;
                  }
                  _loc9_ = _loc12_.vertex;
                  constants[_loc6_] = _loc5_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.normalX;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.v;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.normalY;
                  _loc6_++;
                  constants[_loc6_] = _loc5_.normalZ;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.normalX;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.v;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.normalY;
                  _loc6_++;
                  constants[_loc6_] = _loc7_.normalZ;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraX;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraY;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.cameraZ;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.normalX;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.u;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.v;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.normalY;
                  _loc6_++;
                  constants[_loc6_] = _loc9_.normalZ;
                  _loc6_++;
                  _loc8_++;
                  _loc7_ = _loc9_;
                  _loc12_ = _loc12_.next;
               }
            }
            param1 = _loc4_;
         }
         if(_loc8_ > 0 && _loc10_ != null)
         {
            this.device.setProgramConstantsFromVector("vertex",16,constants,_loc8_ * 6,false);
            _loc10_.drawTransparent(this,d169679c,f6cb575,0,_loc8_,param2,true);
         }
      }
      
      public function lookAt(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = param1 - this.x;
         var _loc4_:Number = param2 - this.y;
         var _loc6_:Number = param3 - this.z;
         rotationX = Math.atan2(_loc6_,Math.sqrt(_loc5_ * _loc5_ + _loc4_ * _loc4_)) - 3.141592653589793 / 2;
         rotationY = 0;
         rotationZ = -Math.atan2(_loc5_,_loc4_);
      }
      
      public function projectGlobal(param1:Vector3D) : Vector3D
      {
         if(this.view == null)
         {
            throw new Error("It is necessary to have view set.");
         }
         this.viewSizeX = this.view._width * 0.5;
         this.viewSizeY = this.view._height * 0.5;
         this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
         this.composeCameraMatrix();
         var _loc2_:Object3D = this;
         while(_loc2_._parent != null)
         {
            _loc2_ = _loc2_._parent;
            tA.composeMatrixFromSource(_loc2_);
            appendMatrix(tA);
         }
         invertMatrix();
         var _loc3_:Vector3D = new Vector3D();
         _loc3_.x = ma * param1.x + mb * param1.y + mc * param1.z + md;
         _loc3_.y = me * param1.x + mf * param1.y + mg * param1.z + mh;
         _loc3_.z = mi * param1.x + mj * param1.y + mk * param1.z + ml;
         _loc3_.x = _loc3_.x * this.viewSizeX / _loc3_.z + this.viewSizeX;
         _loc3_.y = _loc3_.y * this.viewSizeY / _loc3_.z + this.viewSizeY;
         return _loc3_;
      }
      
      public function calculateRay(param1:Vector3D, param2:Vector3D, param3:Number, param4:Number) : void
      {
         if(this.view == null)
         {
            throw new Error("It is necessary to have view set.");
         }
         this.viewSizeX = this.view._width * 0.5;
         this.viewSizeY = this.view._height * 0.5;
         this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
         param3 -= this.viewSizeX;
         param4 -= this.viewSizeY;
         var _loc6_:Number = param3 * this.focalLength / this.viewSizeX;
         var _loc5_:Number = param4 * this.focalLength / this.viewSizeY;
         var _loc7_:Number = this.focalLength;
         var _loc10_:Number = _loc6_ * this.nearClipping / this.focalLength;
         var _loc11_:Number = _loc5_ * this.nearClipping / this.focalLength;
         var _loc12_:Number = this.nearClipping;
         this.composeCameraMatrix();
         var _loc9_:Object3D = this;
         while(_loc9_._parent != null)
         {
            _loc9_ = _loc9_._parent;
            tA.composeMatrixFromSource(_loc9_);
            appendMatrix(tA);
         }
         param1.x = ma * _loc10_ + mb * _loc11_ + mc * _loc12_ + md;
         param1.y = me * _loc10_ + mf * _loc11_ + mg * _loc12_ + mh;
         param1.z = mi * _loc10_ + mj * _loc11_ + mk * _loc12_ + ml;
         param2.x = ma * _loc6_ + mb * _loc5_ + mc * _loc7_;
         param2.y = me * _loc6_ + mf * _loc5_ + mg * _loc7_;
         param2.z = mi * _loc6_ + mj * _loc5_ + mk * _loc7_;
         var _loc8_:Number = 1 / Math.sqrt(param2.x * param2.x + param2.y * param2.y + param2.z * param2.z);
         param2.x *= _loc8_;
         param2.y *= _loc8_;
         param2.z *= _loc8_;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Camera3D = new Camera3D();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:Camera3D = param1 as Camera3D;
         this.fov = _loc2_.fov;
         this.nearClipping = _loc2_.nearClipping;
         this.farClipping = _loc2_.farClipping;
         this.debug = _loc2_.debug;
         this.fogNear = _loc2_.fogNear;
         this.fogFar = _loc2_.fogFar;
         this.fogAlpha = _loc2_.fogAlpha;
         this.fogColor = _loc2_.fogColor;
         this.softTransparency = _loc2_.softTransparency;
         this.depthBufferScale = _loc2_.depthBufferScale;
         this.ssao = _loc2_.ssao;
         this.ssaoRadius = _loc2_.ssaoRadius;
         this.ssaoRange = _loc2_.ssaoRange;
         this.ssaoColor = _loc2_.ssaoColor;
         this.ssaoAlpha = _loc2_.ssaoAlpha;
         this.directionalLight = _loc2_.directionalLight;
         this.shadowMap = _loc2_.shadowMap;
         this.ambientColor = _loc2_.ambientColor;
         this.deferredLighting = _loc2_.deferredLighting;
         this.fogStrength = _loc2_.fogStrength;
         this.softTransparencyStrength = _loc2_.softTransparencyStrength;
         this.ssaoStrength = _loc2_.ssaoStrength;
         this.directionalLightStrength = _loc2_.directionalLightStrength;
         this.shadowMapStrength = _loc2_.shadowMapStrength;
         this.shadowsStrength = _loc2_.shadowsStrength;
         this.shadowsDistanceMultiplier = _loc2_.shadowsDistanceMultiplier;
         this.deferredLightingStrength = _loc2_.deferredLightingStrength;
         for(var _loc3_ in _loc2_.shadows)
         {
            this.shadows[_loc3_] = true;
         }
      }
      
      alternativa3d function addOpaque(param1:Material, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D) : void
      {
         this.opaqueMaterials[this.e415b7fa] = param1;
         this.a676f807[this.e415b7fa] = param2;
         this.f2a92204[this.e415b7fa] = param3;
         this.b466b225[this.e415b7fa] = param4;
         this.c216879a[this.e415b7fa] = param5;
         this.c47e9100[this.e415b7fa] = param6;
         this.e415b7fa++;
      }
      
      alternativa3d function addSky(param1:Material, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D) : void
      {
         this.d3d9d15d[this.b6eb06bb] = param1;
         this.c4811692[this.b6eb06bb] = param2;
         this.c542379a[this.b6eb06bb] = param3;
         this.d6d6fca5[this.b6eb06bb] = param4;
         this.b4af31b6[this.b6eb06bb] = param5;
         this.b7557322[this.b6eb06bb] = param6;
         this.b6eb06bb++;
      }
      
      alternativa3d function addTransparent(param1:Face, param2:Object3D) : void
      {
         this.a3d89f86[this.b5aa5e30] = param1;
         this.a71995de[this.b5aa5e30] = param2;
         this.b5aa5e30++;
      }
      
      alternativa3d function addTransparentOpaque(param1:Face, param2:Object3D) : void
      {
         this.e4c997a[this.e66ec85a] = param1;
         this.d5a71216[this.e66ec85a] = param2;
         this.e66ec85a++;
      }
      
      alternativa3d function addDecal(param1:Decal) : void
      {
         this.c657bc62[this.f28c8f3d] = param1;
         this.f28c8f3d++;
      }
      
      alternativa3d function composeCameraMatrix() : void
      {
         var _loc8_:Number = this.viewSizeX / this.focalLength;
         var _loc5_:Number = this.viewSizeY / this.focalLength;
         var _loc6_:Number = Math.cos(rotationX);
         var _loc7_:Number = Math.sin(rotationX);
         var _loc16_:Number = Math.cos(rotationY);
         var _loc9_:Number = Math.sin(rotationY);
         var _loc4_:Number = Math.cos(rotationZ);
         var _loc13_:Number = Math.sin(rotationZ);
         var _loc2_:Number = _loc4_ * _loc9_;
         var _loc3_:Number = _loc13_ * _loc9_;
         var _loc12_:Number = _loc16_ * scaleX;
         var _loc14_:Number = _loc7_ * scaleY;
         var _loc15_:Number = _loc6_ * scaleY;
         var _loc1_:Number = _loc6_ * scaleZ;
         var _loc11_:Number = _loc7_ * scaleZ;
         ma = _loc4_ * _loc12_ * _loc8_;
         mb = (_loc2_ * _loc14_ - _loc13_ * _loc15_) * _loc5_;
         mc = _loc2_ * _loc1_ + _loc13_ * _loc11_;
         md = x;
         me = _loc13_ * _loc12_ * _loc8_;
         mf = (_loc3_ * _loc14_ + _loc4_ * _loc15_) * _loc5_;
         mg = _loc3_ * _loc1_ - _loc4_ * _loc11_;
         mh = y;
         mi = -_loc9_ * scaleX * _loc8_;
         mj = _loc16_ * _loc14_ * _loc5_;
         mk = _loc16_ * _loc1_;
         ml = z;
         var _loc10_:Number = this.view.offsetX / this.viewSizeX;
         var _loc17_:Number = this.view.offsetY / this.viewSizeY;
         mc -= ma * _loc10_ + mb * _loc17_;
         mg -= me * _loc10_ + mf * _loc17_;
         mk -= mi * _loc10_ + mj * _loc17_;
      }
      
      public function addToDebug(param1:int, param2:*) : void
      {
         if(!this.a479d1b9[param1])
         {
            this.a479d1b9[param1] = new Dictionary();
         }
         this.a479d1b9[param1][param2] = true;
      }
      
      public function removeFromDebug(param1:int, param2:*) : void
      {
         var _loc3_:* = undefined;
         if(this.a479d1b9[param1])
         {
            delete this.a479d1b9[param1][param2];
            var _loc5_:int = 0;
            var _loc4_:* = this.a479d1b9[param1];
            for(_loc3_ in _loc4_)
            {
            }
            if(!_loc3_)
            {
               delete this.a479d1b9[param1];
            }
         }
      }
      
      alternativa3d function checkInDebug(param1:Object3D) : int
      {
         var _loc4_:Class = null;
         var _loc3_:int = 0;
         var _loc2_:int = 1;
         while(_loc2_ <= 512)
         {
            if(this.a479d1b9[_loc2_])
            {
               if(this.a479d1b9[_loc2_][Object3D] || this.a479d1b9[_loc2_][param1])
               {
                  _loc3_ |= _loc2_;
               }
               else
               {
                  _loc4_ = getDefinitionByName(getQualifiedClassName(param1)) as Class;
                  while(_loc4_ != Object3D)
                  {
                     if(this.a479d1b9[_loc2_][_loc4_])
                     {
                        _loc3_ |= _loc2_;
                        break;
                     }
                     _loc4_ = Class(getDefinitionByName(getQualifiedSuperclassName(_loc4_)));
                  }
               }
            }
            _loc2_ <<= 1;
         }
         return _loc3_;
      }
      
      public function startTimer() : void
      {
         this.timer = getTimer();
      }
      
      public function stopTimer() : void
      {
         this.a5885c1a += getTimer() - this.timer;
         this.f449be2d++;
      }
      
      public function get diagram() : DisplayObject
      {
         return this.c5f2c6c;
      }
      
      public function get diagramAlign() : String
      {
         return this.c5fe83b4;
      }
      
      public function set diagramAlign(param1:String) : void
      {
         this.c5fe83b4 = param1;
         this.b1faf6c7();
      }
      
      public function get diagramHorizontalMargin() : Number
      {
         return this.cd6ec46;
      }
      
      public function set diagramHorizontalMargin(param1:Number) : void
      {
         this.cd6ec46 = param1;
         this.b1faf6c7();
      }
      
      public function get diagramVerticalMargin() : Number
      {
         return this.c1026366;
      }
      
      public function set diagramVerticalMargin(param1:Number) : void
      {
         this.c1026366 = param1;
         this.b1faf6c7();
      }
      
      private function b1678191() : Sprite
      {
         var diagram:Sprite = new Sprite();
         diagram.mouseEnabled = false;
         diagram.mouseChildren = false;
         diagram.addEventListener("addedToStage",function():void
         {
            while(diagram.numChildren > 0)
            {
               diagram.removeChildAt(0);
            }
            b32d3385 = new TextField();
            b32d3385.defaultTextFormat = new TextFormat("Tahoma",10,13421772);
            b32d3385.autoSize = "left";
            b32d3385.text = "FPS:";
            b32d3385.selectable = false;
            b32d3385.x = -3;
            b32d3385.y = -5;
            diagram.addChild(b32d3385);
            b32d3385 = new TextField();
            b32d3385.defaultTextFormat = new TextFormat("Tahoma",10,13421772);
            b32d3385.autoSize = "right";
            b32d3385.text = diagram.stage.frameRate.toFixed(2);
            b32d3385.selectable = false;
            b32d3385.x = -3;
            b32d3385.y = -5;
            b32d3385.width = 65;
            diagram.addChild(b32d3385);
            d52dd781 = new TextField();
            d52dd781.defaultTextFormat = new TextFormat("Tahoma",10,26367);
            d52dd781.autoSize = "left";
            d52dd781.text = "MS:";
            d52dd781.selectable = false;
            d52dd781.x = -3;
            d52dd781.y = 4;
            diagram.addChild(d52dd781);
            d52dd781 = new TextField();
            d52dd781.defaultTextFormat = new TextFormat("Tahoma",10,26367);
            d52dd781.autoSize = "right";
            d52dd781.text = "";
            d52dd781.selectable = false;
            d52dd781.x = -3;
            d52dd781.y = 4;
            d52dd781.width = 65;
            diagram.addChild(d52dd781);
            ca386e0 = new TextField();
            ca386e0.defaultTextFormat = new TextFormat("Tahoma",10,13421568);
            ca386e0.autoSize = "left";
            ca386e0.text = "MEM:";
            ca386e0.selectable = false;
            ca386e0.x = -3;
            ca386e0.y = 13;
            diagram.addChild(ca386e0);
            ca386e0 = new TextField();
            ca386e0.defaultTextFormat = new TextFormat("Tahoma",10,13421568);
            ca386e0.autoSize = "right";
            ca386e0.text = bytesToString(System.totalMemory);
            ca386e0.selectable = false;
            ca386e0.x = -3;
            ca386e0.y = 13;
            ca386e0.width = 65;
            diagram.addChild(ca386e0);
            c10af4ab = new TextField();
            c10af4ab.defaultTextFormat = new TextFormat("Tahoma",10,52224);
            c10af4ab.autoSize = "left";
            c10af4ab.text = "DRW:";
            c10af4ab.selectable = false;
            c10af4ab.x = -3;
            c10af4ab.y = 22;
            diagram.addChild(c10af4ab);
            c10af4ab = new TextField();
            c10af4ab.defaultTextFormat = new TextFormat("Tahoma",10,52224);
            c10af4ab.autoSize = "right";
            c10af4ab.text = "0";
            c10af4ab.selectable = false;
            c10af4ab.x = -3;
            c10af4ab.y = 22;
            c10af4ab.width = 52;
            diagram.addChild(c10af4ab);
            b47269e7 = new TextField();
            b47269e7.defaultTextFormat = new TextFormat("Tahoma",10,16711731);
            b47269e7.autoSize = "left";
            b47269e7.text = "SHD:";
            b47269e7.selectable = false;
            b47269e7.x = -3;
            b47269e7.y = 31;
            diagram.addChild(b47269e7);
            b47269e7 = new TextField();
            b47269e7.defaultTextFormat = new TextFormat("Tahoma",10,16711731);
            b47269e7.autoSize = "right";
            b47269e7.text = "0";
            b47269e7.selectable = false;
            b47269e7.x = -3;
            b47269e7.y = 31;
            b47269e7.width = 52;
            diagram.addChild(b47269e7);
            c6f6fbc0 = new TextField();
            c6f6fbc0.defaultTextFormat = new TextFormat("Tahoma",10,16737792);
            c6f6fbc0.autoSize = "left";
            c6f6fbc0.text = "TRI:";
            c6f6fbc0.selectable = false;
            c6f6fbc0.x = -3;
            c6f6fbc0.y = 40;
            diagram.addChild(c6f6fbc0);
            c6f6fbc0 = new TextField();
            c6f6fbc0.defaultTextFormat = new TextFormat("Tahoma",10,16737792);
            c6f6fbc0.autoSize = "right";
            c6f6fbc0.text = "0";
            c6f6fbc0.selectable = false;
            c6f6fbc0.x = -3;
            c6f6fbc0.y = 40;
            c6f6fbc0.width = 52;
            diagram.addChild(c6f6fbc0);
            c52b709e = new Bitmap(new BitmapData(60,40,true,553648127));
            rect = new Rectangle(0,0,1,40);
            c52b709e.x = 0;
            c52b709e.y = 54;
            diagram.addChild(c52b709e);
            a75d8fef = getTimer();
            d3fa2e03 = a75d8fef;
            f33308c8 = 0;
            b5bbe1f2 = 0;
            e383ccde = 0;
            a5885c1a = 0;
            f449be2d = 0;
            diagram.stage.addEventListener("enterFrame",b4bd7663,false,-1000);
            diagram.stage.addEventListener("resize",b1faf6c7,false,-1000);
            b1faf6c7();
         });
         diagram.addEventListener("removedFromStage",function():void
         {
            while(diagram.numChildren > 0)
            {
               diagram.removeChildAt(0);
            }
            b32d3385 = null;
            ca386e0 = null;
            c10af4ab = null;
            b47269e7 = null;
            c6f6fbc0 = null;
            d52dd781 = null;
            c52b709e.bitmapData.dispose();
            c52b709e = null;
            rect = null;
            diagram.stage.removeEventListener("enterFrame",b4bd7663);
            diagram.stage.removeEventListener("resize",b1faf6c7);
         });
         return diagram;
      }
      
      private function b1faf6c7(param1:Event = null) : void
      {
         var _loc2_:Point = null;
         if(this.c5f2c6c.stage != null)
         {
            _loc2_ = this.c5f2c6c.parent.globalToLocal(new Point());
            if(this.c5fe83b4 == "TL" || this.c5fe83b4 == "L" || this.c5fe83b4 == "BL")
            {
               this.c5f2c6c.x = Math.round(_loc2_.x + this.cd6ec46);
            }
            if(this.c5fe83b4 == "T" || this.c5fe83b4 == "B")
            {
               this.c5f2c6c.x = Math.round(_loc2_.x + this.c5f2c6c.stage.stageWidth / 2 - this.c52b709e.width / 2);
            }
            if(this.c5fe83b4 == "TR" || this.c5fe83b4 == "R" || this.c5fe83b4 == "BR")
            {
               this.c5f2c6c.x = Math.round(_loc2_.x + this.c5f2c6c.stage.stageWidth - this.cd6ec46 - this.c52b709e.width);
            }
            if(this.c5fe83b4 == "TL" || this.c5fe83b4 == "T" || this.c5fe83b4 == "TR")
            {
               this.c5f2c6c.y = Math.round(_loc2_.y + this.c1026366);
            }
            if(this.c5fe83b4 == "L" || this.c5fe83b4 == "R")
            {
               this.c5f2c6c.y = Math.round(_loc2_.y + this.c5f2c6c.stage.stageHeight / 2 - (this.c52b709e.y + this.c52b709e.height) / 2);
            }
            if(this.c5fe83b4 == "BL" || this.c5fe83b4 == "B" || this.c5fe83b4 == "BR")
            {
               this.c5f2c6c.y = Math.round(_loc2_.y + this.c5f2c6c.stage.stageHeight - this.c1026366 - this.c52b709e.y - this.c52b709e.height);
            }
         }
      }
      
      private function b4bd7663(param1:Event) : void
      {
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         var _loc4_:String = null;
         var _loc6_:int = getTimer();
         var _loc5_:int = this.c5f2c6c.stage.frameRate;
         if(++this.f33308c8 == this.fpsUpdatePeriod)
         {
            _loc7_ = 1000 * this.fpsUpdatePeriod / (_loc6_ - this.a75d8fef);
            if(_loc7_ > _loc5_)
            {
               _loc7_ = _loc5_;
            }
            _loc2_ = _loc7_ * 100 % 100;
            _loc4_ = _loc2_ >= 10 ? String(_loc2_) : (_loc2_ > 0 ? "0" + String(_loc2_) : "00");
            this.b32d3385.text = int(_loc7_) + "." + _loc4_;
            this.a75d8fef = _loc6_;
            this.f33308c8 = 0;
         }
         _loc7_ = 1000 / (_loc6_ - this.d3fa2e03);
         if(_loc7_ > _loc5_)
         {
            _loc7_ = _loc5_;
         }
         this.c52b709e.bitmapData.scroll(1,0);
         this.c52b709e.bitmapData.fillRect(this.rect,553648127);
         this.c52b709e.bitmapData.setPixel32(0,40 * (1 - _loc7_ / _loc5_),4291611852);
         this.d3fa2e03 = _loc6_;
         if(++this.e383ccde == this.timerUpdatePeriod)
         {
            if(this.f449be2d > 0)
            {
               _loc7_ = this.a5885c1a / this.f449be2d;
               _loc2_ = _loc7_ * 100 % 100;
               _loc4_ = _loc2_ >= 10 ? String(_loc2_) : (_loc2_ > 0 ? "0" + String(_loc2_) : "00");
               this.d52dd781.text = int(_loc7_) + "." + _loc4_;
            }
            else
            {
               this.d52dd781.text = "";
            }
            this.e383ccde = 0;
            this.a5885c1a = 0;
            this.f449be2d = 0;
         }
         var _loc3_:int = int(System.totalMemory);
         _loc7_ = _loc3_ / 1048576;
         _loc2_ = _loc7_ * 100 % 100;
         _loc4_ = _loc2_ >= 10 ? String(_loc2_) : (_loc2_ > 0 ? "0" + String(_loc2_) : "00");
         this.ca386e0.text = int(_loc7_) + "." + _loc4_;
         if(_loc3_ > this.b5bbe1f2)
         {
            this.b5bbe1f2 = _loc3_;
         }
         this.c52b709e.bitmapData.setPixel32(0,40 * (1 - _loc3_ / this.b5bbe1f2),4291611648);
         this.c6f6fbc0.text = String(this.numTriangles);
      }
      
      private function bytesToString(param1:int) : String
      {
         if(param1 < 1024)
         {
            return param1 + "b";
         }
         if(param1 < 10240)
         {
            return (param1 / 1024).toFixed(2) + "kb";
         }
         if(param1 < 102400)
         {
            return (param1 / 1024).toFixed(1) + "kb";
         }
         if(param1 < 1048576)
         {
            return (param1 >> 10) + "kb";
         }
         if(param1 < 10485760)
         {
            return (param1 / 1048576).toFixed(2);
         }
         if(param1 < 104857600)
         {
            return (param1 / 1048576).toFixed(1);
         }
         return String(param1 >> 20);
      }
      
      alternativa3d function deferredDestroy() : void
      {
         var _loc2_:Wrapper = null;
         var _loc3_:Wrapper = null;
         var _loc1_:Face = this.b3f4a433.next;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.wrapper;
            if(_loc2_ != null)
            {
               _loc3_ = null;
               while(_loc2_ != null)
               {
                  _loc2_.vertex = null;
                  _loc3_ = _loc2_;
                  _loc2_ = _loc2_.next;
               }
               this.lastWrapper.next = _loc1_.wrapper;
               this.lastWrapper = _loc3_;
            }
            _loc1_.material = null;
            _loc1_.wrapper = null;
            _loc1_ = _loc1_.next;
         }
         if(this.b3f4a433 != this.lastFace)
         {
            this.lastFace.next = Face.collector;
            Face.collector = this.b3f4a433.next;
            this.b3f4a433.next = null;
            this.lastFace = this.b3f4a433;
         }
         if(this.f648ee3c != this.lastWrapper)
         {
            this.lastWrapper.next = Wrapper.collector;
            Wrapper.collector = this.f648ee3c.next;
            this.f648ee3c.next = null;
            this.lastWrapper = this.f648ee3c;
         }
         if(this.e175bba3 != this.lastVertex)
         {
            this.lastVertex.next = Vertex.collector;
            Vertex.collector = this.e175bba3.next;
            this.e175bba3.next = null;
            this.lastVertex = this.e175bba3;
         }
      }
      
      alternativa3d function clearOccluders() : void
      {
         var _loc3_:int = 0;
         var _loc2_:Vertex = null;
         var _loc1_:Vertex = null;
         while(_loc3_ < this.numOccluders)
         {
            _loc2_ = this.occluders[_loc3_];
            _loc1_ = _loc2_;
            while(_loc1_.next != null)
            {
               _loc1_ = _loc1_.next;
            }
            _loc1_.next = Vertex.collector;
            Vertex.collector = _loc2_;
            this.occluders[_loc3_] = null;
            _loc3_++;
         }
         this.numOccluders = 0;
      }
      
      alternativa3d function sortByAverageZ(param1:Face) : Face
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Wrapper = null;
         var _loc4_:Face = param1;
         var _loc8_:Face = param1.processNext;
         while(_loc8_ != null && _loc8_.processNext != null)
         {
            param1 = param1.processNext;
            _loc8_ = _loc8_.processNext.processNext;
         }
         _loc8_ = param1.processNext;
         param1.processNext = null;
         if(_loc4_.processNext != null)
         {
            _loc4_ = this.sortByAverageZ(_loc4_);
         }
         else
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = _loc4_.wrapper;
            while(_loc7_ != null)
            {
               _loc5_++;
               _loc6_ += _loc7_.vertex.cameraZ;
               _loc7_ = _loc7_.next;
            }
            _loc4_.distance = _loc6_ / _loc5_;
         }
         if(_loc8_.processNext != null)
         {
            _loc8_ = this.sortByAverageZ(_loc8_);
         }
         else
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = _loc8_.wrapper;
            while(_loc7_ != null)
            {
               _loc5_++;
               _loc6_ += _loc7_.vertex.cameraZ;
               _loc7_ = _loc7_.next;
            }
            _loc8_.distance = _loc6_ / _loc5_;
         }
         var _loc2_:Boolean = _loc4_.distance > _loc8_.distance;
         if(_loc2_)
         {
            param1 = _loc4_;
            _loc4_ = _loc4_.processNext;
         }
         else
         {
            param1 = _loc8_;
            _loc8_ = _loc8_.processNext;
         }
         var _loc3_:Face = param1;
         while(_loc4_ != null)
         {
            if(_loc8_ == null)
            {
               _loc3_.processNext = _loc4_;
               return param1;
            }
            if(_loc2_)
            {
               if(_loc4_.distance > _loc8_.distance)
               {
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.processNext;
               }
               else
               {
                  _loc3_.processNext = _loc8_;
                  _loc3_ = _loc8_;
                  _loc8_ = _loc8_.processNext;
                  _loc2_ = false;
               }
            }
            else if(_loc8_.distance > _loc4_.distance)
            {
               _loc3_ = _loc8_;
               _loc8_ = _loc8_.processNext;
            }
            else
            {
               _loc3_.processNext = _loc4_;
               _loc3_ = _loc4_;
               _loc4_ = _loc4_.processNext;
               _loc2_ = true;
            }
         }
         _loc3_.processNext = _loc8_;
         return param1;
      }
      
      alternativa3d function sortByDynamicBSP(param1:Face, param2:Number, param3:Face = null) : Face
      {
         var _loc44_:Wrapper = null;
         var _loc30_:Vertex = null;
         var _loc31_:Vertex = null;
         var _loc32_:Vertex = null;
         var _loc42_:Vertex = null;
         var _loc5_:Face = null;
         var _loc10_:Face = null;
         var _loc18_:Face = null;
         var _loc45_:Face = null;
         var _loc23_:Face = null;
         var _loc11_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc49_:Boolean = false;
         var _loc40_:Boolean = false;
         var _loc37_:Number = NaN;
         var _loc28_:Face = null;
         var _loc36_:Face = null;
         var _loc46_:Wrapper = null;
         var _loc9_:Wrapper = null;
         var _loc47_:Wrapper = null;
         var _loc8_:Boolean = false;
         var _loc41_:Number = NaN;
         var _loc38_:Face = param1;
         param1 = _loc38_.processNext;
         _loc44_ = _loc38_.wrapper;
         _loc30_ = _loc44_.vertex;
         _loc44_ = _loc44_.next;
         _loc31_ = _loc44_.vertex;
         var _loc25_:Number = _loc30_.cameraX;
         var _loc27_:Number = _loc30_.cameraY;
         var _loc16_:Number = _loc30_.cameraZ;
         var _loc12_:Number = _loc31_.cameraX - _loc25_;
         var _loc43_:Number = _loc31_.cameraY - _loc27_;
         var _loc17_:Number = _loc31_.cameraZ - _loc16_;
         var _loc4_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 1;
         var _loc14_:Number = _loc16_;
         var _loc35_:Number = 0;
         _loc44_ = _loc44_.next;
         while(_loc44_ != null)
         {
            _loc42_ = _loc44_.vertex;
            _loc11_ = _loc42_.cameraX - _loc25_;
            _loc22_ = _loc42_.cameraY - _loc27_;
            _loc15_ = _loc42_.cameraZ - _loc16_;
            _loc21_ = _loc15_ * _loc43_ - _loc22_ * _loc17_;
            _loc13_ = _loc11_ * _loc17_ - _loc15_ * _loc12_;
            _loc20_ = _loc22_ * _loc12_ - _loc11_ * _loc43_;
            _loc19_ = _loc21_ * _loc21_ + _loc13_ * _loc13_ + _loc20_ * _loc20_;
            if(_loc19_ > param2)
            {
               _loc19_ = 1 / Math.sqrt(_loc19_);
               _loc4_ = _loc21_ * _loc19_;
               _loc6_ = _loc13_ * _loc19_;
               _loc7_ = _loc20_ * _loc19_;
               _loc14_ = _loc25_ * _loc4_ + _loc27_ * _loc6_ + _loc16_ * _loc7_;
               break;
            }
            if(_loc19_ > _loc35_)
            {
               _loc19_ = 1 / Math.sqrt(_loc19_);
               _loc4_ = _loc21_ * _loc19_;
               _loc6_ = _loc13_ * _loc19_;
               _loc7_ = _loc20_ * _loc19_;
               _loc14_ = _loc25_ * _loc4_ + _loc27_ * _loc6_ + _loc16_ * _loc7_;
               _loc35_ = _loc19_;
            }
            _loc44_ = _loc44_.next;
         }
         var _loc48_:Number = _loc14_ - param2;
         var _loc34_:Number = _loc14_ + param2;
         var _loc33_:Face = _loc38_;
         var _loc39_:Face = param1;
         while(_loc39_ != null)
         {
            _loc23_ = _loc39_.processNext;
            _loc44_ = _loc39_.wrapper;
            _loc30_ = _loc44_.vertex;
            _loc44_ = _loc44_.next;
            _loc31_ = _loc44_.vertex;
            _loc44_ = _loc44_.next;
            _loc32_ = _loc44_.vertex;
            _loc44_ = _loc44_.next;
            _loc26_ = _loc30_.cameraX * _loc4_ + _loc30_.cameraY * _loc6_ + _loc30_.cameraZ * _loc7_;
            _loc24_ = _loc31_.cameraX * _loc4_ + _loc31_.cameraY * _loc6_ + _loc31_.cameraZ * _loc7_;
            _loc29_ = _loc32_.cameraX * _loc4_ + _loc32_.cameraY * _loc6_ + _loc32_.cameraZ * _loc7_;
            _loc49_ = _loc26_ < _loc48_ || _loc24_ < _loc48_ || _loc29_ < _loc48_;
            _loc40_ = _loc26_ > _loc34_ || _loc24_ > _loc34_ || _loc29_ > _loc34_;
            while(_loc44_ != null)
            {
               _loc42_ = _loc44_.vertex;
               _loc37_ = _loc42_.cameraX * _loc4_ + _loc42_.cameraY * _loc6_ + _loc42_.cameraZ * _loc7_;
               if(_loc37_ < _loc48_)
               {
                  _loc49_ = true;
               }
               else if(_loc37_ > _loc34_)
               {
                  _loc40_ = true;
               }
               _loc42_.offset = _loc37_;
               _loc44_ = _loc44_.next;
            }
            if(!_loc49_)
            {
               if(!_loc40_)
               {
                  _loc33_.processNext = _loc39_;
                  _loc33_ = _loc39_;
               }
               else
               {
                  if(_loc18_ != null)
                  {
                     _loc45_.processNext = _loc39_;
                  }
                  else
                  {
                     _loc18_ = _loc39_;
                  }
                  _loc45_ = _loc39_;
               }
            }
            else if(!_loc40_)
            {
               if(_loc5_ != null)
               {
                  _loc10_.processNext = _loc39_;
               }
               else
               {
                  _loc5_ = _loc39_;
               }
               _loc10_ = _loc39_;
            }
            else
            {
               _loc30_.offset = _loc26_;
               _loc31_.offset = _loc24_;
               _loc32_.offset = _loc29_;
               _loc28_ = _loc39_.create();
               _loc28_.material = _loc39_.material;
               this.lastFace.next = _loc28_;
               this.lastFace = _loc28_;
               _loc36_ = _loc39_.create();
               _loc36_.material = _loc39_.material;
               this.lastFace.next = _loc36_;
               this.lastFace = _loc36_;
               _loc46_ = null;
               _loc9_ = null;
               _loc44_ = _loc39_.wrapper.next.next;
               while(_loc44_.next != null)
               {
                  _loc44_ = _loc44_.next;
               }
               _loc30_ = _loc44_.vertex;
               _loc26_ = _loc30_.offset;
               _loc8_ = _loc39_.material != null && _loc39_.material.useVerticesNormals;
               _loc44_ = _loc39_.wrapper;
               while(_loc44_ != null)
               {
                  _loc31_ = _loc44_.vertex;
                  _loc24_ = _loc31_.offset;
                  if(_loc26_ < _loc48_ && _loc24_ > _loc34_ || _loc26_ > _loc34_ && _loc24_ < _loc48_)
                  {
                     _loc41_ = (_loc14_ - _loc26_) / (_loc24_ - _loc26_);
                     _loc42_ = _loc31_.create();
                     this.lastVertex.next = _loc42_;
                     this.lastVertex = _loc42_;
                     _loc42_.cameraX = _loc30_.cameraX + (_loc31_.cameraX - _loc30_.cameraX) * _loc41_;
                     _loc42_.cameraY = _loc30_.cameraY + (_loc31_.cameraY - _loc30_.cameraY) * _loc41_;
                     _loc42_.cameraZ = _loc30_.cameraZ + (_loc31_.cameraZ - _loc30_.cameraZ) * _loc41_;
                     _loc42_.u = _loc30_.u + (_loc31_.u - _loc30_.u) * _loc41_;
                     _loc42_.v = _loc30_.v + (_loc31_.v - _loc30_.v) * _loc41_;
                     if(_loc8_)
                     {
                        _loc42_.x = _loc30_.x + (_loc31_.x - _loc30_.x) * _loc41_;
                        _loc42_.y = _loc30_.y + (_loc31_.y - _loc30_.y) * _loc41_;
                        _loc42_.z = _loc30_.z + (_loc31_.z - _loc30_.z) * _loc41_;
                        _loc42_.normalX = _loc30_.normalX + (_loc31_.normalX - _loc30_.normalX) * _loc41_;
                        _loc42_.normalY = _loc30_.normalY + (_loc31_.normalY - _loc30_.normalY) * _loc41_;
                        _loc42_.normalZ = _loc30_.normalZ + (_loc31_.normalZ - _loc30_.normalZ) * _loc41_;
                     }
                     _loc47_ = _loc44_.create();
                     _loc47_.vertex = _loc42_;
                     if(_loc46_ != null)
                     {
                        _loc46_.next = _loc47_;
                     }
                     else
                     {
                        _loc28_.wrapper = _loc47_;
                     }
                     _loc46_ = _loc47_;
                     _loc47_ = _loc44_.create();
                     _loc47_.vertex = _loc42_;
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc47_;
                     }
                     else
                     {
                        _loc36_.wrapper = _loc47_;
                     }
                     _loc9_ = _loc47_;
                  }
                  if(_loc24_ <= _loc34_)
                  {
                     _loc47_ = _loc44_.create();
                     _loc47_.vertex = _loc31_;
                     if(_loc46_ != null)
                     {
                        _loc46_.next = _loc47_;
                     }
                     else
                     {
                        _loc28_.wrapper = _loc47_;
                     }
                     _loc46_ = _loc47_;
                  }
                  if(_loc24_ >= _loc48_)
                  {
                     _loc47_ = _loc44_.create();
                     _loc47_.vertex = _loc31_;
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc47_;
                     }
                     else
                     {
                        _loc36_.wrapper = _loc47_;
                     }
                     _loc9_ = _loc47_;
                  }
                  _loc30_ = _loc31_;
                  _loc26_ = _loc24_;
                  _loc44_ = _loc44_.next;
               }
               if(_loc5_ != null)
               {
                  _loc10_.processNext = _loc28_;
               }
               else
               {
                  _loc5_ = _loc28_;
               }
               _loc10_ = _loc28_;
               if(_loc18_ != null)
               {
                  _loc45_.processNext = _loc36_;
               }
               else
               {
                  _loc18_ = _loc36_;
               }
               _loc45_ = _loc36_;
               _loc39_.processNext = null;
            }
            _loc39_ = _loc23_;
         }
         if(_loc18_ != null)
         {
            _loc45_.processNext = null;
            if(_loc18_.processNext != null)
            {
               param3 = this.sortByDynamicBSP(_loc18_,param2,param3);
            }
            else
            {
               _loc18_.processNext = param3;
               param3 = _loc18_;
            }
         }
         _loc33_.processNext = param3;
         param3 = _loc38_;
         if(_loc5_ != null)
         {
            _loc10_.processNext = null;
            if(_loc5_.processNext != null)
            {
               param3 = this.sortByDynamicBSP(_loc5_,param2,param3);
            }
            else
            {
               _loc5_.processNext = param3;
               param3 = _loc5_;
            }
         }
         return param3;
      }
      
      alternativa3d function cull(param1:Face, param2:int) : Face
      {
         var _loc31_:* = null;
         var _loc5_:* = null;
         var _loc3_:Face = null;
         var _loc18_:Vertex = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc21_:Wrapper = null;
         var _loc29_:Vertex = null;
         var _loc30_:Wrapper = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc16_:Boolean = (param2 & 1) > 0;
         var _loc22_:Boolean = (param2 & 2) > 0;
         var _loc24_:Boolean = (param2 & 4) > 0;
         var _loc13_:Boolean = (param2 & 8) > 0;
         var _loc4_:Boolean = (param2 & 0x10) > 0;
         var _loc14_:Boolean = (param2 & 0x20) > 0;
         var _loc17_:Number = this.nearClipping;
         var _loc26_:Number = this.farClipping;
         var _loc8_:Boolean = _loc24_ || _loc13_;
         var _loc15_:Boolean = _loc4_ || _loc14_;
         var _loc27_:* = param1;
         for(; _loc27_ != null; _loc27_ = _loc3_)
         {
            _loc3_ = _loc27_.alternativa3d::processNext;
            _loc21_ = _loc27_.alternativa3d::wrapper;
            _loc18_ = _loc21_.vertex;
            _loc21_ = _loc21_.next;
            _loc19_ = _loc21_.vertex;
            _loc21_ = _loc21_.next;
            _loc20_ = _loc21_.vertex;
            _loc21_ = _loc21_.next;
            if(_loc8_)
            {
               _loc9_ = _loc18_.cameraX;
               _loc25_ = _loc19_.cameraX;
               _loc12_ = _loc20_.cameraX;
            }
            if(_loc15_)
            {
               _loc11_ = _loc18_.cameraY;
               _loc7_ = _loc19_.cameraY;
               _loc6_ = _loc20_.cameraY;
            }
            _loc23_ = _loc18_.cameraZ;
            _loc28_ = _loc19_.cameraZ;
            _loc10_ = _loc20_.cameraZ;
            if(_loc16_)
            {
               if(_loc23_ <= _loc17_ || _loc28_ <= _loc17_ || _loc10_ <= _loc17_)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  if(_loc30_.vertex.cameraZ <= _loc17_)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ != null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc22_ && _loc23_ >= _loc26_ && _loc28_ >= _loc26_ && _loc10_ >= _loc26_)
            {
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  if(_loc30_.vertex.cameraZ < _loc26_)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ == null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc24_ && _loc23_ <= -_loc9_ && _loc28_ <= -_loc25_ && _loc10_ <= -_loc12_)
            {
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  _loc29_ = _loc30_.vertex;
                  if(-_loc29_.cameraX < _loc29_.cameraZ)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ == null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc13_ && _loc23_ <= _loc9_ && _loc28_ <= _loc25_ && _loc10_ <= _loc12_)
            {
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  _loc29_ = _loc30_.vertex;
                  if(_loc29_.cameraX < _loc29_.cameraZ)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ == null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc4_ && _loc23_ <= -_loc11_ && _loc28_ <= -_loc7_ && _loc10_ <= -_loc6_)
            {
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  _loc29_ = _loc30_.vertex;
                  if(-_loc29_.cameraY < _loc29_.cameraZ)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ == null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc14_ && _loc23_ <= _loc11_ && _loc28_ <= _loc7_ && _loc10_ <= _loc6_)
            {
               _loc30_ = _loc21_;
               while(_loc30_ != null)
               {
                  _loc29_ = _loc30_.vertex;
                  if(_loc29_.cameraY < _loc29_.cameraZ)
                  {
                     break;
                  }
                  _loc30_ = _loc30_.next;
               }
               if(_loc30_ == null)
               {
                  _loc27_.alternativa3d::processNext = null;
                  continue;
               }
            }
            if(_loc31_ != null)
            {
               _loc5_.alternativa3d::processNext = _loc27_;
            }
            else
            {
               _loc31_ = _loc27_;
            }
            _loc5_ = _loc27_;
         }
         if(_loc5_ != null)
         {
            _loc5_.alternativa3d::processNext = null;
         }
         return _loc31_;
      }
      
      alternativa3d function clip(param1:Face, param2:int) : Face
      {
         var _loc37_:Face = null;
         var _loc5_:Face = null;
         var _loc3_:Face = null;
         var _loc22_:Vertex = null;
         var _loc23_:Vertex = null;
         var _loc24_:Vertex = null;
         var _loc25_:Wrapper = null;
         var _loc35_:Vertex = null;
         var _loc36_:Wrapper = null;
         var _loc6_:Wrapper = null;
         var _loc38_:Wrapper = null;
         var _loc15_:Wrapper = null;
         var _loc39_:Wrapper = null;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc14_:int = 0;
         var _loc33_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc30_:Face = null;
         var _loc20_:Boolean = (param2 & 1) > 0;
         var _loc26_:Boolean = (param2 & 2) > 0;
         var _loc28_:Boolean = (param2 & 4) > 0;
         var _loc17_:Boolean = (param2 & 8) > 0;
         var _loc4_:Boolean = (param2 & 0x10) > 0;
         var _loc18_:Boolean = (param2 & 0x20) > 0;
         var _loc21_:Number = this.nearClipping;
         var _loc31_:Number = this.farClipping;
         var _loc9_:Boolean = _loc28_ || _loc17_;
         var _loc19_:Boolean = _loc4_ || _loc18_;
         var _loc32_:* = param1;
         for(; _loc32_ != null; _loc32_ = _loc3_)
         {
            _loc3_ = _loc32_.alternativa3d::processNext;
            _loc25_ = _loc32_.alternativa3d::wrapper;
            _loc22_ = _loc25_.vertex;
            _loc25_ = _loc25_.next;
            _loc23_ = _loc25_.vertex;
            _loc25_ = _loc25_.next;
            _loc24_ = _loc25_.vertex;
            _loc25_ = _loc25_.next;
            if(_loc9_)
            {
               _loc11_ = _loc22_.cameraX;
               _loc29_ = _loc23_.cameraX;
               _loc16_ = _loc24_.cameraX;
            }
            if(_loc19_)
            {
               _loc13_ = _loc22_.cameraY;
               _loc8_ = _loc23_.cameraY;
               _loc7_ = _loc24_.cameraY;
            }
            _loc27_ = _loc22_.cameraZ;
            _loc34_ = _loc23_.cameraZ;
            _loc12_ = _loc24_.cameraZ;
            _loc14_ = 0;
            if(_loc20_)
            {
               if(_loc27_ <= _loc21_ && _loc34_ <= _loc21_ && _loc12_ <= _loc21_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     if(_loc36_.vertex.cameraZ > _loc21_)
                     {
                        _loc14_ |= 1;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ > _loc21_ && _loc34_ > _loc21_ && _loc12_ > _loc21_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     if(_loc36_.vertex.cameraZ <= _loc21_)
                     {
                        _loc14_ |= 1;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 1;
               }
            }
            if(_loc26_)
            {
               if(_loc27_ >= _loc31_ && _loc34_ >= _loc31_ && _loc12_ >= _loc31_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     if(_loc36_.vertex.cameraZ < _loc31_)
                     {
                        _loc14_ |= 2;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ < _loc31_ && _loc34_ < _loc31_ && _loc12_ < _loc31_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     if(_loc36_.vertex.cameraZ >= _loc31_)
                     {
                        _loc14_ |= 2;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 2;
               }
            }
            if(_loc28_)
            {
               if(_loc27_ <= -_loc11_ && _loc34_ <= -_loc29_ && _loc12_ <= -_loc16_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(-_loc35_.cameraX < _loc35_.cameraZ)
                     {
                        _loc14_ |= 4;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ > -_loc11_ && _loc34_ > -_loc29_ && _loc12_ > -_loc16_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(-_loc35_.cameraX >= _loc35_.cameraZ)
                     {
                        _loc14_ |= 4;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 4;
               }
            }
            if(_loc17_)
            {
               if(_loc27_ <= _loc11_ && _loc34_ <= _loc29_ && _loc12_ <= _loc16_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(_loc35_.cameraX < _loc35_.cameraZ)
                     {
                        _loc14_ |= 8;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ > _loc11_ && _loc34_ > _loc29_ && _loc12_ > _loc16_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(_loc35_.cameraX >= _loc35_.cameraZ)
                     {
                        _loc14_ |= 8;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 8;
               }
            }
            if(_loc4_)
            {
               if(_loc27_ <= -_loc13_ && _loc34_ <= -_loc8_ && _loc12_ <= -_loc7_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(-_loc35_.cameraY < _loc35_.cameraZ)
                     {
                        _loc14_ |= 16;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ > -_loc13_ && _loc34_ > -_loc8_ && _loc12_ > -_loc7_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(-_loc35_.cameraY >= _loc35_.cameraZ)
                     {
                        _loc14_ |= 16;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 16;
               }
            }
            if(_loc18_)
            {
               if(_loc27_ <= _loc13_ && _loc34_ <= _loc8_ && _loc12_ <= _loc7_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(_loc35_.cameraY < _loc35_.cameraZ)
                     {
                        _loc14_ |= 32;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
                  if(_loc36_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               else if(_loc27_ > _loc13_ && _loc34_ > _loc8_ && _loc12_ > _loc7_)
               {
                  _loc36_ = _loc25_;
                  while(_loc36_ != null)
                  {
                     _loc35_ = _loc36_.vertex;
                     if(_loc35_.cameraY >= _loc35_.cameraZ)
                     {
                        _loc14_ |= 32;
                        break;
                     }
                     _loc36_ = _loc36_.next;
                  }
               }
               else
               {
                  _loc14_ |= 32;
               }
            }
            if(_loc14_ > 0)
            {
               _loc10_ = _loc32_.material != null && Boolean(_loc32_.material.alternativa3d::useVerticesNormals);
               _loc6_ = null;
               _loc38_ = null;
               _loc36_ = _loc32_.alternativa3d::wrapper;
               while(_loc36_ != null)
               {
                  _loc39_ = _loc36_.create();
                  _loc39_.vertex = _loc36_.vertex;
                  if(_loc6_ != null)
                  {
                     _loc38_.next = _loc39_;
                  }
                  else
                  {
                     _loc6_ = _loc39_;
                  }
                  _loc38_ = _loc39_;
                  _loc36_ = _loc36_.next;
               }
               if(_loc14_ & 1)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ > _loc21_ && _loc27_ <= _loc21_ || _loc34_ <= _loc21_ && _loc27_ > _loc21_)
                     {
                        _loc33_ = (_loc21_ - _loc27_) / (_loc34_ - _loc27_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc22_.cameraX + (_loc23_.cameraX - _loc22_.cameraX) * _loc33_;
                        _loc35_.cameraY = _loc22_.cameraY + (_loc23_.cameraY - _loc22_.cameraY) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ > _loc21_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               if(_loc14_ & 2)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ < _loc31_ && _loc27_ >= _loc31_ || _loc34_ >= _loc31_ && _loc27_ < _loc31_)
                     {
                        _loc33_ = (_loc31_ - _loc27_) / (_loc34_ - _loc27_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc22_.cameraX + (_loc23_.cameraX - _loc22_.cameraX) * _loc33_;
                        _loc35_.cameraY = _loc22_.cameraY + (_loc23_.cameraY - _loc22_.cameraY) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ < _loc31_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               if(_loc14_ & 4)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc11_ = _loc22_.cameraX;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc29_ = _loc23_.cameraX;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ > -_loc29_ && _loc27_ <= -_loc11_ || _loc34_ <= -_loc29_ && _loc27_ > -_loc11_)
                     {
                        _loc33_ = (_loc11_ + _loc27_) / (_loc11_ + _loc27_ - _loc29_ - _loc34_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc11_ + (_loc29_ - _loc11_) * _loc33_;
                        _loc35_.cameraY = _loc22_.cameraY + (_loc23_.cameraY - _loc22_.cameraY) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ > -_loc29_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc11_ = _loc29_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               if(_loc14_ & 8)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc11_ = _loc22_.cameraX;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc29_ = _loc23_.cameraX;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ > _loc29_ && _loc27_ <= _loc11_ || _loc34_ <= _loc29_ && _loc27_ > _loc11_)
                     {
                        _loc33_ = (_loc27_ - _loc11_) / (_loc27_ - _loc11_ + _loc29_ - _loc34_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc11_ + (_loc29_ - _loc11_) * _loc33_;
                        _loc35_.cameraY = _loc22_.cameraY + (_loc23_.cameraY - _loc22_.cameraY) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ > _loc29_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc11_ = _loc29_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               if(_loc14_ & 0x10)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc13_ = _loc22_.cameraY;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc8_ = _loc23_.cameraY;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ > -_loc8_ && _loc27_ <= -_loc13_ || _loc34_ <= -_loc8_ && _loc27_ > -_loc13_)
                     {
                        _loc33_ = (_loc13_ + _loc27_) / (_loc13_ + _loc27_ - _loc8_ - _loc34_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc22_.cameraX + (_loc23_.cameraX - _loc22_.cameraX) * _loc33_;
                        _loc35_.cameraY = _loc13_ + (_loc8_ - _loc13_) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ > -_loc8_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc13_ = _loc8_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               if(_loc14_ & 0x20)
               {
                  _loc22_ = _loc38_.vertex;
                  _loc13_ = _loc22_.cameraY;
                  _loc27_ = _loc22_.cameraZ;
                  _loc36_ = _loc6_;
                  _loc6_ = null;
                  _loc38_ = null;
                  while(_loc36_ != null)
                  {
                     _loc15_ = _loc36_.next;
                     _loc23_ = _loc36_.vertex;
                     _loc8_ = _loc23_.cameraY;
                     _loc34_ = _loc23_.cameraZ;
                     if(_loc34_ > _loc8_ && _loc27_ <= _loc13_ || _loc34_ <= _loc8_ && _loc27_ > _loc13_)
                     {
                        _loc33_ = (_loc27_ - _loc13_) / (_loc27_ - _loc13_ + _loc8_ - _loc34_);
                        _loc35_ = _loc23_.create();
                        this.lastVertex.next = _loc35_;
                        this.lastVertex = _loc35_;
                        _loc35_.cameraX = _loc22_.cameraX + (_loc23_.cameraX - _loc22_.cameraX) * _loc33_;
                        _loc35_.cameraY = _loc13_ + (_loc8_ - _loc13_) * _loc33_;
                        _loc35_.cameraZ = _loc27_ + (_loc34_ - _loc27_) * _loc33_;
                        _loc35_.x = _loc22_.x + (_loc23_.x - _loc22_.x) * _loc33_;
                        _loc35_.y = _loc22_.y + (_loc23_.y - _loc22_.y) * _loc33_;
                        _loc35_.z = _loc22_.z + (_loc23_.z - _loc22_.z) * _loc33_;
                        _loc35_.u = _loc22_.u + (_loc23_.u - _loc22_.u) * _loc33_;
                        _loc35_.v = _loc22_.v + (_loc23_.v - _loc22_.v) * _loc33_;
                        if(_loc10_)
                        {
                           _loc35_.normalX = _loc22_.normalX + (_loc23_.normalX - _loc22_.normalX) * _loc33_;
                           _loc35_.normalY = _loc22_.normalY + (_loc23_.normalY - _loc22_.normalY) * _loc33_;
                           _loc35_.normalZ = _loc22_.normalZ + (_loc23_.normalZ - _loc22_.normalZ) * _loc33_;
                        }
                        _loc39_ = _loc36_.create();
                        _loc39_.vertex = _loc35_;
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc39_;
                        }
                        else
                        {
                           _loc6_ = _loc39_;
                        }
                        _loc38_ = _loc39_;
                     }
                     if(_loc34_ > _loc8_)
                     {
                        if(_loc6_ != null)
                        {
                           _loc38_.next = _loc36_;
                        }
                        else
                        {
                           _loc6_ = _loc36_;
                        }
                        _loc38_ = _loc36_;
                        _loc36_.next = null;
                     }
                     else
                     {
                        _loc36_.vertex = null;
                        _loc36_.next = Wrapper.collector;
                        Wrapper.collector = _loc36_;
                     }
                     _loc22_ = _loc23_;
                     _loc13_ = _loc8_;
                     _loc27_ = _loc34_;
                     _loc36_ = _loc15_;
                  }
                  if(_loc6_ == null)
                  {
                     _loc32_.alternativa3d::processNext = null;
                     continue;
                  }
               }
               _loc32_.alternativa3d::processNext = null;
               _loc30_ = _loc32_.alternativa3d::create();
               _loc30_.material = _loc32_.material;
               this.lastFace.next = _loc30_;
               this.lastFace = _loc30_;
               _loc30_.wrapper = _loc6_;
               _loc32_ = _loc30_;
            }
            if(_loc37_ != null)
            {
               _loc5_.processNext = _loc32_;
            }
            else
            {
               _loc37_ = _loc32_;
            }
            _loc5_ = _loc32_;
         }
         if(_loc5_ != null)
         {
            _loc5_.processNext = null;
         }
         return _loc37_;
      }
   }
}

