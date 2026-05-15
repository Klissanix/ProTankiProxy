package alternativa.tanks.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.*;
   import alternativa.gfx.core.BitmapTextureResource;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.TextureResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class PaintMaterial extends TextureMaterial
   {
      
      protected var fragConst:Vector.<Number>;
      
      private var a595de16:Dictionary = new Dictionary();
      
      protected var spriteSheetBitmap:BitmapData;
      
      protected var lightMapBitmap:BitmapData;
      
      protected var spriteSheetResource:BitmapTextureResource;
      
      protected var lightMapResource:TextureResource;
      
      public function PaintMaterial(param1:BitmapData, param2:BitmapData, param3:BitmapData, param4:int = 0)
      {
         super(param3,true,true,param4);
         this.spriteSheetBitmap = param1;
         this.lightMapBitmap = param2;
         this.spriteSheetResource = TextureResourcesRegistry.getTextureResource(param1,alternativa3d::_mipMapping > 0,true,false);
         this.lightMapResource = TextureResourcesRegistry.getTextureResource(param2,alternativa3d::_mipMapping > 0,true,false);
         this.fragConst = new <Number>[0,0.5,1,2,0.999,0.999,0,0];
         uvTransformConst[0] = param3.width / param1.width;
         uvTransformConst[5] = param3.height / param1.height;
         alternativa3d::_mipMapping = this.spriteSheetResource.mipMapping ? 2 : 0;
      }
      
      override alternativa3d function get transparent() : Boolean
      {
         return false;
      }
      
      override public function set mipMapping(param1:int) : void
      {
         _mipMapping = param1;
         textureResource = TextureResourcesRegistry.getTextureResource(bitmap,_mipMapping > 0,repeat,_hardwareMipMaps);
         this.spriteSheetResource = TextureResourcesRegistry.getTextureResource(this.spriteSheetBitmap,_mipMapping > 0,true,false);
         this.lightMapResource = TextureResourcesRegistry.getTextureResource(this.lightMapBitmap,_mipMapping > 0,true,false);
      }
      
      override alternativa3d function drawOpaque(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D) : void
      {
         var _loc10_:BitmapData = texture;
         if(_loc10_ == null && _textureATF == null)
         {
            return;
         }
         var _loc14_:Device = param1.device;
         var _loc15_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc13_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth;
         var _loc9_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight;
         var _loc8_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap;
         var _loc11_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0 && param6.useDepth && param6.useLight;
         var _loc12_:Boolean = alphaTestThreshold > 0 && this.transparent;
         var _loc7_:Boolean = param1.alternatePaintBlend;
         _loc14_.setProgram(this.getPaintProgram(!_loc12_,false,false,false,param1.view.quality,repeat,_mipMapping > 0,param6.concatenatedColorTransform != null,false,_loc15_,false,_loc13_,_loc9_,_loc8_,_loc10_ == null,false,_loc11_,false,param1.view.correction,param6.concatenatedBlendMode != "normal",_loc12_,false,_loc7_));
         _loc14_.setTextureAt(0,textureResource);
         uvCorrection[0] = textureResource.correctionU;
         uvCorrection[1] = textureResource.correctionV;
         if(_loc13_)
         {
            _loc14_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc14_.setTextureAt(1,null);
         }
         if(_loc8_)
         {
            _loc14_.setTextureAt(2,param1.shadowMap.map);
            _loc14_.setTextureAt(3,param1.shadowMap.noise);
         }
         else
         {
            _loc14_.setTextureAt(2,null);
            _loc14_.setTextureAt(3,null);
         }
         _loc14_.setTextureAt(4,this.spriteSheetResource);
         _loc14_.setTextureAt(6,this.lightMapResource);
         if(_loc11_)
         {
            _loc14_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc14_.setTextureAt(5,null);
         }
         _loc14_.setVertexBufferAt(0,param2,0,"float3");
         _loc14_.setVertexBufferAt(1,param2,3,"float2");
         if(_loc9_)
         {
            _loc14_.setVertexBufferAt(2,param2,5,"float3");
         }
         else
         {
            _loc14_.setVertexBufferAt(2,null);
         }
         _loc14_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         _loc14_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         _loc14_.setProgramConstantsFromVector("vertex",14,uvTransformConst,2);
         _loc14_.setProgramConstantsFromVector("fragment",23,this.fragConst,2,true);
         if(param6.concatenatedColorTransform != null)
         {
            _loc14_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         if(_loc12_)
         {
            fragmentConst[3] = alphaTestThreshold;
            _loc14_.setProgramConstantsFromVector("fragment",14,fragmentConst,1,false);
         }
         try
         {
            _loc14_.drawTriangles(param3,param4,param5);
         }
         catch(e:Error)
         {
         }
      }
      
      override alternativa3d function drawTransparent(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D, param7:Boolean = false) : void
      {
         var _loc12_:BitmapData = texture;
         if(_loc12_ == null && _textureATF == null)
         {
            return;
         }
         var _loc16_:Device = param1.device;
         var _loc17_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc13_:Boolean = !param1.view.constrained && param1.softTransparency && param1.softTransparencyStrength > 0 && param6.softAttenuation > 0;
         var _loc15_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth;
         var _loc11_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight;
         var _loc9_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap;
         var _loc10_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0;
         var _loc14_:Boolean = _loc10_ && param6.useDepth && param6.useLight;
         var _loc8_:Boolean = param1.alternatePaintBlend;
         _loc16_.setProgram(this.getPaintProgram(false,false,false,false,param1.view.quality,repeat,_mipMapping > 0,param6.concatenatedColorTransform != null,param6.concatenatedAlpha < 1,_loc17_,_loc13_,_loc15_,_loc11_,_loc9_,_loc12_ == null,_loc12_ == null && _textureATFAlpha != null,_loc14_,false,param1.view.correction,param6.concatenatedBlendMode != "normal",false,param7,_loc8_));
         _loc16_.setTextureAt(0,textureResource);
         uvCorrection[0] = textureResource.correctionU;
         uvCorrection[1] = textureResource.correctionV;
         if(_loc15_ || _loc13_)
         {
            _loc16_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc16_.setTextureAt(1,null);
         }
         if(_loc9_)
         {
            _loc16_.setTextureAt(2,param1.shadowMap.map);
            _loc16_.setTextureAt(3,param1.shadowMap.noise);
         }
         else
         {
            _loc16_.setTextureAt(2,null);
            _loc16_.setTextureAt(3,null);
         }
         _loc16_.setTextureAt(4,this.spriteSheetResource);
         _loc16_.setTextureAt(6,this.lightMapResource);
         if(_loc14_)
         {
            _loc16_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc16_.setTextureAt(5,null);
         }
         _loc16_.setVertexBufferAt(0,param2,0,"float1");
         _loc16_.setVertexBufferAt(1,null);
         _loc16_.setVertexBufferAt(2,null);
         _loc16_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         _loc16_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         _loc16_.setProgramConstantsFromVector("vertex",14,uvTransformConst,2);
         _loc16_.setProgramConstantsFromVector("fragment",23,this.fragConst,2,true);
         if(_loc13_)
         {
            fragmentConst[2] = param6.softAttenuation;
            _loc16_.setProgramConstantsFromVector("fragment",14,fragmentConst,1);
         }
         if(param6.concatenatedColorTransform != null)
         {
            _loc16_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         else if(param6.concatenatedAlpha < 1)
         {
            _loc16_.setProgramConstantsFromVector("fragment",0,param6.colorConst,1);
         }
         _loc16_.drawTriangles(param3,param4,param5);
      }
      
      override public function disposeResource() : void
      {
         if(textureResource != null)
         {
            textureResource.dispose();
            textureResource = null;
         }
         if(this.spriteSheetResource != null)
         {
            this.spriteSheetResource.dispose();
            this.spriteSheetResource = null;
         }
         if(this.lightMapResource != null)
         {
            this.lightMapResource.dispose();
            this.lightMapResource = null;
         }
      }
      
      override public function dispose() : void
      {
         this.disposeResource();
         this.spriteSheetBitmap = null;
         this.lightMapBitmap = null;
      }
      
      protected function getPaintProgram(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean, param17:Boolean, param18:Boolean, param19:Boolean, param20:Boolean, param21:Boolean, param22:Boolean, param23:Boolean) : ProgramResource
      {
         var _loc26_:ByteArray = null;
         var _loc27_:ByteArray = null;
         var _loc25_:int = int(param1) | int(param2) << 1 | int(param3) << 2 | int(param4) << 3 | int(param5) << 4 | int(param6) << 5 | int(param7) << 6 | int(param8) << 7 | int(param9) << 8 | int(param10) << 9 | int(param11) << 10 | int(param12) << 11 | int(param13) << 12 | int(param14) << 13 | int(param15) << 14 | int(param16) << 15 | int(param17) << 16 | int(param18) << 17 | int(param19) << 18 | int(param20) << 19 | int(param21) << 20 | int(param22) << 21 | int(param23) << 22;
         var _loc24_:ProgramResource = this.a595de16[_loc25_];
         if(_loc24_ == null)
         {
            _loc26_ = new TextureMaterialVertexShader(!param22,param14 || param11 || param12 || param17,param13,param4,param14,param10,param2,param3,param3,param19,true,false).agalcode;
            _loc27_ = new PaintFragmentShader(param6,param5,param7,param15,param21,!param1 && !param16 && !param15,param8,param9,param3,param13,param11,param12,param17,param18,param14,param10,param2,param20,param23).agalcode;
            _loc24_ = new ProgramResource(_loc26_,_loc27_);
            this.a595de16[_loc25_] = _loc24_;
         }
         return _loc24_;
      }
   }
}

