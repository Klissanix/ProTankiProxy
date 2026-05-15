package alternativa.gfx.core
{
   import alternativa.gfx.alternativagfx;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   
   use namespace alternativagfx;
   
   [Event(name="context3DCreate",type="flash.events.Event")]
   public class Device extends EventDispatcher
   {
      
      private static const b58988a1:String = "Resource is not available.";
      
      private static var a67cbebb:int = Capabilities.version.substr(4).split(",")[0];
      
      private var d176bc87:Stage;
      
      private var e55a20e4:String;
      
      private var c3184871:String;
      
      private var c61bf0cb:int;
      
      private var c1b8c287:int;
      
      private var _width:int;
      
      private var _height:int;
      
      private var d2bbe00f:int;
      
      private var f416f203:Boolean;
      
      private var c3b55995:Boolean;
      
      private var a4ad5ded:Stage3D;
      
      private var a129fbc9:Boolean = true;
      
      private var d72b40e1:RenderState = new RenderState();
      
      private var a3e88336:Boolean = false;
      
      private var f6339794:int = -1;
      
      private var bab1659:int = -1;
      
      private var c5dae7ce:int = -1;
      
      private var c3e16cf1:Boolean = false;
      
      private var ca387f8:Dictionary = new Dictionary();
      
      public function Device(param1:Stage, param2:String = "auto", param3:String = "baseline")
      {
         super();
         this.d176bc87 = param1;
         this.e55a20e4 = param2;
         this.c3184871 = param3;
         this.a4ad5ded = this.d176bc87.stage3Ds[0];
         this.c61bf0cb = this.a4ad5ded.x;
         this.c1b8c287 = this.a4ad5ded.y;
         this._width = param1.stageWidth;
         this._height = param1.stageHeight;
         this.d2bbe00f = 0;
         this.f416f203 = true;
         this.c3b55995 = false;
         this.a4ad5ded.addEventListener("context3DCreate",this.d159e83a);
         if(this.a4ad5ded.requestContext3D.length > 1)
         {
            this.a4ad5ded.requestContext3D(param2,param3);
         }
         else
         {
            this.a4ad5ded.requestContext3D(param2);
         }
      }
      
      private function d159e83a(param1:Event) : void
      {
         var _loc5_:int = 0;
         var _loc3_:TextureResource = null;
         var _loc2_:VertexBufferResource = null;
         this.a3e88336 = false;
         this.f6339794 = -1;
         this.bab1659 = -1;
         this.c5dae7ce = -1;
         this.c3e16cf1 = false;
         var _loc4_:Context3D = this.a4ad5ded.context3D;
         _loc4_.enableErrorChecking = this.c3b55995;
         if(a67cbebb > 50)
         {
            _loc4_["ignoreResourceLimits"] = true;
         }
         for(var _loc6_ in this.ca387f8)
         {
            this.uploadResource(_loc6_);
            delete this.ca387f8[_loc6_];
         }
         _loc4_.setBlendFactors(this.d72b40e1.blendSourceFactor,this.d72b40e1.blendDestinationFactor);
         _loc4_.setColorMask(this.d72b40e1.colorMaskRed,this.d72b40e1.colorMaskGreen,this.d72b40e1.colorMaskBlue,this.d72b40e1.colorMaskAlpha);
         _loc4_.setCulling(this.d72b40e1.culling);
         _loc4_.setDepthTest(this.d72b40e1.depthTestMask,this.d72b40e1.depthTestPassCompareMode);
         if(this.d72b40e1.program != null)
         {
            if(!this.d72b40e1.program.available)
            {
               throw new Error("Resource is not available.");
            }
            this.f31eed75(_loc4_,this.d72b40e1.program);
            _loc4_.setProgram(this.d72b40e1.program.program);
         }
         if(this.d72b40e1.renderTarget != null)
         {
            if(!this.d72b40e1.renderTarget.available)
            {
               throw new Error("Resource is not available.");
            }
            this.f31eed75(_loc4_,this.d72b40e1.renderTarget);
            _loc4_.setRenderToTexture(this.d72b40e1.renderTarget.texture,this.d72b40e1.renderTargetEnableDepthAndStencil,this.d72b40e1.renderTargetAntiAlias,this.d72b40e1.renderTargetSurfaceSelector);
         }
         if(this.d72b40e1.scissor)
         {
            _loc4_.setScissorRectangle(this.d72b40e1.scissorRectangle);
         }
         else
         {
            _loc4_.setScissorRectangle(null);
         }
         _loc4_.setStencilActions(this.d72b40e1.stencilActionTriangleFace,this.d72b40e1.stencilActionCompareMode,this.d72b40e1.stencilActionOnBothPass,this.d72b40e1.stencilActionOnDepthFail,this.d72b40e1.stencilActionOnDepthPassStencilFail);
         _loc4_.setStencilReferenceValue(this.d72b40e1.stencilReferenceValue,this.d72b40e1.stencilReadMask,this.d72b40e1.stencilWriteMask);
         while(_loc5_ < 8)
         {
            _loc3_ = this.d72b40e1.textures[_loc5_];
            if(_loc3_ != null)
            {
               if(!_loc3_.available)
               {
                  throw new Error("Resource is not available.");
               }
               this.f31eed75(_loc4_,_loc3_);
               _loc4_.setTextureAt(_loc5_,_loc3_.texture);
            }
            _loc2_ = this.d72b40e1.vertexBuffers[_loc5_];
            if(_loc2_ != null)
            {
               if(!_loc2_.available)
               {
                  throw new Error("Resource is not available.");
               }
               this.f31eed75(_loc4_,_loc2_);
               _loc4_.setVertexBufferAt(_loc5_,_loc2_.buffer,this.d72b40e1.vertexBuffersOffsets[_loc5_],this.d72b40e1.vertexBuffersFormats[_loc5_]);
            }
            _loc5_++;
         }
         _loc4_.setProgramConstantsFromVector("vertex",0,this.d72b40e1.vertexConstants,128);
         _loc4_.setProgramConstantsFromVector("fragment",0,this.d72b40e1.fragmentConstants,28);
         dispatchEvent(new Event("context3DCreate"));
      }
      
      public function dispose() : void
      {
         this.a4ad5ded.removeEventListener("context3DCreate",this.d159e83a);
         if(this.a4ad5ded.context3D != null)
         {
            this.a4ad5ded.context3D.dispose();
         }
         for(var _loc1_ in this.ca387f8)
         {
            delete this.ca387f8[_loc1_];
         }
         this.d72b40e1 = new RenderState();
         this.a129fbc9 = false;
      }
      
      public function reset() : void
      {
         if(this.a4ad5ded.context3D != null)
         {
            this.a4ad5ded.context3D.dispose();
         }
         else
         {
            for(var _loc1_ in this.ca387f8)
            {
               delete this.ca387f8[_loc1_];
            }
         }
         this.d72b40e1 = new RenderState();
      }
      
      public function get available() : Boolean
      {
         return this.a129fbc9;
      }
      
      public function get ready() : Boolean
      {
         return this.a4ad5ded.context3D != null;
      }
      
      public function get stage() : Stage
      {
         return this.d176bc87;
      }
      
      public function get stage3DIndex() : int
      {
         return 0;
      }
      
      public function get renderMode() : String
      {
         return this.e55a20e4;
      }
      
      public function get profile() : String
      {
         return this.c3184871;
      }
      
      public function get x() : int
      {
         return this.c61bf0cb;
      }
      
      public function set x(param1:int) : void
      {
         this.c61bf0cb = param1;
      }
      
      public function get y() : int
      {
         return this.c1b8c287;
      }
      
      public function set y(param1:int) : void
      {
         this.c1b8c287 = param1;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function set width(param1:int) : void
      {
         this._width = param1;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function set height(param1:int) : void
      {
         this._height = param1;
      }
      
      public function get antiAlias() : int
      {
         return this.d2bbe00f;
      }
      
      public function set antiAlias(param1:int) : void
      {
         if(param1 != 0 && param1 != 2 && param1 != 4 && param1 != 16)
         {
            throw new Error("Invalid antialiasing value.");
         }
         this.d2bbe00f = param1;
      }
      
      public function get enableDepthAndStencil() : Boolean
      {
         return this.f416f203;
      }
      
      public function set enableDepthAndStencil(param1:Boolean) : void
      {
         this.f416f203 = param1;
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.c3b55995;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.c3b55995 = param1;
         var _loc2_:Context3D = this.a4ad5ded.context3D;
         if(_loc2_ != null && _loc2_.enableErrorChecking != this.c3b55995)
         {
            _loc2_.enableErrorChecking = this.c3b55995;
         }
      }
      
      public function uploadResource(param1:Resource) : void
      {
         if(!param1.available)
         {
            throw new Error("Resource is not available.");
         }
         var _loc2_:Context3D = this.a4ad5ded.context3D;
         if(_loc2_ != null)
         {
            if(!param1.isCreated(_loc2_))
            {
               param1.create(_loc2_);
            }
            param1.upload();
         }
         else
         {
            this.ca387f8[param1] = true;
         }
      }
      
      private function f31eed75(param1:Context3D, param2:Resource) : void
      {
         if(!param2.isCreated(param1))
         {
            param2.create(param1);
            param2.upload();
         }
      }
      
      public function setBlendFactors(param1:String, param2:String) : void
      {
         var _loc3_:Context3D = null;
         if(param1 != this.d72b40e1.blendSourceFactor || param2 != this.d72b40e1.blendDestinationFactor)
         {
            this.d72b40e1.blendSourceFactor = param1;
            this.d72b40e1.blendDestinationFactor = param2;
            _loc3_ = this.a4ad5ded.context3D;
            if(_loc3_ != null)
            {
               _loc3_.setBlendFactors(param1,param2);
            }
         }
      }
      
      public function setColorMask(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Context3D = null;
         if(param1 != this.d72b40e1.colorMaskRed || param2 != this.d72b40e1.colorMaskGreen || param3 != this.d72b40e1.colorMaskBlue || param4 != this.d72b40e1.colorMaskAlpha)
         {
            this.d72b40e1.colorMaskRed = param1;
            this.d72b40e1.colorMaskGreen = param2;
            this.d72b40e1.colorMaskBlue = param3;
            this.d72b40e1.colorMaskAlpha = param4;
            _loc5_ = this.a4ad5ded.context3D;
            if(_loc5_ != null)
            {
               _loc5_.setColorMask(param1,param2,param3,param4);
            }
         }
      }
      
      public function setCulling(param1:String) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != this.d72b40e1.culling)
         {
            this.d72b40e1.culling = param1;
            _loc2_ = this.a4ad5ded.context3D;
            if(_loc2_ != null)
            {
               _loc2_.setCulling(param1);
            }
         }
      }
      
      public function setDepthTest(param1:Boolean, param2:String) : void
      {
         var _loc3_:Context3D = null;
         if(param1 != this.d72b40e1.depthTestMask || param2 != this.d72b40e1.depthTestPassCompareMode)
         {
            this.d72b40e1.depthTestMask = param1;
            this.d72b40e1.depthTestPassCompareMode = param2;
            _loc3_ = this.a4ad5ded.context3D;
            if(_loc3_ != null)
            {
               _loc3_.setDepthTest(param1,param2);
            }
         }
      }
      
      public function setProgram(param1:ProgramResource) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != this.d72b40e1.program)
         {
            if(!param1.available)
            {
               throw new Error("Resource is not available.");
            }
            this.d72b40e1.program = param1;
            _loc2_ = this.a4ad5ded.context3D;
            if(_loc2_ != null)
            {
               this.f31eed75(_loc2_,param1);
               _loc2_.setProgram(param1.program);
            }
         }
      }
      
      public function setRenderToBackBuffer() : void
      {
         var _loc1_:Context3D = null;
         if(this.d72b40e1.renderTarget != null)
         {
            this.d72b40e1.renderTarget = null;
            _loc1_ = this.a4ad5ded.context3D;
            if(_loc1_ != null)
            {
               _loc1_.setRenderToBackBuffer();
            }
         }
      }
      
      public function setRenderToTexture(param1:TextureResource, param2:Boolean = false, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:Context3D = null;
         if(param1 != this.d72b40e1.renderTarget || param2 != this.d72b40e1.renderTargetEnableDepthAndStencil || param3 != this.d72b40e1.renderTargetAntiAlias || param4 != this.d72b40e1.renderTargetSurfaceSelector)
         {
            if(param1 != null && !param1.available)
            {
               throw new Error("Resource is not available.");
            }
            this.d72b40e1.renderTarget = param1;
            this.d72b40e1.renderTargetEnableDepthAndStencil = param2;
            this.d72b40e1.renderTargetAntiAlias = param3;
            this.d72b40e1.renderTargetSurfaceSelector = param4;
            _loc5_ = this.a4ad5ded.context3D;
            if(_loc5_ != null)
            {
               if(param1 != null)
               {
                  this.f31eed75(_loc5_,param1);
                  _loc5_.setRenderToTexture(param1.texture,param2,param3,param4);
               }
               else
               {
                  _loc5_.setRenderToBackBuffer();
               }
            }
         }
      }
      
      public function setScissorRectangle(param1:Rectangle) : void
      {
         var _loc2_:Context3D = this.a4ad5ded.context3D;
         if(param1 != null)
         {
            if(this.d72b40e1.scissor)
            {
               if(param1.x != this.d72b40e1.scissorRectangle.x || param1.y != this.d72b40e1.scissorRectangle.y || param1.width != this.d72b40e1.scissorRectangle.width || param1.height != this.d72b40e1.scissorRectangle.height)
               {
                  this.d72b40e1.scissorRectangle.x = param1.x;
                  this.d72b40e1.scissorRectangle.y = param1.y;
                  this.d72b40e1.scissorRectangle.width = param1.width;
                  this.d72b40e1.scissorRectangle.height = param1.height;
                  if(_loc2_ != null)
                  {
                     _loc2_.setScissorRectangle(param1);
                  }
               }
            }
            else
            {
               this.d72b40e1.scissor = true;
               this.d72b40e1.scissorRectangle.x = param1.x;
               this.d72b40e1.scissorRectangle.y = param1.y;
               this.d72b40e1.scissorRectangle.width = param1.width;
               this.d72b40e1.scissorRectangle.height = param1.height;
               if(_loc2_ != null)
               {
                  _loc2_.setScissorRectangle(param1);
               }
            }
         }
         else
         {
            this.d72b40e1.scissor = false;
            if(_loc2_ != null)
            {
               _loc2_.setScissorRectangle(null);
            }
         }
      }
      
      public function setStencilActions(param1:String = "frontAndBack", param2:String = "always", param3:String = "keep", param4:String = "keep", param5:String = "keep") : void
      {
         var _loc6_:Context3D = null;
         if(param1 != this.d72b40e1.stencilActionTriangleFace || param2 != this.d72b40e1.stencilActionCompareMode || param3 != this.d72b40e1.stencilActionOnBothPass || param4 != this.d72b40e1.stencilActionOnDepthFail || param5 != this.d72b40e1.stencilActionOnDepthPassStencilFail)
         {
            this.d72b40e1.stencilActionTriangleFace = param1;
            this.d72b40e1.stencilActionCompareMode = param2;
            this.d72b40e1.stencilActionOnBothPass = param3;
            this.d72b40e1.stencilActionOnDepthFail = param4;
            this.d72b40e1.stencilActionOnDepthPassStencilFail = param5;
            _loc6_ = this.a4ad5ded.context3D;
            if(_loc6_ != null)
            {
               _loc6_.setStencilActions(param1,param2,param3,param4,param5);
            }
         }
      }
      
      public function setStencilReferenceValue(param1:uint, param2:uint = 255, param3:uint = 255) : void
      {
         var _loc4_:Context3D = null;
         if(param1 != this.d72b40e1.stencilReferenceValue || param2 != this.d72b40e1.stencilReadMask || param3 != this.d72b40e1.stencilWriteMask)
         {
            this.d72b40e1.stencilReferenceValue = param1;
            this.d72b40e1.stencilReadMask = param2;
            this.d72b40e1.stencilWriteMask = param3;
            _loc4_ = this.a4ad5ded.context3D;
            if(_loc4_ != null)
            {
               _loc4_.setStencilReferenceValue(param1,param2,param3);
            }
         }
      }
      
      public function setTextureAt(param1:int, param2:TextureResource) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != this.d72b40e1.textures[param1])
         {
            if(param2 != null && !param2.available)
            {
               throw new Error("Resource is not available.");
            }
            this.d72b40e1.textures[param1] = param2;
            _loc3_ = this.a4ad5ded.context3D;
            if(_loc3_ != null)
            {
               if(param2 != null)
               {
                  this.f31eed75(_loc3_,param2);
                  _loc3_.setTextureAt(param1,param2.texture);
               }
               else
               {
                  _loc3_.setTextureAt(param1,null);
               }
            }
         }
      }
      
      public function setVertexBufferAt(param1:int, param2:VertexBufferResource, param3:int = 0, param4:String = "float4") : void
      {
         var _loc5_:Context3D = null;
         if(param2 != this.d72b40e1.vertexBuffers[param1] || param3 != this.d72b40e1.vertexBuffersOffsets[param1] || param4 != this.d72b40e1.vertexBuffersFormats[param1])
         {
            if(param2 != null && !param2.available)
            {
               throw new Error("Resource is not available.");
            }
            this.d72b40e1.vertexBuffers[param1] = param2;
            this.d72b40e1.vertexBuffersOffsets[param1] = param3;
            this.d72b40e1.vertexBuffersFormats[param1] = param4;
            _loc5_ = this.a4ad5ded.context3D;
            if(_loc5_ != null)
            {
               if(param2 != null)
               {
                  this.f31eed75(_loc5_,param2);
                  _loc5_.setVertexBufferAt(param1,param2.buffer,param3,param4);
               }
               else
               {
                  _loc5_.setVertexBufferAt(param1,null);
               }
            }
         }
      }
      
      public function setProgramConstantsFromVector(param1:String, param2:int, param3:Vector.<Number>, param4:int = -1, param5:Boolean = true) : void
      {
         var _loc8_:int = 0;
         var _loc7_:Context3D = null;
         var _loc10_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc9_:int = param2 << 2;
         var _loc6_:int = int(param4 < 0 ? param3.length : param4 << 2);
         var _loc11_:Vector.<Number> = param1 == "vertex" ? this.d72b40e1.vertexConstants : this.d72b40e1.fragmentConstants;
         if(param5)
         {
            _loc10_ = false;
            while(_loc8_ < _loc6_)
            {
               _loc12_ = param3[_loc8_];
               if(_loc12_ != _loc11_[_loc9_])
               {
                  _loc11_[_loc9_] = _loc12_;
                  _loc10_ = true;
               }
               _loc8_++;
               _loc9_++;
            }
            if(_loc10_)
            {
               _loc7_ = this.a4ad5ded.context3D;
               if(_loc7_ != null)
               {
                  _loc7_.setProgramConstantsFromVector(param1,param2,param3,param4);
               }
            }
         }
         else
         {
            while(_loc8_ < _loc6_)
            {
               _loc11_[_loc9_] = param3[_loc8_];
               _loc8_++;
               _loc9_++;
            }
            _loc7_ = this.a4ad5ded.context3D;
            if(_loc7_ != null)
            {
               _loc7_.setProgramConstantsFromVector(param1,param2,param3,param4);
            }
         }
      }
      
      public function clear(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 1, param6:uint = 0, param7:uint = 4294967295) : void
      {
         var _loc13_:int = 0;
         var _loc11_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc12_:Context3D = this.a4ad5ded.context3D;
         if(_loc12_ != null)
         {
            if(!this.a3e88336)
            {
               _loc13_ = 50;
               _loc11_ = this._width;
               _loc8_ = this._height;
               if(this.c3184871 == "baselineConstrained")
               {
                  _loc9_ = this.c61bf0cb;
                  _loc10_ = this.c1b8c287;
                  if(_loc9_ < 0)
                  {
                     _loc9_ = 0;
                  }
                  if(_loc10_ < 0)
                  {
                     _loc10_ = 0;
                  }
                  if(_loc9_ + _loc11_ > this.stage.stageWidth)
                  {
                     _loc11_ = this.stage.stageWidth - _loc9_;
                  }
                  if(_loc10_ + _loc8_ > this.stage.stageHeight)
                  {
                     _loc8_ = this.stage.stageHeight - _loc10_;
                  }
                  if(_loc9_ != this.a4ad5ded.x || _loc10_ != this.a4ad5ded.y || _loc11_ != this.f6339794 || _loc8_ != this.bab1659 || this.f416f203 != this.c3e16cf1)
                  {
                     _loc12_.configureBackBuffer(_loc13_,_loc13_,0,this.f416f203);
                     this.a4ad5ded.x = _loc9_;
                     this.a4ad5ded.y = _loc10_;
                     _loc12_.configureBackBuffer(_loc11_,_loc8_,0,this.f416f203);
                     this.f6339794 = _loc11_;
                     this.bab1659 = _loc8_;
                     this.c5dae7ce = this.d2bbe00f;
                     this.c3e16cf1 = this.f416f203;
                  }
               }
               else
               {
                  if(this.a4ad5ded.x != this.c61bf0cb)
                  {
                     this.a4ad5ded.x = this.c61bf0cb;
                  }
                  if(this.a4ad5ded.y != this.c1b8c287)
                  {
                     this.a4ad5ded.y = this.c1b8c287;
                  }
                  if(_loc11_ < _loc13_)
                  {
                     _loc11_ = _loc13_;
                  }
                  if(_loc8_ < _loc13_)
                  {
                     _loc8_ = _loc13_;
                  }
                  if(_loc11_ != this.f6339794 || _loc8_ != this.bab1659 || this.d2bbe00f != this.c5dae7ce || this.f416f203 != this.c3e16cf1)
                  {
                     _loc12_.configureBackBuffer(_loc11_,_loc8_,this.d2bbe00f,this.f416f203);
                     this.f6339794 = _loc11_;
                     this.bab1659 = _loc8_;
                     this.c5dae7ce = this.d2bbe00f;
                     this.c3e16cf1 = this.f416f203;
                  }
               }
               this.a3e88336 = true;
            }
            _loc12_.clear(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:Context3D = this.a4ad5ded.context3D;
         if(_loc2_ != null)
         {
            _loc2_.drawToBitmapData(param1);
         }
      }
      
      public function drawTriangles(param1:IndexBufferResource, param2:int = 0, param3:int = -1) : void
      {
         if(!param1.available)
         {
            throw new Error("Resource is not available.");
         }
         var _loc4_:Context3D = this.a4ad5ded.context3D;
         if(_loc4_ != null)
         {
            this.f31eed75(_loc4_,param1);
            try
            {
               _loc4_.drawTriangles(param1.buffer,param2,param3);
            }
            catch(b5bcf7af:Error)
            {
            }
         }
      }
      
      public function present() : void
      {
         this.d72b40e1.renderTarget = null;
         var _loc1_:Context3D = this.a4ad5ded.context3D;
         if(_loc1_ != null)
         {
            _loc1_.present();
         }
         this.a3e88336 = false;
      }
   }
}

