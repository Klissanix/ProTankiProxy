package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class Object3DContainer extends Object3D
   {
      
      public var mouseChildren:Boolean = true;
      
      alternativa3d var childrenList:Object3D;
      
      alternativa3d var lightList:Light3D;
      
      alternativa3d var visibleChildren:Vector.<Object3D> = new Vector.<Object3D>();
      
      alternativa3d var numVisibleChildren:int = 0;
      
      public function Object3DContainer()
      {
         super();
      }
      
      public function addChild(param1:Object3D) : Object3D
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1 == this)
         {
            throw new ArgumentError("An object cannot be added as a child of itself.");
         }
         var _loc2_:Object3DContainer = _parent;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               throw new ArgumentError("An object cannot be added as a child to one of it\'s children (or children\'s children, etc.).");
            }
            _loc2_ = _loc2_._parent;
         }
         if(param1._parent != null)
         {
            param1._parent.removeChild(param1);
         }
         this.addToList(param1);
         return param1;
      }
      
      public function removeChild(param1:Object3D) : Object3D
      {
         var _loc3_:Object3D = null;
         var _loc2_:Object3D = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1._parent != this)
         {
            throw new ArgumentError("The supplied Object3D must be a child of the caller.");
         }
         _loc2_ = this.childrenList;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_ != null)
               {
                  _loc3_.next = _loc2_.next;
               }
               else
               {
                  this.childrenList = _loc2_.next;
               }
               _loc2_.next = null;
               _loc2_.setParent(null);
               return param1;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         throw new ArgumentError("Cannot remove child.");
      }
      
      public function addChildAt(param1:Object3D, param2:int) : Object3D
      {
         var _loc5_:int = 0;
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1 == this)
         {
            throw new ArgumentError("An object cannot be added as a child of itself.");
         }
         if(param2 < 0)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         var _loc3_:Object3DContainer = _parent;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               throw new ArgumentError("An object cannot be added as a child to one of it\'s children (or children\'s children, etc.).");
            }
            _loc3_ = _loc3_._parent;
         }
         var _loc4_:Object3D = this.childrenList;
         while(_loc5_ < param2)
         {
            if(_loc4_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            _loc4_ = _loc4_.next;
            _loc5_++;
         }
         if(param1._parent != null)
         {
            param1._parent.removeChild(param1);
         }
         this.addToList(param1,_loc4_);
         return param1;
      }
      
      public function removeChildAt(param1:int) : Object3D
      {
         var _loc3_:int = 0;
         if(param1 < 0)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         var _loc2_:Object3D = this.childrenList;
         while(_loc3_ < param1)
         {
            if(_loc2_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            _loc2_ = _loc2_.next;
            _loc3_++;
         }
         if(_loc2_ == null)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         this.removeChild(_loc2_);
         return _loc2_;
      }
      
      public function getChildAt(param1:int) : Object3D
      {
         var _loc3_:int = 0;
         if(param1 < 0)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         var _loc2_:Object3D = this.childrenList;
         while(_loc3_ < param1)
         {
            if(_loc2_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            _loc2_ = _loc2_.next;
            _loc3_++;
         }
         if(_loc2_ == null)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         return _loc2_;
      }
      
      public function getChildIndex(param1:Object3D) : int
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1._parent != this)
         {
            throw new ArgumentError("The supplied Object3D must be a child of the caller.");
         }
         var _loc2_:Object3D = this.childrenList;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
            _loc2_ = _loc2_.next;
         }
         throw new ArgumentError("Cannot get child index.");
      }
      
      public function setChildIndex(param1:Object3D, param2:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1._parent != this)
         {
            throw new ArgumentError("The supplied Object3D must be a child of the caller.");
         }
         if(param2 < 0)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         var _loc3_:Object3D = this.childrenList;
         while(_loc4_ < param2)
         {
            if(_loc3_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            _loc3_ = _loc3_.next;
            _loc4_++;
         }
         this.removeChild(param1);
         this.addToList(param1,_loc3_);
      }
      
      public function swapChildren(param1:Object3D, param2:Object3D) : void
      {
         var _loc3_:Object3D = null;
         if(param1 == null || param2 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1._parent != this || param2._parent != this)
         {
            throw new ArgumentError("The supplied Object3D must be a child of the caller.");
         }
         if(param1 != param2)
         {
            if(param1.next == param2)
            {
               this.removeChild(param2);
               this.addToList(param2,param1);
            }
            else if(param2.next == param1)
            {
               this.removeChild(param1);
               this.addToList(param1,param2);
            }
            else
            {
               _loc3_ = param1.next;
               this.removeChild(param1);
               this.addToList(param1,param2);
               this.removeChild(param2);
               this.addToList(param2,_loc3_);
            }
         }
      }
      
      public function swapChildrenAt(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Object3D = null;
         var _loc6_:Object3D = null;
         var _loc5_:Object3D = null;
         if(param1 < 0 || param2 < 0)
         {
            throw new RangeError("The supplied index is out of d6904c70.");
         }
         if(param1 != param2)
         {
            _loc3_ = this.childrenList;
            _loc4_ = 0;
            while(_loc4_ < param1)
            {
               if(_loc3_ == null)
               {
                  throw new RangeError("The supplied index is out of d6904c70.");
               }
               _loc3_ = _loc3_.next;
               _loc4_++;
            }
            if(_loc3_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            _loc6_ = this.childrenList;
            _loc4_ = 0;
            while(_loc4_ < param2)
            {
               if(_loc6_ == null)
               {
                  throw new RangeError("The supplied index is out of d6904c70.");
               }
               _loc6_ = _loc6_.next;
               _loc4_++;
            }
            if(_loc6_ == null)
            {
               throw new RangeError("The supplied index is out of d6904c70.");
            }
            if(_loc3_ != _loc6_)
            {
               if(_loc3_.next == _loc6_)
               {
                  this.removeChild(_loc6_);
                  this.addToList(_loc6_,_loc3_);
               }
               else if(_loc6_.next == _loc3_)
               {
                  this.removeChild(_loc3_);
                  this.addToList(_loc3_,_loc6_);
               }
               else
               {
                  _loc5_ = _loc3_.next;
                  this.removeChild(_loc3_);
                  this.addToList(_loc3_,_loc6_);
                  this.removeChild(_loc6_);
                  this.addToList(_loc6_,_loc5_);
               }
            }
         }
      }
      
      public function getChildByName(param1:String) : Object3D
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter name must be non-null.");
         }
         var _loc2_:Object3D = this.childrenList;
         while(_loc2_ != null)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
            _loc2_ = _loc2_.next;
         }
         return null;
      }
      
      public function contains(param1:Object3D) : Boolean
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter child must be non-null.");
         }
         if(param1 == this)
         {
            return true;
         }
         var _loc2_:Object3D = this.childrenList;
         while(_loc2_ != null)
         {
            if(_loc2_ is Object3DContainer)
            {
               if((_loc2_ as Object3DContainer).contains(param1))
               {
                  return true;
               }
            }
            else if(_loc2_ == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function get numChildren() : int
      {
         var _loc2_:int = 0;
         var _loc1_:Object3D = this.childrenList;
         while(_loc1_ != null)
         {
            _loc2_++;
            _loc1_ = _loc1_.next;
         }
         return _loc2_;
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc5_:Vector3D = null;
         var _loc6_:Vector3D = null;
         var _loc8_:RayIntersectionData = null;
         var _loc7_:RayIntersectionData = null;
         if(param3 != null && param3[this])
         {
            return null;
         }
         if(!boundIntersectRay(param1,param2,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return null;
         }
         var _loc9_:Number = 1e+22;
         var _loc10_:Object3D = this.childrenList;
         while(_loc10_ != null)
         {
            _loc10_.composeMatrix();
            _loc10_.invertMatrix();
            if(_loc5_ == null)
            {
               _loc5_ = new Vector3D();
               _loc6_ = new Vector3D();
            }
            _loc5_.x = _loc10_.ma * param1.x + _loc10_.mb * param1.y + _loc10_.mc * param1.z + _loc10_.md;
            _loc5_.y = _loc10_.me * param1.x + _loc10_.mf * param1.y + _loc10_.mg * param1.z + _loc10_.mh;
            _loc5_.z = _loc10_.mi * param1.x + _loc10_.mj * param1.y + _loc10_.mk * param1.z + _loc10_.ml;
            _loc6_.x = _loc10_.ma * param2.x + _loc10_.mb * param2.y + _loc10_.mc * param2.z;
            _loc6_.y = _loc10_.me * param2.x + _loc10_.mf * param2.y + _loc10_.mg * param2.z;
            _loc6_.z = _loc10_.mi * param2.x + _loc10_.mj * param2.y + _loc10_.mk * param2.z;
            _loc7_ = _loc10_.intersectRay(_loc5_,_loc6_,param3,param4);
            if(_loc7_ != null && _loc7_.time < _loc9_)
            {
               _loc9_ = _loc7_.time;
               _loc8_ = _loc7_;
            }
            _loc10_ = _loc10_.next;
         }
         return _loc8_;
      }
      
      override alternativa3d function checkIntersection(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Dictionary) : Boolean
      {
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc15_:Object3D = this.childrenList;
         while(_loc15_ != null)
         {
            if(param8 != null && !param8[_loc15_])
            {
               _loc15_.composeMatrix();
               _loc15_.invertMatrix();
               _loc12_ = _loc15_.ma * param1 + _loc15_.mb * param2 + _loc15_.mc * param3 + _loc15_.md;
               _loc11_ = _loc15_.me * param1 + _loc15_.mf * param2 + _loc15_.mg * param3 + _loc15_.mh;
               _loc14_ = _loc15_.mi * param1 + _loc15_.mj * param2 + _loc15_.mk * param3 + _loc15_.ml;
               _loc9_ = _loc15_.ma * param4 + _loc15_.mb * param5 + _loc15_.mc * param6;
               _loc13_ = _loc15_.me * param4 + _loc15_.mf * param5 + _loc15_.mg * param6;
               _loc10_ = _loc15_.mi * param4 + _loc15_.mj * param5 + _loc15_.mk * param6;
               if(boundCheckIntersection(_loc12_,_loc11_,_loc14_,_loc9_,_loc13_,_loc10_,param7,_loc15_.boundMinX,_loc15_.boundMinY,_loc15_.boundMinZ,_loc15_.boundMaxX,_loc15_.boundMaxY,_loc15_.boundMaxZ) && _loc15_.checkIntersection(_loc12_,_loc11_,_loc14_,_loc9_,_loc13_,_loc10_,param7,param8))
               {
                  return true;
               }
            }
            _loc15_ = _loc15_.next;
         }
         return false;
      }
      
      override alternativa3d function collectPlanes(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector.<Face>, param7:Dictionary = null) : void
      {
         if(param7 != null && param7[this])
         {
            return;
         }
         var _loc8_:Vector3D = calculateSphere(param1,param2,param3,param4,param5);
         if(!boundIntersectSphere(_loc8_,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return;
         }
         var _loc9_:Object3D = this.childrenList;
         while(_loc9_ != null)
         {
            _loc9_.composeAndAppend(this);
            _loc9_.collectPlanes(param1,param2,param3,param4,param5,param6,param7);
            _loc9_ = _loc9_.next;
         }
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Object3DContainer = new Object3DContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         var _loc4_:Object3D = null;
         var _loc2_:Object3D = null;
         super.clonePropertiesFrom(param1);
         var _loc3_:Object3DContainer = param1 as Object3DContainer;
         this.mouseChildren = _loc3_.mouseChildren;
         var _loc5_:Object3D = _loc3_.childrenList;
         while(_loc5_ != null)
         {
            _loc2_ = _loc5_.clone();
            if(this.childrenList != null)
            {
               _loc4_.next = _loc2_;
            }
            else
            {
               this.childrenList = _loc2_;
            }
            _loc4_ = _loc2_;
            _loc2_.setParent(this);
            _loc5_ = _loc5_.next;
         }
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc2_:int = 0;
         this.numVisibleChildren = 0;
         var _loc3_:Object3D = this.childrenList;
         while(_loc3_ != null)
         {
            if(_loc3_.visible)
            {
               _loc3_.composeAndAppend(this);
               if(_loc3_.cullingInCamera(param1,culling) >= 0)
               {
                  _loc3_.concat(this);
                  this.visibleChildren[this.numVisibleChildren] = _loc3_;
                  this.numVisibleChildren++;
               }
            }
            _loc3_ = _loc3_.next;
         }
         if(this.numVisibleChildren > 0)
         {
            if(param1.debug && (_loc2_ = param1.checkInDebug(this)) > 0)
            {
               if(_loc2_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            this.drawVisibleChildren(param1);
         }
      }
      
      alternativa3d function drawVisibleChildren(param1:Camera3D) : void
      {
         var _loc3_:Object3D = null;
         var _loc2_:int = this.numVisibleChildren - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.visibleChildren[_loc2_];
            _loc3_.draw(param1);
            this.visibleChildren[_loc2_] = null;
            _loc2_--;
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         var _loc3_:VG = null;
         var _loc2_:VG = null;
         var _loc4_:VG = null;
         var _loc5_:Object3D = this.childrenList;
         while(_loc5_ != null)
         {
            if(_loc5_.visible)
            {
               _loc5_.composeAndAppend(this);
               if(_loc5_.cullingInCamera(param1,culling) >= 0)
               {
                  _loc5_.concat(this);
                  _loc4_ = _loc5_.getVG(param1);
                  if(_loc4_ != null)
                  {
                     if(_loc3_ != null)
                     {
                        _loc2_.next = _loc4_;
                     }
                     else
                     {
                        _loc3_ = _loc4_;
                        _loc2_ = _loc4_;
                     }
                     while(_loc2_.next != null)
                     {
                        _loc2_ = _loc2_.next;
                     }
                  }
               }
            }
            _loc5_ = _loc5_.next;
         }
         return _loc3_;
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc3_:Object3D = this.childrenList;
         while(_loc3_ != null)
         {
            if(param2 != null)
            {
               _loc3_.composeAndAppend(param2);
            }
            else
            {
               _loc3_.composeMatrix();
            }
            _loc3_.updateBounds(param1,_loc3_);
            _loc3_ = _loc3_.next;
         }
      }
      
      override alternativa3d function split(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Number) : Vector.<Object3D>
      {
         var _loc14_:Object3D = null;
         var _loc15_:Object3D = null;
         var _loc5_:Object3D = null;
         var _loc12_:Vector3D = null;
         var _loc13_:Vector3D = null;
         var _loc6_:Vector3D = null;
         var _loc11_:int = 0;
         var _loc16_:* = undefined;
         var _loc9_:Number = NaN;
         var _loc17_:Vector.<Object3D> = new Vector.<Object3D>(2);
         var _loc7_:Vector3D = calculatePlane(param1,param2,param3);
         var _loc18_:Object3D = this.childrenList;
         this.childrenList = null;
         var _loc8_:Object3DContainer = this.clone() as Object3DContainer;
         var _loc10_:Object3DContainer = this.clone() as Object3DContainer;
         var _loc19_:Object3D = _loc18_;
         while(_loc19_ != null)
         {
            _loc5_ = _loc19_.next;
            _loc19_.next = null;
            _loc19_.setParent(null);
            _loc19_.composeMatrix();
            _loc19_.calculateInverseMatrix();
            _loc12_ = new Vector3D(_loc19_.ima * param1.x + _loc19_.imb * param1.y + _loc19_.imc * param1.z + _loc19_.imd,_loc19_.ime * param1.x + _loc19_.imf * param1.y + _loc19_.img * param1.z + _loc19_.imh,_loc19_.imi * param1.x + _loc19_.imj * param1.y + _loc19_.imk * param1.z + _loc19_.iml);
            _loc13_ = new Vector3D(_loc19_.ima * param2.x + _loc19_.imb * param2.y + _loc19_.imc * param2.z + _loc19_.imd,_loc19_.ime * param2.x + _loc19_.imf * param2.y + _loc19_.img * param2.z + _loc19_.imh,_loc19_.imi * param2.x + _loc19_.imj * param2.y + _loc19_.imk * param2.z + _loc19_.iml);
            _loc6_ = new Vector3D(_loc19_.ima * param3.x + _loc19_.imb * param3.y + _loc19_.imc * param3.z + _loc19_.imd,_loc19_.ime * param3.x + _loc19_.imf * param3.y + _loc19_.img * param3.z + _loc19_.imh,_loc19_.imi * param3.x + _loc19_.imj * param3.y + _loc19_.imk * param3.z + _loc19_.iml);
            _loc11_ = _loc19_.testSplit(_loc12_,_loc13_,_loc6_,param4);
            if(_loc11_ < 0)
            {
               if(_loc14_ != null)
               {
                  _loc14_.next = _loc19_;
               }
               else
               {
                  _loc8_.childrenList = _loc19_;
               }
               _loc14_ = _loc19_;
               _loc19_.setParent(_loc8_);
            }
            else if(_loc11_ > 0)
            {
               if(_loc15_ != null)
               {
                  _loc15_.next = _loc19_;
               }
               else
               {
                  _loc10_.childrenList = _loc19_;
               }
               _loc15_ = _loc19_;
               _loc19_.setParent(_loc10_);
            }
            else
            {
               _loc16_ = _loc19_.split(_loc12_,_loc13_,_loc6_,param4);
               _loc9_ = _loc19_.distance;
               if(_loc16_[0] != null)
               {
                  _loc19_ = _loc16_[0];
                  if(_loc14_ != null)
                  {
                     _loc14_.next = _loc19_;
                  }
                  else
                  {
                     _loc8_.childrenList = _loc19_;
                  }
                  _loc14_ = _loc19_;
                  _loc19_.setParent(_loc8_);
                  _loc19_.distance = _loc9_;
               }
               if(_loc16_[1] != null)
               {
                  _loc19_ = _loc16_[1];
                  if(_loc15_ != null)
                  {
                     _loc15_.next = _loc19_;
                  }
                  else
                  {
                     _loc10_.childrenList = _loc19_;
                  }
                  _loc15_ = _loc19_;
                  _loc19_.setParent(_loc10_);
                  _loc19_.distance = _loc9_;
               }
            }
            _loc19_ = _loc5_;
         }
         if(_loc14_ != null)
         {
            _loc8_.calculateBounds();
            _loc17_[0] = _loc8_;
         }
         if(_loc15_ != null)
         {
            _loc10_.calculateBounds();
            _loc17_[1] = _loc10_;
         }
         return _loc17_;
      }
      
      alternativa3d function addToList(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc3_:Object3D = null;
         param1.next = param2;
         param1.setParent(this);
         if(param2 == this.childrenList)
         {
            this.childrenList = param1;
         }
         else
         {
            _loc3_ = this.childrenList;
            while(_loc3_ != null)
            {
               if(_loc3_.next == param2)
               {
                  _loc3_.next = param1;
                  break;
               }
               _loc3_ = _loc3_.next;
            }
         }
      }
      
      override alternativa3d function setParent(param1:Object3DContainer) : void
      {
         var _loc3_:Object3DContainer = null;
         var _loc2_:Light3D = null;
         if(param1 == null)
         {
            _loc3_ = _parent;
            while(_loc3_._parent != null)
            {
               _loc3_ = _loc3_._parent;
            }
            if(_loc3_.lightList != null)
            {
               this.a5c13c84(_loc3_,this);
            }
         }
         else if(this.lightList != null)
         {
            _loc3_ = param1;
            while(_loc3_._parent != null)
            {
               _loc3_ = _loc3_._parent;
            }
            _loc2_ = this.lightList;
            while(_loc2_.nextLight != null)
            {
               _loc2_ = _loc2_.nextLight;
            }
            _loc2_.nextLight = _loc3_.lightList;
            _loc3_.lightList = this.lightList;
            this.lightList = null;
         }
         _parent = param1;
      }
      
      private function a5c13c84(param1:Object3DContainer, param2:Object3DContainer) : void
      {
         var _loc4_:Light3D = null;
         var _loc5_:Light3D = null;
         var _loc3_:Light3D = null;
         var _loc6_:Object3D = this.childrenList;
         while(_loc6_ != null)
         {
            if(_loc6_ is Light3D)
            {
               _loc4_ = _loc6_ as Light3D;
               _loc5_ = null;
               _loc3_ = param1.lightList;
               while(_loc3_ != null)
               {
                  if(_loc3_ == _loc4_)
                  {
                     if(_loc5_ != null)
                     {
                        _loc5_.nextLight = _loc3_.nextLight;
                     }
                     else
                     {
                        param1.lightList = _loc3_.nextLight;
                     }
                     _loc3_.nextLight = param2.lightList;
                     param2.lightList = _loc3_;
                     break;
                  }
                  _loc5_ = _loc3_;
                  _loc3_ = _loc3_.nextLight;
               }
            }
            else if(_loc6_ is Object3DContainer)
            {
               (_loc6_ as Object3DContainer).a5c13c84(param1,param2);
            }
            if(param1.lightList == null)
            {
               break;
            }
            _loc6_ = _loc6_.next;
         }
      }
   }
}

