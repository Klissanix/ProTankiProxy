package alternativa.tanks.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.*;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class TrackMaterial extends TextureMaterial
   {
      
      private static var a595de16:Array = [];
      
      public var uvMatrixProvider:UVMatrixProvider = new UVMatrixProvider();
      
      public function TrackMaterial(param1:BitmapData)
      {
         super(param1,true);
      }
      
      public function update() : void
      {
         uvTransformConst = this.uvMatrixProvider.getValues();
      }
      
      override alternativa3d function get transparent() : Boolean
      {
         return false;
      }
      
      override alternativa3d function drawOpaque(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D) : void
      {
         var _loc9_:BitmapData = texture;
         if(_loc9_ == null)
         {
            return;
         }
         this.update();
         var _loc13_:Device = param1.device;
         var _loc14_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc12_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth;
         var _loc8_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight;
         var _loc7_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap;
         var _loc10_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0 && param6.useDepth && param6.useLight;
         var _loc11_:Boolean = alphaTestThreshold > 0 && this.transparent;
         _loc13_.setProgram(this.getProgram(!_loc11_,false,false,false,param1.view.quality,repeat,_mipMapping > 0,param6.concatenatedColorTransform != null,false,_loc14_,false,_loc12_,_loc8_,_loc7_,_loc9_ == null,false,_loc10_,false,param1.view.correction,param6.concatenatedBlendMode != "normal",_loc11_,false));
         _loc13_.setTextureAt(0,textureResource);
         uvCorrection[0] = textureResource.correctionU;
         uvCorrection[1] = textureResource.correctionV;
         if(_loc12_)
         {
            _loc13_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc13_.setTextureAt(1,null);
         }
         if(_loc7_)
         {
            _loc13_.setTextureAt(2,param1.shadowMap.map);
            _loc13_.setTextureAt(3,param1.shadowMap.noise);
         }
         else
         {
            _loc13_.setTextureAt(2,null);
            _loc13_.setTextureAt(3,null);
         }
         _loc13_.setTextureAt(4,null);
         _loc13_.setTextureAt(6,null);
         if(_loc10_)
         {
            _loc13_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc13_.setTextureAt(5,null);
         }
         _loc13_.setVertexBufferAt(0,param2,0,"float3");
         _loc13_.setVertexBufferAt(1,param2,3,"float2");
         if(_loc8_)
         {
            _loc13_.setVertexBufferAt(2,param2,5,"float3");
         }
         else
         {
            _loc13_.setVertexBufferAt(2,null);
         }
         _loc13_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         _loc13_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         _loc13_.setProgramConstantsFromVector("vertex",14,uvTransformConst,2);
         if(param6.concatenatedColorTransform != null)
         {
            _loc13_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         if(_loc11_)
         {
            fragmentConst[3] = alphaTestThreshold;
            _loc13_.setProgramConstantsFromVector("fragment",14,fragmentConst,1,false);
         }
         _loc13_.drawTriangles(param3,param4,param5);
      }
      
      override alternativa3d function drawTransparent(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D, param7:Boolean = false) : void
      {
         var _loc12_:BitmapData = texture;
         if(_loc12_ == null)
         {
            return;
         }
         var _loc15_:Device = param1.device;
         var _loc16_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc13_:Boolean = !param1.view.constrained && param1.softTransparency && param1.softTransparencyStrength > 0 && param6.softAttenuation > 0;
         var _loc8_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth;
         var _loc11_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight;
         var _loc9_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap;
         var _loc10_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0;
         var _loc14_:Boolean = _loc10_ && param6.useDepth && param6.useLight;
         _loc15_.setProgram(this.getProgram(false,false,false,false,param1.view.quality,repeat,_mipMapping > 0,param6.concatenatedColorTransform != null,param6.concatenatedAlpha < 1,_loc16_,_loc13_,_loc8_,_loc11_,_loc9_,_loc12_ == null,_loc12_ == null && _textureATFAlpha != null,_loc14_,false,param1.view.correction,param6.concatenatedBlendMode != "normal",false,param7));
         _loc15_.setTextureAt(0,textureResource);
         uvCorrection[0] = textureResource.correctionU;
         uvCorrection[1] = textureResource.correctionV;
         if(_loc8_ || _loc13_)
         {
            _loc15_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc15_.setTextureAt(1,null);
         }
         if(_loc9_)
         {
            _loc15_.setTextureAt(2,param1.shadowMap.map);
            _loc15_.setTextureAt(3,param1.shadowMap.noise);
         }
         else
         {
            _loc15_.setTextureAt(2,null);
            _loc15_.setTextureAt(3,null);
         }
         _loc15_.setTextureAt(4,null);
         _loc15_.setTextureAt(6,null);
         if(_loc14_)
         {
            _loc15_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc15_.setTextureAt(5,null);
         }
         _loc15_.setVertexBufferAt(0,param2,0,"float1");
         _loc15_.setVertexBufferAt(1,null);
         _loc15_.setVertexBufferAt(2,null);
         _loc15_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         _loc15_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         if(_loc13_)
         {
            fragmentConst[2] = param6.softAttenuation;
            _loc15_.setProgramConstantsFromVector("fragment",14,fragmentConst,1);
         }
         if(param6.concatenatedColorTransform != null)
         {
            _loc15_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         else if(param6.concatenatedAlpha < 1)
         {
            _loc15_.setProgramConstantsFromVector("fragment",0,param6.colorConst,1);
         }
         _loc15_.drawTriangles(param3,param4,param5);
      }
      
      override protected function getProgram(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean, param17:Boolean, param18:Boolean, param19:Boolean, param20:Boolean, param21:Boolean, param22:Boolean) : ProgramResource
      {
         var _loc25_:ByteArray = null;
         var _loc26_:ByteArray = null;
         var _loc24_:int = int(param1) | int(param2) << 1 | int(param3) << 2 | int(param4) << 3 | int(param5) << 4 | int(param6) << 5 | int(param7) << 6 | int(param8) << 7 | int(param9) << 8 | int(param10) << 9 | int(param11) << 10 | int(param12) << 11 | int(param13) << 12 | int(param14) << 13 | int(param15) << 14 | int(param16) << 15 | int(param17) << 16 | int(param18) << 17 | int(param19) << 18 | int(param20) << 19 | int(param21) << 20 | int(param22) << 21;
         var _loc23_:ProgramResource = a595de16[_loc24_];
         if(_loc23_ == null)
         {
            _loc25_ = new TextureMaterialVertexShader(!param22,param14 || param11 || param12 || param17,param13,param4,param14,param10,param2,param3,param3,param19,false,true).agalcode;
            _loc26_ = new TextureMaterialFragmentShader(param6,param5,param7,param15,param16,param21,!param1 && !param16 && !param15,param8,param9,param3,param13,param11,param12,param17,param18,param14,param10,param2,param20,false).agalcode;
            _loc23_ = new ProgramResource(_loc25_,_loc26_);
            a595de16[_loc24_] = _loc23_;
         }
         return _loc23_;
      }
      
      override public function set mipMapping(param1:int) : void
      {
         _mipMapping = param1;
         textureResource = TextureResourcesRegistry.getTextureResource(bitmap,_mipMapping,repeat,_hardwareMipMaps);
      }
   }
}

