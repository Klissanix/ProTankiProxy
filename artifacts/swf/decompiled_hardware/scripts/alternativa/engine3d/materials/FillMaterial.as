package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.SkyBox;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.ProgramResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class FillMaterial extends Material
   {
      
      protected static const skyFogConst:Vector.<Number> = new <Number>[0,0,0,1];
      
      protected static const correctionConst:Vector.<Number> = new <Number>[0,0,0,1,0,0,0,1];
      
      protected static const uvCorrection:Vector.<Number> = new <Number>[1,1,0,1];
      
      protected static const fragmentConst:Vector.<Number> = new <Number>[0,0,0,1];
      
      private static var a595de16:Array = [];
      
      protected const fillColorConst:Vector.<Number> = new <Number>[1,0,0,1];
      
      public function FillMaterial(param1:int = 8355711, param2:Number = 1, param3:Number = -1, param4:int = 16777215)
      {
         super();
         this.color = param1;
         this.alpha = param2;
      }
      
      public function get alpha() : Number
      {
         return fillColorConst[3];
      }
      
      public function set alpha(param1:Number) : void
      {
         fillColorConst[3] = param1;
      }
      
      public function get color() : uint
      {
         return (fillColorConst[0] * 255 << 16) + (fillColorConst[1] * 255 << 8) + fillColorConst[2] * 255;
      }
      
      public function set color(param1:uint) : void
      {
         fillColorConst[0] = (param1 >> 16 & 0xFF) / 255;
         fillColorConst[1] = (param1 >> 8 & 0xFF) / 255;
         fillColorConst[2] = (param1 & 0xFF) / 255;
      }
      
      override alternativa3d function get transparent() : Boolean
      {
         return this.alpha < 1;
      }
      
      override public function clone() : Material
      {
         var _loc1_:FillMaterial = new FillMaterial(this.color,this.alpha);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawOpaque(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D) : void
      {
         var _loc15_:Device = param1.device;
         var _loc11_:Boolean = param6 is Decal;
         var _loc10_:Boolean = !_loc11_ && zOffset;
         var _loc8_:Boolean = param6 is SkyBox && Boolean(SkyBox(param6).autoSize);
         var _loc16_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc14_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth && !_loc8_;
         var _loc9_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight && !_loc8_;
         var _loc7_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap && !_loc8_;
         var _loc12_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0 && param6.useDepth && param6.useLight && !_loc8_;
         var _loc13_:Boolean = alphaTestThreshold > 0 && this.transparent;
         _loc15_.setProgram(this.getProgram(!_loc11_ && !_loc13_,_loc8_,_loc11_ || _loc10_,false,param1.view.quality,true,false,param6.concatenatedColorTransform != null,_loc11_ && param6.concatenatedAlpha < 1,_loc16_,false,_loc14_,_loc9_,_loc7_,false,false,_loc12_,false,param1.view.correction,param6.concatenatedBlendMode != "normal",_loc13_,false));
         _loc15_.setProgramConstantsFromVector("fragment",25,fillColorConst,1);
         _loc15_.setTextureAt(0,null);
         if(_loc14_)
         {
            _loc15_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc15_.setTextureAt(1,null);
         }
         if(_loc7_)
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
         if(_loc12_)
         {
            _loc15_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc15_.setTextureAt(5,null);
         }
         _loc15_.setVertexBufferAt(0,param2,0,"float3");
         _loc15_.setVertexBufferAt(1,param2,3,"float2");
         if(_loc9_)
         {
            _loc15_.setVertexBufferAt(2,param2,5,"float3");
         }
         else
         {
            _loc15_.setVertexBufferAt(2,null);
         }
         _loc15_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         _loc15_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         if(_loc11_)
         {
            correctionConst[0] = param6.md * param1.correctionX;
            correctionConst[1] = param6.mh * param1.correctionY;
            correctionConst[2] = param6.ml;
            correctionConst[3] = param1.correctionX;
            correctionConst[4] = param6.mc * param1.correctionX / Decal(param6).attenuation;
            correctionConst[5] = param6.mg * param1.correctionY / Decal(param6).attenuation;
            correctionConst[6] = param6.mk / Decal(param6).attenuation;
            correctionConst[7] = param1.correctionY;
            _loc15_.setProgramConstantsFromVector("vertex",11,correctionConst,2,false);
         }
         else if(_loc10_)
         {
            correctionConst[0] = 0;
            correctionConst[1] = 0;
            correctionConst[2] = 0;
            correctionConst[3] = param1.correctionX;
            correctionConst[4] = 0;
            correctionConst[5] = 0;
            correctionConst[6] = 0;
            correctionConst[7] = param1.correctionY;
            _loc15_.setProgramConstantsFromVector("vertex",11,correctionConst,2,false);
         }
         else if(_loc8_)
         {
            _loc15_.setProgramConstantsFromVector("vertex",11,SkyBox(param6).alternativa3d::reduceConst,1);
            if(_loc16_)
            {
               skyFogConst[0] = param1.fogFragment[0] * param1.fogFragment[3];
               skyFogConst[1] = param1.fogFragment[1] * param1.fogFragment[3];
               skyFogConst[2] = param1.fogFragment[2] * param1.fogFragment[3];
               skyFogConst[3] = 1 - param1.fogFragment[3];
               _loc15_.setProgramConstantsFromVector("fragment",13,skyFogConst,1);
            }
         }
         if(param6.concatenatedColorTransform != null)
         {
            _loc15_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         else if(_loc11_ && param6.concatenatedAlpha < 1)
         {
            _loc15_.setProgramConstantsFromVector("fragment",0,param6.colorConst,1);
         }
         if(_loc13_)
         {
            fragmentConst[3] = alphaTestThreshold;
            _loc15_.setProgramConstantsFromVector("fragment",14,fragmentConst,1,false);
         }
         _loc15_.drawTriangles(param3,param4,param5);
      }
      
      override alternativa3d function drawTransparent(param1:Camera3D, param2:VertexBufferResource, param3:IndexBufferResource, param4:int, param5:int, param6:Object3D, param7:Boolean = false) : void
      {
         var _loc17_:Device = param1.device;
         var _loc11_:Boolean = zOffset;
         var _loc18_:Boolean = param1.fogAlpha > 0 && param1.fogStrength > 0;
         var _loc14_:Boolean = param6 is Sprite3D;
         var _loc12_:Boolean = !param1.view.constrained && param1.softTransparency && param1.softTransparencyStrength > 0 && param6.softAttenuation > 0;
         var _loc15_:Boolean = !param1.view.constrained && param1.ssao && param1.ssaoStrength > 0 && param6.useDepth;
         var _loc10_:Boolean = !param1.view.constrained && param1.directionalLight != null && param1.directionalLightStrength > 0 && param6.useLight;
         var _loc8_:Boolean = !param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && param6.useLight && param6.useShadowMap;
         var _loc9_:Boolean = !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0;
         var _loc13_:Boolean = _loc9_ && param6.useDepth && param6.useLight && !_loc14_;
         var _loc16_:Boolean = _loc9_ && _loc14_ && param6.useLight;
         _loc17_.setProgram(this.getProgram(false,false,_loc11_,_loc14_,param1.view.quality,true,false,param6.concatenatedColorTransform != null,param6.concatenatedAlpha < 1,_loc18_,_loc12_,_loc15_,_loc10_,_loc8_,false,false,_loc13_,_loc16_,param1.view.correction,param6.concatenatedBlendMode != "normal",false,param7));
         _loc17_.setProgramConstantsFromVector("fragment",25,fillColorConst,1);
         _loc17_.setTextureAt(0,null);
         if(_loc15_ || _loc12_)
         {
            _loc17_.setTextureAt(1,param1.depthMap);
         }
         else
         {
            _loc17_.setTextureAt(1,null);
         }
         if(_loc8_)
         {
            _loc17_.setTextureAt(2,param1.shadowMap.map);
            _loc17_.setTextureAt(3,param1.shadowMap.noise);
         }
         else
         {
            _loc17_.setTextureAt(2,null);
            _loc17_.setTextureAt(3,null);
         }
         _loc17_.setTextureAt(4,null);
         _loc17_.setTextureAt(6,null);
         if(_loc13_)
         {
            _loc17_.setTextureAt(5,param1.lightMap);
         }
         else
         {
            _loc17_.setTextureAt(5,null);
         }
         _loc17_.setVertexBufferAt(0,param2,0,"float1");
         _loc17_.setVertexBufferAt(1,null);
         _loc17_.setVertexBufferAt(2,null);
         if(!_loc14_)
         {
            _loc17_.setProgramConstantsFromVector("vertex",0,param6.transformConst,3,false);
         }
         _loc17_.setProgramConstantsFromVector("vertex",4,uvCorrection,1);
         if(_loc12_)
         {
            fragmentConst[2] = param6.softAttenuation;
            _loc17_.setProgramConstantsFromVector("fragment",14,fragmentConst,1);
         }
         if(_loc11_)
         {
            correctionConst[0] = 0;
            correctionConst[1] = 0;
            correctionConst[2] = 0;
            correctionConst[3] = param1.correctionX;
            correctionConst[4] = 0;
            correctionConst[5] = 0;
            correctionConst[6] = 0;
            correctionConst[7] = param1.correctionY;
            _loc17_.setProgramConstantsFromVector("vertex",11,correctionConst,2,false);
         }
         else if(_loc14_)
         {
            if(_loc10_)
            {
               correctionConst[0] = param1.correctionX;
               correctionConst[1] = param1.correctionY;
               correctionConst[2] = 1;
               correctionConst[3] = 0.5;
               _loc17_.setProgramConstantsFromVector("vertex",11,correctionConst,1,false);
            }
            if(_loc16_)
            {
               _loc17_.setProgramConstantsFromVector("fragment",13,Sprite3D(param6).alternativa3d::lightConst,1,false);
            }
         }
         if(param6.concatenatedColorTransform != null)
         {
            _loc17_.setProgramConstantsFromVector("fragment",0,param6.colorConst,2,false);
         }
         else if(param6.concatenatedAlpha < 1)
         {
            _loc17_.setProgramConstantsFromVector("fragment",0,param6.colorConst,1);
         }
         _loc17_.drawTriangles(param3,param4,param5);
      }
      
      protected function getProgram(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean, param14:Boolean, param15:Boolean, param16:Boolean, param17:Boolean, param18:Boolean, param19:Boolean, param20:Boolean, param21:Boolean, param22:Boolean) : ProgramResource
      {
         var _loc25_:ByteArray = null;
         var _loc26_:ByteArray = null;
         var _loc24_:int = int(param1) | int(param2) << 1 | int(param3) << 2 | int(param4) << 3 | int(param5) << 4 | int(param6) << 5 | int(param7) << 6 | int(param8) << 7 | int(param9) << 8 | int(param10) << 9 | int(param11) << 10 | int(param12) << 11 | int(param13) << 12 | int(param14) << 13 | int(param15) << 14 | int(param16) << 15 | int(param17) << 16 | int(param18) << 17 | int(param19) << 18 | int(param20) << 19 | int(param21) << 20 | int(param22) << 21;
         var _loc23_:ProgramResource = a595de16[_loc24_];
         if(_loc23_ == null)
         {
            _loc25_ = new TextureMaterialVertexShader(!param22,param14 || param11 || param12 || param17,param13,param4,param14,param10,param2,param3,param3,param19,false,false).agalcode;
            _loc26_ = new TextureMaterialFragmentShader(param6,param5,param7,param15,param16,param21,!param1 && !param16 && !param15,param8,param9,param3,param13,param11,param12,param17,param18,param14,param10,param2,param20,true).agalcode;
            _loc23_ = new ProgramResource(_loc25_,_loc26_);
            a595de16[_loc24_] = _loc23_;
         }
         return _loc23_;
      }
   }
}

