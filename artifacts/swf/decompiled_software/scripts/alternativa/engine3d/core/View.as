package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Mouse;
   import flash.utils.setTimeout;
   
   use namespace alternativa3d;
   
   public class View extends Canvas
   {
      
      private static const mouse:Point = new Point();
      
      private static const b7f828c:Vector.<Object3D> = new Vector.<Object3D>();
      
      private static const f2e2bd31:Vector.<Object3D> = new Vector.<Object3D>();
      
      private static const dfcf0c4:Vector.<Object3D> = new Vector.<Object3D>();
      
      private static const d1fd898e:Vector.<Function> = new Vector.<Function>();
      
      alternativa3d var _width:Number;
      
      alternativa3d var _height:Number;
      
      alternativa3d var constrained:Boolean;
      
      alternativa3d var device:Object;
      
      private var e42f2062:MouseEvent;
      
      private var camera:Camera3D;
      
      private var target:Object3D;
      
      private var e361b14c:Object3D;
      
      private var d3695d6b:Object3D;
      
      private var d45a8f7e:Object3D;
      
      private var altKey:Boolean;
      
      private var ctrlKey:Boolean;
      
      private var shiftKey:Boolean;
      
      private var delta:int;
      
      private var buttonDown:Boolean;
      
      private var a6dd31f0:Sprite;
      
      private var e2954423:Logo;
      
      private var bitmap:Bitmap;
      
      private var b58eef35:String = "BR";
      
      private var b7466984:Number = 0;
      
      private var f61dcd43:Number = 0;
      
      public var enableErrorChecking:Boolean = false;
      
      public var zBufferPrecision:int = 16;
      
      public var antiAliasEnabled:Boolean = true;
      
      public var offsetX:Number = 0;
      
      public var offsetY:Number = 0;
      
      public function View(param1:Number, param2:Number, param3:Boolean = false)
      {
         super();
         this._width = param1;
         this._height = param2;
         mouseEnabled = true;
         mouseChildren = true;
         doubleClickEnabled = true;
         buttonMode = true;
         useHandCursor = false;
         tabEnabled = false;
         tabChildren = false;
         this.a6dd31f0 = new Sprite();
         this.a6dd31f0.graphics.beginFill(16711680);
         this.a6dd31f0.graphics.drawRect(0,0,param1,param2);
         this.a6dd31f0.mouseEnabled = false;
         this.a6dd31f0.visible = false;
         hitArea = this.a6dd31f0;
         super.addChild(hitArea);
         this.showLogo();
         addEventListener("mouseDown",this.onMouseDown);
         addEventListener("click",this.b681add8);
         addEventListener("doubleClick",this.e4caca61);
         addEventListener("mouseMove",this.e2b297cd);
         addEventListener("mouseOver",this.e2b297cd);
         addEventListener("mouseOut",this.d5a65cd4);
         addEventListener("mouseWheel",this.b49b0aa5);
         addEventListener("addedToStage",this.df55f10);
         addEventListener("removedFromStage",this.c31d85ac);
      }
      
      private function b11f3775(param1:ContextMenuEvent) : void
      {
         try
         {
            navigateToURL(new URLRequest("http://alternativaplatform.com"),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function df55f10(param1:Event) : void
      {
         stage.addEventListener("keyDown",this.onKeyDown);
         stage.addEventListener("keyUp",this.onKeyUp);
      }
      
      private function c31d85ac(param1:Event) : void
      {
         stage.removeEventListener("keyDown",this.onKeyDown);
         stage.removeEventListener("keyUp",this.onKeyUp);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         this.altKey = param1.altKey;
         this.ctrlKey = param1.ctrlKey;
         this.shiftKey = param1.shiftKey;
         if(this.ctrlKey && this.shiftKey && param1.keyCode == 112 && this.bitmap == null)
         {
            this.bitmap = new Bitmap(Logo.image);
            this.bitmap.x = Math.round((this._width - this.bitmap.width) / 2);
            this.bitmap.y = Math.round((this._height - this.bitmap.height) / 2);
            super.addChild(this.bitmap);
            setTimeout(this.f59e97f6,2048);
         }
      }
      
      private function f59e97f6() : void
      {
         if(this.bitmap != null)
         {
            super.removeChild(this.bitmap);
            this.bitmap = null;
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         this.altKey = param1.altKey;
         this.ctrlKey = param1.ctrlKey;
         this.shiftKey = param1.shiftKey;
      }
      
      private function b228110d(param1:MouseEvent) : void
      {
         this.altKey = param1.altKey;
         this.ctrlKey = param1.ctrlKey;
         this.shiftKey = param1.shiftKey;
         this.buttonDown = param1.buttonDown;
         this.delta = param1.delta;
         this.e42f2062 = param1;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.a297da2(param1);
         if(this.target != null)
         {
            this.f482ec0d("mouseDown3D",this.target,this.a3d28d50(this.target,b7f828c));
         }
         this.e361b14c = this.target;
         this.target = null;
      }
      
      private function b49b0aa5(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.a297da2(param1);
         if(this.target != null)
         {
            this.f482ec0d("mouseWheel3D",this.target,this.a3d28d50(this.target,b7f828c));
         }
         this.target = null;
      }
      
      private function b681add8(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.a297da2(param1);
         if(this.target != null)
         {
            this.f482ec0d("mouseUp3D",this.target,this.a3d28d50(this.target,b7f828c));
            if(this.e361b14c == this.target)
            {
               this.d3695d6b = this.target;
               this.f482ec0d("click3D",this.target,this.a3d28d50(this.target,b7f828c));
            }
         }
         this.e361b14c = null;
         this.target = null;
      }
      
      private function e4caca61(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.a297da2(param1);
         if(this.target != null)
         {
            this.f482ec0d("mouseUp3D",this.target,this.a3d28d50(this.target,b7f828c));
            if(this.e361b14c == this.target)
            {
               this.f482ec0d(this.d3695d6b == this.target && this.target.doubleClickEnabled ? "doubleClick3D" : "click3D",this.target,this.a3d28d50(this.target,b7f828c));
            }
         }
         this.d3695d6b = null;
         this.e361b14c = null;
         this.target = null;
      }
      
      private function e2b297cd(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.a297da2(param1);
         if(this.target != null)
         {
            this.f482ec0d("mouseMove3D",this.target,this.a3d28d50(this.target,b7f828c));
         }
         if(this.d45a8f7e != this.target)
         {
            this.b744db7e();
         }
         this.target = null;
      }
      
      private function d5a65cd4(param1:MouseEvent) : void
      {
         this.b228110d(param1);
         this.e42f2062 = null;
         this.target = null;
         if(this.d45a8f7e != this.target)
         {
            this.b744db7e();
         }
         this.target = null;
      }
      
      alternativa3d function onRender(param1:Camera3D) : void
      {
         this.camera = param1;
         if(this.e42f2062 != null)
         {
            this.a297da2(this.e42f2062);
            if(this.d45a8f7e != this.target)
            {
               this.b744db7e();
            }
         }
         this.target = null;
      }
      
      private function b744db7e() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:Object3D = null;
         this.a3d28d50(this.target,b7f828c);
         this.a3d28d50(this.d45a8f7e,f2e2bd31);
         var _loc2_:int = int(b7f828c.length);
         var _loc5_:int = int(f2e2bd31.length);
         if(this.d45a8f7e != null)
         {
            this.f482ec0d("mouseOut3D",this.d45a8f7e,f2e2bd31,true,this.target);
            _loc1_ = 0;
            _loc3_ = 0;
            while(_loc3_ < _loc5_)
            {
               _loc6_ = f2e2bd31[_loc3_];
               _loc4_ = 0;
               while(_loc4_ < _loc2_)
               {
                  if(_loc6_ == b7f828c[_loc4_])
                  {
                     break;
                  }
                  _loc4_++;
               }
               if(_loc4_ == _loc2_)
               {
                  dfcf0c4[_loc1_] = _loc6_;
                  _loc1_++;
               }
               _loc3_++;
            }
            if(_loc1_ > 0)
            {
               dfcf0c4.length = _loc1_;
               this.f482ec0d("rollOut3D",this.d45a8f7e,dfcf0c4,false,this.target);
            }
         }
         if(this.target != null)
         {
            _loc1_ = 0;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc6_ = b7f828c[_loc3_];
               _loc4_ = 0;
               while(_loc4_ < _loc5_)
               {
                  if(_loc6_ == f2e2bd31[_loc4_])
                  {
                     break;
                  }
                  _loc4_++;
               }
               if(_loc4_ == _loc5_)
               {
                  dfcf0c4[_loc1_] = _loc6_;
                  _loc1_++;
               }
               _loc3_++;
            }
            if(_loc1_ > 0)
            {
               dfcf0c4.length = _loc1_;
               this.f482ec0d("rollOver3D",this.target,dfcf0c4,false,this.d45a8f7e);
            }
            this.f482ec0d("mouseOver3D",this.target,b7f828c,true,this.d45a8f7e);
            useHandCursor = this.target.useHandCursor;
         }
         else
         {
            useHandCursor = false;
         }
         Mouse.cursor = Mouse.cursor;
         this.d45a8f7e = this.target;
      }
      
      private function a3d28d50(param1:Object3D, param2:Vector.<Object3D>) : Vector.<Object3D>
      {
         var _loc3_:int = 0;
         while(param1 != null)
         {
            param2[_loc3_] = param1;
            _loc3_++;
            param1 = param1._parent;
         }
         param2.length = _loc3_;
         return param2;
      }
      
      private function f482ec0d(param1:String, param2:Object3D, param3:Vector.<Object3D>, param4:Boolean = true, param5:Object3D = null) : void
      {
         var _loc12_:Object3D = null;
         var _loc6_:* = undefined;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc9_:MouseEvent3D = null;
         var _loc7_:int = int(param3.length);
         _loc10_ = _loc7_ - 1;
         while(_loc10_ > 0)
         {
            _loc12_ = param3[_loc10_];
            if(_loc12_.captureListeners != null)
            {
               _loc6_ = _loc12_.captureListeners[param1];
               if(_loc6_ != null)
               {
                  if(_loc9_ == null)
                  {
                     _loc9_ = new MouseEvent3D(param1,param4,param5,this.altKey,this.ctrlKey,this.shiftKey,this.buttonDown,this.delta);
                     _loc9_._target = param2;
                     _loc9_.calculateLocalRay(mouseX,mouseY,param2,this.camera);
                  }
                  _loc9_._currentTarget = _loc12_;
                  _loc9_._eventPhase = 1;
                  _loc8_ = int(_loc6_.length);
                  _loc11_ = 0;
                  while(_loc11_ < _loc8_)
                  {
                     d1fd898e[_loc11_] = _loc6_[_loc11_];
                     _loc11_++;
                  }
                  _loc11_ = 0;
                  while(_loc11_ < _loc8_)
                  {
                     (d1fd898e[_loc11_] as Function).call(null,_loc9_);
                     if(_loc9_.stopImmediate)
                     {
                        return;
                     }
                     _loc11_++;
                  }
                  if(_loc9_.stop)
                  {
                     return;
                  }
               }
            }
            _loc10_--;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc7_)
         {
            _loc12_ = param3[_loc10_];
            if(_loc12_.bubbleListeners != null)
            {
               _loc6_ = _loc12_.bubbleListeners[param1];
               if(_loc6_ != null)
               {
                  if(_loc9_ == null)
                  {
                     _loc9_ = new MouseEvent3D(param1,param4,param5,this.altKey,this.ctrlKey,this.shiftKey,this.buttonDown,this.delta);
                     _loc9_._target = param2;
                     _loc9_.calculateLocalRay(mouseX,mouseY,param2,this.camera);
                  }
                  _loc9_._currentTarget = _loc12_;
                  _loc9_._eventPhase = _loc10_ == 0 ? 2 : 3;
                  _loc8_ = int(_loc6_.length);
                  _loc11_ = 0;
                  while(_loc11_ < _loc8_)
                  {
                     d1fd898e[_loc11_] = _loc6_[_loc11_];
                     _loc11_++;
                  }
                  _loc11_ = 0;
                  while(_loc11_ < _loc8_)
                  {
                     (d1fd898e[_loc11_] as Function).call(null,_loc9_);
                     if(_loc9_.stopImmediate)
                     {
                        return;
                     }
                     _loc11_++;
                  }
                  if(_loc9_.stop)
                  {
                     return;
                  }
               }
            }
            _loc10_++;
         }
      }
      
      private function a297da2(param1:MouseEvent) : void
      {
         var _loc7_:Object3D = null;
         var _loc9_:Object3D = null;
         var _loc2_:Canvas = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:Object3D = null;
         var _loc3_:Object3D = null;
         mouse.x = param1.localX;
         mouse.y = param1.localY;
         var _loc5_:Array = stage != null ? stage.getObjectsUnderPoint(localToGlobal(mouse)) : super.getObjectsUnderPoint(mouse);
         var _loc8_:int = _loc5_.length - 1;
         while(_loc8_ >= 0)
         {
            _loc2_ = null;
            _loc4_ = _loc5_[_loc8_];
            while(_loc4_.parent != stage)
            {
               _loc2_ = _loc4_ as Canvas;
               if(_loc2_ != null)
               {
                  break;
               }
               _loc4_ = _loc4_.parent;
            }
            if(_loc2_ != null)
            {
               _loc9_ = _loc2_.object;
               if(_loc9_ != null)
               {
                  _loc6_ = null;
                  _loc3_ = _loc9_;
                  while(_loc3_ != null)
                  {
                     if(_loc3_ is Object3DContainer && !Object3DContainer(_loc3_).mouseChildren)
                     {
                        _loc6_ = null;
                     }
                     if(_loc6_ == null && _loc3_.mouseEnabled)
                     {
                        _loc6_ = _loc3_;
                     }
                     _loc3_ = _loc3_._parent;
                  }
                  if(_loc6_ != null)
                  {
                     if(this.target != null)
                     {
                        _loc3_ = _loc6_;
                        while(_loc3_ != null)
                        {
                           if(_loc3_ == this.target)
                           {
                              _loc7_ = _loc9_;
                              this.target = _loc6_;
                              break;
                           }
                           _loc3_ = _loc3_._parent;
                        }
                     }
                     else
                     {
                        _loc7_ = _loc9_;
                        this.target = _loc6_;
                     }
                     if(_loc7_ == this.target)
                     {
                        break;
                     }
                  }
               }
            }
            _loc8_--;
         }
      }
      
      override public function getObjectsUnderPoint(param1:Point) : Array
      {
         var _loc2_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc3_:Canvas = null;
         var _loc8_:int = 0;
         var _loc7_:Array = [];
         var _loc4_:Array = stage != null ? stage.getObjectsUnderPoint(param1) : super.getObjectsUnderPoint(param1);
         var _loc6_:int = _loc4_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc5_ = _loc4_[_loc6_];
            while(_loc5_ != null)
            {
               _loc3_ = _loc5_ as Canvas;
               if(_loc3_ != null)
               {
                  if(_loc3_.object != null)
                  {
                     _loc8_ = 0;
                     while(_loc8_ < _loc2_)
                     {
                        if(_loc7_[_loc8_] == _loc3_.object)
                        {
                           break;
                        }
                        _loc8_++;
                     }
                     if(_loc8_ == _loc2_)
                     {
                        _loc7_.unshift(_loc3_.object);
                        _loc2_++;
                     }
                  }
                  break;
               }
               _loc5_ = _loc5_.parent;
            }
            _loc6_--;
         }
         return _loc7_;
      }
      
      public function showLogo() : void
      {
         if(this.e2954423 == null)
         {
            this.e2954423 = new Logo();
            super.addChild(this.e2954423);
            this.e73a20b3();
         }
      }
      
      public function hideLogo() : void
      {
         if(this.e2954423 != null)
         {
            super.removeChild(this.e2954423);
            this.e2954423 = null;
         }
      }
      
      public function get logoAlign() : String
      {
         return this.b58eef35;
      }
      
      public function set logoAlign(param1:String) : void
      {
         this.b58eef35 = param1;
         this.e73a20b3();
      }
      
      public function get logoHorizontalMargin() : Number
      {
         return this.b7466984;
      }
      
      public function set logoHorizontalMargin(param1:Number) : void
      {
         this.b7466984 = param1;
         this.e73a20b3();
      }
      
      public function get logoVerticalMargin() : Number
      {
         return this.f61dcd43;
      }
      
      public function set logoVerticalMargin(param1:Number) : void
      {
         this.f61dcd43 = param1;
         this.e73a20b3();
      }
      
      private function e73a20b3() : void
      {
         if(this.e2954423 != null)
         {
            if(this.b58eef35 == "TL" || this.b58eef35 == "L" || this.b58eef35 == "BL")
            {
               this.e2954423.x = Math.round(this.b7466984);
            }
            if(this.b58eef35 == "T" || this.b58eef35 == "B")
            {
               this.e2954423.x = Math.round((this._width - this.e2954423.width) / 2);
            }
            if(this.b58eef35 == "TR" || this.b58eef35 == "R" || this.b58eef35 == "BR")
            {
               this.e2954423.x = Math.round(this._width - this.b7466984 - this.e2954423.width);
            }
            if(this.b58eef35 == "TL" || this.b58eef35 == "T" || this.b58eef35 == "TR")
            {
               this.e2954423.y = Math.round(this.f61dcd43);
            }
            if(this.b58eef35 == "L" || this.b58eef35 == "R")
            {
               this.e2954423.y = Math.round((this._height - this.e2954423.height) / 2);
            }
            if(this.b58eef35 == "BL" || this.b58eef35 == "B" || this.b58eef35 == "BR")
            {
               this.e2954423.y = Math.round(this._height - this.f61dcd43 - this.e2954423.height);
            }
         }
      }
      
      public function clear() : void
      {
         this.remChildren(0);
         numDraws = 0;
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.a6dd31f0.width = param1;
         this.e73a20b3();
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.a6dd31f0.height = param1;
         this.e73a20b3();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function getChildAt(param1:int) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function getChildIndex(param1:DisplayObject) : int
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function swapChildren(param1:DisplayObject, param2:DisplayObject) : void
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function swapChildrenAt(param1:int, param2:int) : void
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function getChildByName(param1:String) : DisplayObject
      {
         throw new Error("Unsupported operation.");
      }
      
      override public function get numChildren() : int
      {
         return 0;
      }
      
      override alternativa3d function getChildCanvas(param1:Boolean, param2:Boolean, param3:Object3D = null, param4:Number = 1, param5:String = "normal", param6:ColorTransform = null, param7:Array = null) : Canvas
      {
         var _loc8_:Canvas = null;
         var _loc9_:DisplayObject = null;
         while(true)
         {
            _loc9_ = super.getChildAt(_numChildren - 1 - numDraws);
            if(!(_numChildren > numDraws && !(_loc9_ is Canvas)))
            {
               break;
            }
            super.removeChild(_loc9_);
            _numChildren = _numChildren - 1;
         }
         if(_numChildren > numDraws++)
         {
            _loc8_ = _loc9_ as Canvas;
            if(_loc8_.modifiedGraphics)
            {
               _loc8_.gfx.clear();
            }
            if(_loc8_._numChildren > 0 && !param2)
            {
               _loc8_.remChildren(0);
            }
         }
         else
         {
            _loc8_ = collectorLength > 0 ? collector[--collectorLength] : new Canvas();
            super.addChildAt(_loc8_,0);
            _numChildren = _numChildren + 1;
         }
         _loc8_.object = param3;
         _loc8_.modifiedGraphics = param1;
         if(param4 != 1)
         {
            _loc8_.alpha = param4;
            _loc8_.modifiedAlpha = true;
         }
         else if(_loc8_.modifiedAlpha)
         {
            _loc8_.alpha = 1;
            _loc8_.modifiedAlpha = false;
         }
         if(param5 != "normal")
         {
            _loc8_.blendMode = param5;
            _loc8_.modifiedBlendMode = true;
         }
         else if(_loc8_.modifiedBlendMode)
         {
            _loc8_.blendMode = "normal";
            _loc8_.modifiedBlendMode = false;
         }
         if(param6 != null)
         {
            param6.alphaMultiplier = param4;
            _loc8_.transform.colorTransform = param6;
            _loc8_.modifiedColorTransform = true;
         }
         else if(_loc8_.modifiedColorTransform)
         {
            defaultColorTransform.alphaMultiplier = param4;
            _loc8_.transform.colorTransform = defaultColorTransform;
            _loc8_.modifiedColorTransform = false;
         }
         if(param7 != null)
         {
            _loc8_.filters = param7;
            _loc8_.modifiedFilters = true;
         }
         else if(_loc8_.modifiedFilters)
         {
            _loc8_.filters = null;
            _loc8_.modifiedFilters = false;
         }
         _loc8_.x = this._width / 2;
         _loc8_.y = this._height / 2;
         return _loc8_;
      }
      
      override alternativa3d function remChildren(param1:int) : void
      {
         var _loc2_:Canvas = null;
         while(_numChildren > param1)
         {
            _loc2_ = super.removeChildAt(0) as Canvas;
            if(_loc2_ != null)
            {
               _loc2_.object = null;
               _loc2_.x = 0;
               _loc2_.y = 0;
               if(_loc2_.modifiedGraphics)
               {
                  _loc2_.gfx.clear();
               }
               if(_loc2_._numChildren > 0)
               {
                  _loc2_.remChildren(0);
               }
               collector[collectorLength++] = _loc2_;
            }
            _numChildren = _numChildren - 1;
         }
      }
   }
}

import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.Matrix;
import flash.net.URLRequest;
import flash.net.navigateToURL;

class Logo extends Sprite
{
   
   public static const image:BitmapData = b3ecd603();
   
   private var border:int = 5;
   
   private var over:Boolean = false;
   
   public function Logo()
   {
      super();
      graphics.beginFill(16711680,0);
      graphics.drawRect(0,0,image.width + this.border + this.border,image.height + this.border + this.border);
      graphics.drawRect(this.border,this.border,image.width,image.height);
      graphics.beginBitmapFill(image,new Matrix(1,0,0,1,this.border,this.border),false,true);
      graphics.drawRect(this.border,this.border,image.width,image.height);
      tabEnabled = false;
      buttonMode = true;
      useHandCursor = true;
      addEventListener("mouseDown",this.onMouseDown);
      addEventListener("click",this.b681add8);
      addEventListener("doubleClick",this.e4caca61);
      addEventListener("mouseMove",this.e2b297cd);
      addEventListener("mouseOver",this.e2b297cd);
      addEventListener("mouseOut",this.d5a65cd4);
      addEventListener("mouseWheel",this.b49b0aa5);
   }
   
   private static function b3ecd603() : BitmapData
   {
      var _loc1_:BitmapData = new BitmapData(103,22,true,0);
      _loc1_.setVector(_loc1_.rect,new <uint>[0,0,0,0,0,0,0,0,0,0,0,0,0,0,1040187392,2701131776,2499805184,738197504,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,2516582400,0,0,0,0,2516582400,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,771751936,2533359616,4282199055,4288505883,4287716373,4280949511,2298478592,234881024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294892416,4278190080,0,0,0,0,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1728053248,4279504646,4287917866,4294285341,4294478345,4294478346,4293626391,4285810708,4278387201,1291845632,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,2516582400,2516582400,4278190080,2516582400,2516582400,4278190080,2516582400,2516582400,4278190080,2516582400,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,2516582400,4278190080,2516582400,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,4294892416,4278190080,0,0,0,0,4278190080,4294892416,4278190080,4278190080,4278190080,2516582400,2516582400,4278190080,2516582400,0,2516582400,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2197815296,4280753934,4291530288,4294412558,4294411013,4294411784,4294411784,4294411271,4294411790,4289816858,4279635461,1711276032,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,2516582400,4278190080,4294892416,4278190080,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,4278190080,4294892416,4294892416,4294892416,4294892416,4278190080,0,0,0,0,4278190080,4294892416,4294892416,4294892416,4294892416,4278190080,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2332033024,4283252258,4293301553,4294409478,4294409991,4294410761,4294476552,4294476296,4294410249,4294344200,4294343945,4291392799,4280752908,2030043136,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4278190080,2516582400,0,0,0,0,2516582400,4278190080,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2281701376,4283186471,4293692972,4294276097,4294343176,4294409225,4294475017,4293554194,4293817874,4294408967,4294342921,4294342664,4294341895,4292640548,4281936662,2197815296,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4294892416,4294892416,4294892416,4278190080,4294892416,4278190080,2516582400,4278190080,4294892416,4278190080,4294892416,4294892416,4294892416,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,0,0,0,0,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2030043136,4282068512,4293561399,4294208769,4294210313,4294407689,4294210313,4290530057,4281734151,4282851341,4291913754,4294275848,4294275591,4294275592,4294208517,4293164329,4282133785,2080374784,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4278190080,4278190080,4294892416,4278190080,0,4278190080,4294892416,4278190080,4278190080,4278190080,4278190080,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,0,0,0,0,4278190080,4294892416,4278190080,4278190080,4278190080,4294892416,4278190080,4294892416,4278190080,4278190080,4278190080,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1627389952,4280293393,4292577349,4294272769,4294208264,4294471177,4293617417,4286918406,4279502337,1912602624,2030043136,4280422919,4289945382,4294009867,4293875462,4293743369,4293610244,4292440624,4280950288,1761607680,0,0,0,0,0,0,0,0,0,4278190080,4294892416,4294892416,4294892416,4294892416,4278190080,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,2516582400,4278190080,4294892416,4278190080,4278190080,4294892416,4294892416,4278190080,4278190080,4294892416,4294892416,4294892416,4278190080,4278190080,4294892416,4278190080,0,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,0,0,0,0,2516582400,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,4278190080,4294892416,4294892416,4294892416,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,788529152,4279044359,4291067728,4294075141,4294075143,4294338057,4293352968,4284490243,4278321408,1291845632,0,0,1476395008,4278781187,4288236848,4293610511,4293609221,4293610249,4293609989,4291261239,4279241478,1291845632,0,0,0,0,0,0,0,0,4278190080,4294892416,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,2516582400,4278190080,2516582400,2516582400,4278190080,4278190080,2516582400,2516582400,4278190080,4278190080,4278190080,2516582400,2516582400,4278190080,2516582400,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,0,0,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,2550136832,4287849288,4294009360,4293941509,4294007817,4293679113,4284620803,2852126720,822083584,0,0,0,0,989855744,2751463424,4288172857,4293610511,4293543429,4293543943,4293611019,4289621050,4278649858,620756992,0,0,0,0,0,0,0,4278190080,4294892416,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294892416,4294892416,4294892416,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,2030043136,4283380775,4294011945,4293873409,4293939977,4293808649,4285867012,4278649344,1090519040,0,0,0,0,0,0,939524096,4278255872,4288764223,4293609227,4293543175,4293542917,4293677843,4287124784,2516582400,0,0,0,0,0,0,0,2516582400,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,805306368,4279569674,4292243009,4293609217,4293676041,4293937929,4288687621,4279305216,1543503872,0,0,0,0,0,0,0,452984832,2214592512,4278781188,4290602054,4293410821,4293477384,4293476868,4293745950,4283773466,2181038080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2566914048,4287714107,4293543949,4293542919,4293673225,4291834377,4280879106,2080374784,0,0,0,0,0,0,0,1962934272,4279898124,4286467380,4278846980,4280686612,4292961598,4293343745,4293411081,4293476100,4292566822,4280357128,1140850688,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,2516582400,2516582400,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,2516582400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,0,0,2516582400,4278190080,2516582400,0,0,1207959552,4281539862,4293417771,4293343234,4293277193,4292947466,4284880134,2483027968,0,0,0,0,0,0,989855744,2751463424,4282917657,4291648314,4293346067,4288303409,2734686208,4284299053,4293479197,4293343493,4293409801,4293410569,4288759582,2902458368,0,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4294967295,4278190080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4278190080,4293141248,4293141248,4293141248,4278190080,2516582400,0,0,0,4278190080,4293141248,4278190080,0,0,2969567232,4289023795,4293211656,4293144328,4293143305,4290389514,4279108353,536870912,0,0,0,335544320,1543503872,2986344448,4281076999,4287967257,4293213977,4293078532,4293078275,4293412634,4284428061,2986344448,4289023285,4293277192,4293343240,4293277191,4293412372,4282850829,1711276032,0,0,0,0,0,0,0,2516582400,4278190080,2516582400,0,0,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,2516582400,4278190080,2516582400,4278190080,4278190080,4278190080,4278190080,2516582400,0,0,0,2516582400,4278190080,2516582400,0,2516582400,4278190080,4294967295,4278190080,4278190080,2516582400,4278190080,2516582400,0,0,0,2516582400,4278190080,2516582400,0,2516582400,4278190080,2516582400,0,0,2516582400,4278190080,4278190080,4278190080,4293141248,4278190080,2516582400,4278190080,4278190080,4278190080,4293141248,4278190080,0,956301312,4281604366,4293149982,4293077253,4293078025,4292684810,4282912516,1979711488,1660944384,1778384896,2130706432,3204448256,4279371011,4283635982,4288752661,4292621844,4293078537,4293078022,4293078537,4293210121,4293144583,4290726433,4278518273,4280422668,4292691489,4293210117,4293276937,4293276680,4290592536,4278649601,134217728,0,0,0,0,0,2516582400,4278190080,4294967295,4278190080,2516582400,0,4278190080,4294967295,4278190080,4294967295,4294967295,4278190080,4278190080,4294967295,4294967295,4294967295,4278190080,2516582400,2516582400,4278190080,4294967295,4278190080,4294967295,4294967295,4294967295,4294967295,4278190080,2516582400,0,2516582400,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4294967295,4278190080,4294967295,4278190080,4294967295,4278190080,0,0,0,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,2516582400,0,0,4278190080,4293141248,4293141248,4278190080,2516582400,4278190080,4293141248,4293141248,4293141248,4293141248,4278190080,0,2717908992,4287903514,4293078538,4293078280,4293143817,4290652684,4281666563,4281797635,4283831561,4284292110,4285670934,4289475868,4291769878,4293079566,4293078281,4293078023,4293078280,4293209609,4293275145,4292357130,4287900432,4280290309,1728053248,2432696320,4286854178,4293145355,4293144584,4293144328,4293212431,4283636492,1610612736,0,0,0,0,2516582400,4278190080,4294967295,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4294967295,4278190080,4294967295,4278190080,2516582400,0,2516582400,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,2516582400,0,2516582400,4278190080,4278190080,4293141248,4278190080,4293141248,4278190080,4278190080,4278190080,4278190080,2516582400,520093696,4280027652,4292426772,4293078279,4293079049,4293144329,4292751115,4292555019,4292948491,4293079819,4293146126,4293211917,4293210888,4293145095,4293210632,4293144841,4293210633,4293275913,4292685578,4288618760,4282584324,2969567232,1207959552,0,671088640,4279896839,4292362526,4293078022,4293078793,4293078536,4290065172,4278780673,167772160,0,0,2516582400,4278190080,4294967295,4278190080,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4294967295,4294967295,4294967295,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,0,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4278190080,4294967295,4278190080,2516582400,0,0,4278190080,4293141248,4278190080,4293141248,4278190080,0,4278190080,4293141248,4278190080,1811939328,4284620297,4293211403,4293210888,4293211145,4293276937,4293277193,4293277961,4293344265,4293410056,4293344776,4293344776,4293345033,4293410569,4293475848,4293344265,4292819211,4289276169,4283437573,4278714880,1828716544,0,0,0,0,2516582400,4287181084,4293078538,4293078025,4293143560,4293211664,4283110665,1409286144,0,0,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4278190080,4278190080,4278190080,4294967295,4278190080,0,4278190080,4294967295,4278190080,0,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4278190080,4278190080,4278190080,4293141248,4278190080,4293141248,4278190080,4278190080,4278190080,4293141248,4278190080,3087007744,4289148172,4293345035,4293345034,4293411080,4293476870,4293477893,4293544453,4293611013,4293677063,4293677833,4293677833,4293612298,4293218572,4292102669,4287771145,4282651909,4278714880,1912602624,218103808,0,0,0,0,0,771751936,4280880904,4292621585,4293143048,4292685067,4290916111,4284160266,1811939328,0,0,4278190080,4294967295,4294967295,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4278190080,4294967295,4278190080,4294967295,4278190080,4278190080,4294967295,4294967295,4294967295,4278190080,4278190080,4294967295,4278190080,0,4278190080,4294967295,4278190080,0,4278190080,4294967295,4278190080,4294967295,4294967295,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4294967295,4278190080,4294967295,4278190080,0,2516582400,4278190080,4294967295,4278190080,2516582400,4278190080,4294967295,4294967295,4294967295,4278190080,2516582400,4278190080,4294967295,4278190080,4293141248,4293141248,4293141248,4278190080,2516582400,4278190080,4293141248,4293141248,4293141248,4278190080,2516582400,1325400064,4280618243,4284819723,4287709972,4289877530,4293028892,4293948702,4293883680,4293818144,4292045341,4289484568,4288433169,4286856717,4282916870,4279831042,3036676096,1526726656,184549376,0,0,0,0,0,0,0,0,3305111552,4289014285,4288159495,4283372037,4279370753,2164260864,50331648,0,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,2516582400,2516582400,4278190080,2516582400,4278190080,2516582400,2516582400,4278190080,4278190080,4278190080,2516582400,2516582400,4278190080,2516582400,0,2516582400,4278190080,2516582400,0,2516582400,4278190080,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,2516582400,4278190080,2516582400,4278190080,2516582400,0,0,2516582400,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,2516582400,4278190080,4278190080,4278190080,2516582400,0,2516582400,4278190080,4278190080,4278190080,2516582400,0,0,671088640,1828716544,2600468480,3170893824,4026531840,4261412864,4261412864,4261412864,3808428032,3170893824,2969567232,2667577344,1526726656,553648128,0,0,0,0,0,0,0,0,0,0,0,1543503872,3305111552,3120562176,1811939328,385875968,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
      return _loc1_;
   }
   
   private function onMouseDown(param1:MouseEvent) : void
   {
      param1.stopPropagation();
   }
   
   private function b681add8(param1:MouseEvent) : void
   {
      param1.stopPropagation();
      try
      {
         navigateToURL(new URLRequest("http://alternativaplatform.com"),"_blank");
      }
      catch(e:Error)
      {
      }
   }
   
   private function e4caca61(param1:MouseEvent) : void
   {
      param1.stopPropagation();
   }
   
   private function e2b297cd(param1:MouseEvent) : void
   {
      param1.stopPropagation();
   }
   
   private function d5a65cd4(param1:MouseEvent) : void
   {
      param1.stopPropagation();
   }
   
   private function b49b0aa5(param1:MouseEvent) : void
   {
      param1.stopPropagation();
   }
}
