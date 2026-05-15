package alternativa.engine3d.containers
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   
   use namespace alternativa3d;
   
   public class ConflictContainer extends Object3DContainer
   {
      
      public var resolveByAABB:Boolean = true;
      
      public var resolveByOOBB:Boolean = true;
      
      public var threshold:Number = 0.01;
      
      public function ConflictContainer()
      {
         super();
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:ConflictContainer = new ConflictContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:ConflictContainer = param1 as ConflictContainer;
         this.resolveByAABB = _loc2_.resolveByAABB;
         this.resolveByOOBB = _loc2_.resolveByOOBB;
         this.threshold = _loc2_.threshold;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:Canvas = null;
         var _loc5_:int = 0;
         var _loc4_:VG = null;
         var _loc6_:VG = collectVG(param1);
         if(_loc6_ != null)
         {
            if(param1.debug && (_loc5_ = param1.checkInDebug(this)) > 0)
            {
               _loc3_ = param2.getChildCanvas(true,false);
               if(_loc5_ & 8)
               {
                  Debug.drawBounds(param1,_loc3_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            _loc3_ = param2.getChildCanvas(false,true,this,alpha,blendMode,colorTransform,filters);
            _loc3_.numDraws = 0;
            if(_loc6_.next != null)
            {
               calculateInverseMatrix();
               if(this.resolveByAABB)
               {
                  _loc4_ = _loc6_;
                  while(_loc4_ != null)
                  {
                     _loc4_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                     _loc4_ = _loc4_.next;
                  }
                  this.drawAABBGeometry(param1,_loc3_,_loc6_);
               }
               else if(this.resolveByOOBB)
               {
                  _loc4_ = _loc6_;
                  while(_loc4_ != null)
                  {
                     _loc4_.calculateOOBB(this);
                     _loc4_ = _loc4_.next;
                  }
                  this.drawOOBBGeometry(param1,_loc3_,_loc6_);
               }
               else
               {
                  this.drawConflictGeometry(param1,_loc3_,_loc6_);
               }
            }
            else
            {
               _loc6_.draw(param1,_loc3_,this.threshold,this);
               _loc6_.destroy();
            }
            if(_loc3_.numDraws > 0)
            {
               _loc3_.remChildren(_loc3_.numDraws);
            }
            else
            {
               param2.numDraws--;
            }
         }
      }
      
      alternativa3d function drawAABBGeometry(param1:Camera3D, param2:Canvas, param3:VG, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:VG;
         var _loc9_:VG = _loc14_ = param6 ? this.a4804418(param3,param4,param5) : param3;
         var _loc15_:VG = _loc14_.next;
         var _loc10_:Number = _loc14_.boundMax;
         while(_loc15_ != null)
         {
            _loc13_ = _loc15_.boundMin >= _loc10_ - this.threshold;
            if(_loc13_ || _loc15_.next == null)
            {
               if(_loc13_)
               {
                  _loc9_.next = null;
                  param7 = 0;
               }
               else
               {
                  _loc15_ = null;
                  param7++;
               }
               if(param4)
               {
                  _loc8_ = imd < _loc10_;
                  _loc11_ = false;
                  _loc12_ = true;
               }
               else if(param5)
               {
                  _loc8_ = imh < _loc10_;
                  _loc11_ = false;
                  _loc12_ = false;
               }
               else
               {
                  _loc8_ = iml < _loc10_;
                  _loc11_ = true;
                  _loc12_ = false;
               }
               if(_loc8_)
               {
                  if(_loc14_.next != null)
                  {
                     if(param7 < 2)
                     {
                        this.drawAABBGeometry(param1,param2,_loc14_,_loc11_,_loc12_,true,param7);
                     }
                     else if(this.resolveByOOBB)
                     {
                        _loc9_ = _loc14_;
                        while(_loc9_ != null)
                        {
                           _loc9_.calculateOOBB(this);
                           _loc9_ = _loc9_.next;
                        }
                        this.drawOOBBGeometry(param1,param2,_loc14_);
                     }
                     else
                     {
                        this.drawConflictGeometry(param1,param2,_loc14_);
                     }
                  }
                  else
                  {
                     _loc14_.draw(param1,param2,this.threshold,this);
                     _loc14_.destroy();
                  }
                  if(_loc15_ != null)
                  {
                     if(_loc15_.next != null)
                     {
                        this.drawAABBGeometry(param1,param2,_loc15_,param4,param5,false,-1);
                     }
                     else
                     {
                        _loc15_.draw(param1,param2,this.threshold,this);
                        _loc15_.destroy();
                     }
                  }
               }
               else
               {
                  if(_loc15_ != null)
                  {
                     if(_loc15_.next != null)
                     {
                        this.drawAABBGeometry(param1,param2,_loc15_,param4,param5,false,-1);
                     }
                     else
                     {
                        _loc15_.draw(param1,param2,this.threshold,this);
                        _loc15_.destroy();
                     }
                  }
                  if(_loc14_.next != null)
                  {
                     if(param7 < 2)
                     {
                        this.drawAABBGeometry(param1,param2,_loc14_,_loc11_,_loc12_,true,param7);
                     }
                     else if(this.resolveByOOBB)
                     {
                        _loc9_ = _loc14_;
                        while(_loc9_ != null)
                        {
                           _loc9_.calculateOOBB(this);
                           _loc9_ = _loc9_.next;
                        }
                        this.drawOOBBGeometry(param1,param2,_loc14_);
                     }
                     else
                     {
                        this.drawConflictGeometry(param1,param2,_loc14_);
                     }
                  }
                  else
                  {
                     _loc14_.draw(param1,param2,this.threshold,this);
                     _loc14_.destroy();
                  }
               }
               return;
            }
            if(_loc15_.boundMax > _loc10_)
            {
               _loc10_ = _loc15_.boundMax;
            }
            _loc9_ = _loc15_;
            _loc15_ = _loc15_.next;
         }
      }
      
      private function a4804418(param1:VG, param2:Boolean, param3:Boolean) : VG
      {
         var _loc6_:VG = param1;
         var _loc7_:VG = param1.next;
         while(_loc7_ != null && _loc7_.next != null)
         {
            param1 = param1.next;
            _loc7_ = _loc7_.next.next;
         }
         _loc7_ = param1.next;
         param1.next = null;
         if(_loc6_.next != null)
         {
            _loc6_ = this.a4804418(_loc6_,param2,param3);
         }
         else if(param2)
         {
            _loc6_.boundMin = _loc6_.boundMinX;
            _loc6_.boundMax = _loc6_.boundMaxX;
         }
         else if(param3)
         {
            _loc6_.boundMin = _loc6_.boundMinY;
            _loc6_.boundMax = _loc6_.boundMaxY;
         }
         else
         {
            _loc6_.boundMin = _loc6_.boundMinZ;
            _loc6_.boundMax = _loc6_.boundMaxZ;
         }
         if(_loc7_.next != null)
         {
            _loc7_ = this.a4804418(_loc7_,param2,param3);
         }
         else if(param2)
         {
            _loc7_.boundMin = _loc7_.boundMinX;
            _loc7_.boundMax = _loc7_.boundMaxX;
         }
         else if(param3)
         {
            _loc7_.boundMin = _loc7_.boundMinY;
            _loc7_.boundMax = _loc7_.boundMaxY;
         }
         else
         {
            _loc7_.boundMin = _loc7_.boundMinZ;
            _loc7_.boundMax = _loc7_.boundMaxZ;
         }
         var _loc4_:Boolean = _loc6_.boundMin < _loc7_.boundMin;
         if(_loc4_)
         {
            param1 = _loc6_;
            _loc6_ = _loc6_.next;
         }
         else
         {
            param1 = _loc7_;
            _loc7_ = _loc7_.next;
         }
         var _loc5_:VG = param1;
         while(_loc6_ != null)
         {
            if(_loc7_ == null)
            {
               _loc5_.next = _loc6_;
               return param1;
            }
            if(_loc4_)
            {
               if(_loc6_.boundMin < _loc7_.boundMin)
               {
                  _loc5_ = _loc6_;
                  _loc6_ = _loc6_.next;
               }
               else
               {
                  _loc5_.next = _loc7_;
                  _loc5_ = _loc7_;
                  _loc7_ = _loc7_.next;
                  _loc4_ = false;
               }
            }
            else if(_loc7_.boundMin < _loc6_.boundMin)
            {
               _loc5_ = _loc7_;
               _loc7_ = _loc7_.next;
            }
            else
            {
               _loc5_.next = _loc6_;
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
               _loc4_ = true;
            }
         }
         _loc5_.next = _loc7_;
         return param1;
      }
      
      alternativa3d function drawOOBBGeometry(param1:Camera3D, param2:Canvas, param3:VG) : void
      {
         var _loc8_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc9_:Wrapper = null;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc20_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc15_:VG = null;
         var _loc18_:VG = null;
         var _loc13_:Boolean = false;
         var _loc5_:VG = null;
         var _loc16_:VG = null;
         var _loc7_:VG = null;
         var _loc11_:VG = null;
         _loc15_ = param3;
         while(_loc15_ != null)
         {
            if(_loc15_.viewAligned)
            {
               _loc6_ = _loc15_.object.ml;
               _loc18_ = param3;
               while(_loc18_ != null)
               {
                  if(!_loc18_.viewAligned)
                  {
                     _loc20_ = false;
                     _loc17_ = false;
                     _loc8_ = _loc18_.boundVertexList;
                     while(_loc8_ != null)
                     {
                        if(_loc8_.cameraZ > _loc6_)
                        {
                           if(_loc20_)
                           {
                              break;
                           }
                           _loc17_ = true;
                        }
                        else
                        {
                           if(_loc17_)
                           {
                              break;
                           }
                           _loc20_ = true;
                        }
                        _loc8_ = _loc8_.next;
                     }
                     if(_loc8_ != null)
                     {
                        break;
                     }
                  }
                  _loc18_ = _loc18_.next;
               }
               if(_loc18_ == null)
               {
                  break;
               }
            }
            else
            {
               _loc4_ = _loc15_.boundPlaneList;
               while(_loc4_ != null)
               {
                  _loc12_ = _loc4_.cameraX;
                  _loc10_ = _loc4_.cameraY;
                  _loc19_ = _loc4_.cameraZ;
                  _loc6_ = _loc4_.offset;
                  _loc13_ = false;
                  _loc18_ = param3;
                  while(_loc18_ != null)
                  {
                     if(_loc15_ != _loc18_)
                     {
                        _loc20_ = false;
                        _loc17_ = false;
                        if(_loc18_.viewAligned)
                        {
                           _loc9_ = _loc18_.faceStruct.wrapper;
                           while(_loc9_ != null)
                           {
                              _loc8_ = _loc9_.vertex;
                              if(_loc8_.cameraX * _loc12_ + _loc8_.cameraY * _loc10_ + _loc8_.cameraZ * _loc19_ >= _loc6_ - this.threshold)
                              {
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                                 _loc13_ = true;
                                 _loc17_ = true;
                              }
                              else
                              {
                                 if(_loc17_)
                                 {
                                    break;
                                 }
                                 _loc20_ = true;
                              }
                              _loc9_ = _loc9_.next;
                           }
                           if(_loc9_ != null)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc8_ = _loc18_.boundVertexList;
                           while(_loc8_ != null)
                           {
                              if(_loc8_.cameraX * _loc12_ + _loc8_.cameraY * _loc10_ + _loc8_.cameraZ * _loc19_ >= _loc6_ - this.threshold)
                              {
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                                 _loc13_ = true;
                                 _loc17_ = true;
                              }
                              else
                              {
                                 if(_loc17_)
                                 {
                                    break;
                                 }
                                 _loc20_ = true;
                              }
                              _loc8_ = _loc8_.next;
                           }
                           if(_loc8_ != null)
                           {
                              break;
                           }
                        }
                     }
                     _loc18_ = _loc18_.next;
                  }
                  if(_loc18_ == null && _loc13_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.next;
               }
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc15_ = _loc15_.next;
         }
         if(_loc15_ != null)
         {
            if(_loc15_.viewAligned)
            {
               while(param3 != null)
               {
                  _loc5_ = param3.alternativa3d::next;
                  if(param3.alternativa3d::viewAligned)
                  {
                     _loc14_ = param3.alternativa3d::object.ml - _loc6_;
                     if(_loc14_ < -this.threshold)
                     {
                        param3.alternativa3d::next = _loc11_;
                        _loc11_ = param3;
                     }
                     else if(_loc14_ > this.threshold)
                     {
                        param3.alternativa3d::next = _loc16_;
                        _loc16_ = param3;
                     }
                     else
                     {
                        param3.alternativa3d::next = _loc7_;
                        _loc7_ = param3;
                     }
                  }
                  else
                  {
                     _loc8_ = param3.alternativa3d::boundVertexList;
                     while(_loc8_ != null)
                     {
                        _loc14_ = _loc8_.cameraZ - _loc6_;
                        if(_loc14_ < -this.threshold)
                        {
                           param3.alternativa3d::next = _loc11_;
                           _loc11_ = param3;
                           break;
                        }
                        if(_loc14_ > this.threshold)
                        {
                           param3.alternativa3d::next = _loc16_;
                           _loc16_ = param3;
                           break;
                        }
                        _loc8_ = _loc8_.next;
                     }
                     if(_loc8_ == null)
                     {
                        param3.alternativa3d::next = _loc7_;
                        _loc7_ = param3;
                     }
                  }
                  param3 = _loc5_;
               }
            }
            else
            {
               while(param3 != null)
               {
                  _loc5_ = param3.alternativa3d::next;
                  if(param3.alternativa3d::viewAligned)
                  {
                     _loc9_ = param3.alternativa3d::faceStruct.wrapper;
                     while(_loc9_ != null)
                     {
                        _loc8_ = _loc9_.vertex;
                        _loc14_ = _loc8_.cameraX * _loc12_ + _loc8_.cameraY * _loc10_ + _loc8_.cameraZ * _loc19_ - _loc6_;
                        if(_loc14_ < -this.threshold)
                        {
                           param3.alternativa3d::next = _loc16_;
                           _loc16_ = param3;
                           break;
                        }
                        if(_loc14_ > this.threshold)
                        {
                           param3.alternativa3d::next = _loc11_;
                           _loc11_ = param3;
                           break;
                        }
                        _loc9_ = _loc9_.next;
                     }
                     if(_loc9_ == null)
                     {
                        param3.alternativa3d::next = _loc7_;
                        _loc7_ = param3;
                     }
                  }
                  else
                  {
                     _loc8_ = param3.alternativa3d::boundVertexList;
                     while(_loc8_ != null)
                     {
                        _loc14_ = _loc8_.cameraX * _loc12_ + _loc8_.cameraY * _loc10_ + _loc8_.cameraZ * _loc19_ - _loc6_;
                        if(_loc14_ < -this.threshold)
                        {
                           param3.alternativa3d::next = _loc16_;
                           _loc16_ = param3;
                           break;
                        }
                        if(_loc14_ > this.threshold)
                        {
                           param3.alternativa3d::next = _loc11_;
                           _loc11_ = param3;
                           break;
                        }
                        _loc8_ = _loc8_.next;
                     }
                     if(_loc8_ == null)
                     {
                        param3.alternativa3d::next = _loc7_;
                        _loc7_ = param3;
                     }
                  }
                  param3 = _loc5_;
               }
            }
            if(_loc15_.viewAligned || _loc6_ < 0)
            {
               if(_loc11_ != null)
               {
                  if(_loc11_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc11_);
                  }
                  else
                  {
                     _loc11_.draw(param1,param2,this.threshold,this);
                     _loc11_.destroy();
                  }
               }
               while(_loc7_ != null)
               {
                  _loc5_ = _loc7_.next;
                  _loc7_.draw(param1,param2,this.threshold,this);
                  _loc7_.destroy();
                  _loc7_ = _loc5_;
               }
               if(_loc16_ != null)
               {
                  if(_loc16_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc16_);
                  }
                  else
                  {
                     _loc16_.draw(param1,param2,this.threshold,this);
                     _loc16_.destroy();
                  }
               }
            }
            else
            {
               if(_loc16_ != null)
               {
                  if(_loc16_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc16_);
                  }
                  else
                  {
                     _loc16_.draw(param1,param2,this.threshold,this);
                     _loc16_.destroy();
                  }
               }
               while(_loc7_ != null)
               {
                  _loc5_ = _loc7_.next;
                  _loc7_.draw(param1,param2,this.threshold,this);
                  _loc7_.destroy();
                  _loc7_ = _loc5_;
               }
               if(_loc11_ != null)
               {
                  if(_loc11_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc11_);
                  }
                  else
                  {
                     _loc11_.draw(param1,param2,this.threshold,this);
                     _loc11_.destroy();
                  }
               }
            }
         }
         else
         {
            this.drawConflictGeometry(param1,param2,param3);
         }
      }
      
      alternativa3d function drawConflictGeometry(param1:Camera3D, param2:Canvas, param3:VG) : void
      {
         var _loc7_:Canvas = null;
         var _loc11_:Face = null;
         var _loc4_:Face = null;
         var _loc13_:VG = null;
         var _loc16_:VG = null;
         var _loc17_:VG = null;
         var _loc6_:Face = null;
         var _loc9_:Face = null;
         var _loc12_:Face = null;
         var _loc18_:Face = null;
         var _loc10_:Face = null;
         var _loc15_:Face = null;
         var _loc8_:Face = null;
         var _loc14_:Face = null;
         var _loc5_:Boolean = false;
         while(param3 != null)
         {
            _loc13_ = param3.next;
            if(param3.space == 1)
            {
               param3.transformStruct(param3.faceStruct,++param3.object.transformId,ma,mb,mc,md,me,mf,mg,mh,mi,mj,mk,ml);
            }
            if(param3.sorting == 3)
            {
               param3.next = _loc16_;
               _loc16_ = param3;
            }
            else
            {
               if(param3.sorting == 2)
               {
                  if(_loc6_ != null)
                  {
                     _loc9_.processNext = param3.faceStruct;
                  }
                  else
                  {
                     _loc6_ = param3.faceStruct;
                  }
                  _loc9_ = param3.faceStruct;
                  _loc9_.geometry = param3;
                  while(_loc9_.processNext != null)
                  {
                     _loc9_ = _loc9_.processNext;
                     _loc9_.geometry = param3;
                  }
               }
               else
               {
                  if(_loc12_ != null)
                  {
                     _loc18_.processNext = param3.faceStruct;
                  }
                  else
                  {
                     _loc12_ = param3.faceStruct;
                  }
                  _loc18_ = param3.faceStruct;
                  _loc18_.geometry = param3;
                  while(_loc18_.processNext != null)
                  {
                     _loc18_ = _loc18_.processNext;
                     _loc18_.geometry = param3;
                  }
               }
               param3.faceStruct = null;
               param3.next = _loc17_;
               _loc17_ = param3;
            }
            param3 = _loc13_;
         }
         if(_loc17_ != null)
         {
            param3 = _loc17_;
            while(param3.next != null)
            {
               param3 = param3.next;
            }
            param3.next = _loc16_;
         }
         else
         {
            _loc17_ = _loc16_;
         }
         if(_loc6_ != null)
         {
            _loc10_ = _loc6_;
            _loc9_.processNext = _loc12_;
         }
         else
         {
            _loc10_ = _loc12_;
         }
         if(_loc16_ != null)
         {
            _loc16_.faceStruct.geometry = _loc16_;
            _loc10_ = this.d1dfe181(_loc16_.faceStruct,_loc10_,param1,this.threshold,true);
            _loc16_.faceStruct = null;
            _loc16_ = _loc16_.next;
            while(_loc16_ != null)
            {
               _loc16_.faceStruct.geometry = _loc16_;
               _loc10_ = this.d1dfe181(_loc16_.faceStruct,_loc10_,param1,this.threshold,false);
               _loc16_.faceStruct = null;
               _loc16_ = _loc16_.next;
            }
         }
         else if(_loc6_ != null)
         {
            _loc10_ = this.d1dfe181(null,_loc10_,param1,this.threshold,true);
         }
         else if(_loc12_ != null)
         {
            _loc10_ = param1.sortByAverageZ(_loc10_);
         }
         _loc11_ = _loc10_;
         while(_loc11_ != null)
         {
            _loc4_ = _loc11_.processNext;
            param3 = _loc11_.geometry;
            _loc11_.geometry = null;
            _loc5_ = _loc4_ == null || param3 != _loc4_.geometry;
            if(_loc5_ || _loc11_.material != _loc4_.material)
            {
               _loc11_.processNext = null;
               if(_loc5_)
               {
                  if(_loc15_ != null)
                  {
                     _loc8_.processNegative = _loc10_;
                     _loc15_ = null;
                     _loc8_ = null;
                  }
                  else
                  {
                     _loc10_.processPositive = _loc14_;
                     _loc14_ = _loc10_;
                     _loc14_.geometry = param3;
                  }
               }
               else
               {
                  if(_loc15_ != null)
                  {
                     _loc8_.processNegative = _loc10_;
                  }
                  else
                  {
                     _loc10_.processPositive = _loc14_;
                     _loc14_ = _loc10_;
                     _loc14_.geometry = param3;
                     _loc15_ = _loc10_;
                  }
                  _loc8_ = _loc10_;
               }
               _loc10_ = _loc4_;
            }
            _loc11_ = _loc4_;
         }
         if(param1.debug)
         {
            _loc7_ = param2.getChildCanvas(true,false);
            _loc10_ = _loc14_;
            while(_loc10_ != null)
            {
               if(_loc10_.geometry.debug & 0x10)
               {
                  _loc11_ = _loc10_;
                  while(_loc11_ != null)
                  {
                     Debug.drawEdges(param1,_loc7_,_loc11_,16711680);
                     _loc11_ = _loc11_.processNegative;
                  }
               }
               _loc10_ = _loc10_.processPositive;
            }
         }
         while(_loc14_ != null)
         {
            _loc10_ = _loc14_;
            _loc14_ = _loc10_.processPositive;
            _loc10_.processPositive = null;
            param3 = _loc10_.geometry;
            _loc10_.geometry = null;
            _loc7_ = param2.getChildCanvas(true,false,param3.object,param3.alpha,param3.blendMode,param3.colorTransform,param3.filters);
            while(_loc10_ != null)
            {
               _loc4_ = _loc10_.processNegative;
               _loc10_.processNegative = null;
               if(_loc10_.material != null)
               {
                  if(param3.viewAligned)
                  {
                     _loc10_.material.drawViewAligned(param1,_loc7_,_loc10_,param3.object.ml,param3.tma,param3.tmb,param3.tmc,param3.tmd,param3.tmtx,param3.tmty);
                  }
                  else
                  {
                     _loc10_.material.draw(param1,_loc7_,_loc10_,param3.object.ml);
                  }
               }
               else
               {
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_.processNext;
                     _loc10_.processNext = null;
                     _loc10_ = _loc11_;
                  }
               }
               _loc10_ = _loc4_;
            }
         }
         param3 = _loc17_;
         while(param3 != null)
         {
            _loc13_ = param3.next;
            param3.destroy();
            param3 = _loc13_;
         }
      }
      
      private function d1dfe181(param1:Face, param2:Face, param3:Camera3D, param4:Number, param5:Boolean, param6:Face = null) : Face
      {
         var _loc48_:Wrapper = null;
         var _loc34_:Vertex = null;
         var _loc35_:Vertex = null;
         var _loc36_:Vertex = null;
         var _loc46_:Vertex = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc37_:Face = null;
         var _loc27_:Face = null;
         var _loc38_:Face = null;
         var _loc51_:VG = null;
         var _loc9_:Face = null;
         var _loc13_:Face = null;
         var _loc21_:Face = null;
         var _loc49_:Face = null;
         var _loc26_:Face = null;
         var _loc29_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc54_:Boolean = false;
         var _loc44_:Boolean = false;
         var _loc42_:Number = NaN;
         var _loc32_:Face = null;
         var _loc41_:Face = null;
         var _loc50_:Wrapper = null;
         var _loc12_:Wrapper = null;
         var _loc52_:Wrapper = null;
         var _loc11_:Boolean = false;
         var _loc45_:Number = NaN;
         if(param1 != null)
         {
            _loc51_ = param1.geometry;
            if(param1.offset < 0)
            {
               _loc27_ = param1.processNegative;
               _loc38_ = param1.processPositive;
               _loc7_ = param1.normalX;
               _loc8_ = param1.normalY;
               _loc10_ = param1.normalZ;
               _loc17_ = param1.offset;
            }
            else
            {
               _loc27_ = param1.processPositive;
               _loc38_ = param1.processNegative;
               _loc7_ = -param1.normalX;
               _loc8_ = -param1.normalY;
               _loc10_ = -param1.normalZ;
               _loc17_ = -param1.offset;
            }
            param1.processNegative = null;
            param1.processPositive = null;
            if(param1.wrapper != null)
            {
               _loc37_ = param1;
               while(_loc37_.processNext != null)
               {
                  _loc37_ = _loc37_.processNext;
                  _loc37_.geometry = _loc51_;
               }
            }
            else
            {
               param1.geometry = null;
               param1 = null;
            }
         }
         else
         {
            param1 = param2;
            param2 = param1.processNext;
            _loc37_ = param1;
            _loc48_ = param1.wrapper;
            _loc34_ = _loc48_.vertex;
            _loc48_ = _loc48_.next;
            _loc35_ = _loc48_.vertex;
            _loc29_ = _loc34_.cameraX;
            _loc31_ = _loc34_.cameraY;
            _loc18_ = _loc34_.cameraZ;
            _loc15_ = _loc35_.cameraX - _loc29_;
            _loc47_ = _loc35_.cameraY - _loc31_;
            _loc20_ = _loc35_.cameraZ - _loc18_;
            _loc7_ = 0;
            _loc8_ = 0;
            _loc10_ = 1;
            _loc17_ = _loc18_;
            _loc40_ = 0;
            _loc48_ = _loc48_.next;
            while(_loc48_ != null)
            {
               _loc46_ = _loc48_.vertex;
               _loc14_ = _loc46_.cameraX - _loc29_;
               _loc25_ = _loc46_.cameraY - _loc31_;
               _loc19_ = _loc46_.cameraZ - _loc18_;
               _loc24_ = _loc19_ * _loc47_ - _loc25_ * _loc20_;
               _loc16_ = _loc14_ * _loc20_ - _loc19_ * _loc15_;
               _loc23_ = _loc25_ * _loc15_ - _loc14_ * _loc47_;
               _loc22_ = _loc24_ * _loc24_ + _loc16_ * _loc16_ + _loc23_ * _loc23_;
               if(_loc22_ > param4)
               {
                  _loc22_ = 1 / Math.sqrt(_loc22_);
                  _loc7_ = _loc24_ * _loc22_;
                  _loc8_ = _loc16_ * _loc22_;
                  _loc10_ = _loc23_ * _loc22_;
                  _loc17_ = _loc29_ * _loc7_ + _loc31_ * _loc8_ + _loc18_ * _loc10_;
                  break;
               }
               if(_loc22_ > _loc40_)
               {
                  _loc22_ = 1 / Math.sqrt(_loc22_);
                  _loc7_ = _loc24_ * _loc22_;
                  _loc8_ = _loc16_ * _loc22_;
                  _loc10_ = _loc23_ * _loc22_;
                  _loc17_ = _loc29_ * _loc7_ + _loc31_ * _loc8_ + _loc18_ * _loc10_;
                  _loc40_ = _loc22_;
               }
               _loc48_ = _loc48_.next;
            }
         }
         var _loc53_:Number = _loc17_ - param4;
         var _loc39_:Number = _loc17_ + param4;
         var _loc43_:Face = param2;
         while(_loc43_ != null)
         {
            _loc26_ = _loc43_.processNext;
            _loc48_ = _loc43_.wrapper;
            _loc34_ = _loc48_.vertex;
            _loc48_ = _loc48_.next;
            _loc35_ = _loc48_.vertex;
            _loc48_ = _loc48_.next;
            _loc36_ = _loc48_.vertex;
            _loc48_ = _loc48_.next;
            _loc30_ = _loc34_.cameraX * _loc7_ + _loc34_.cameraY * _loc8_ + _loc34_.cameraZ * _loc10_;
            _loc28_ = _loc35_.cameraX * _loc7_ + _loc35_.cameraY * _loc8_ + _loc35_.cameraZ * _loc10_;
            _loc33_ = _loc36_.cameraX * _loc7_ + _loc36_.cameraY * _loc8_ + _loc36_.cameraZ * _loc10_;
            _loc54_ = _loc30_ < _loc53_ || _loc28_ < _loc53_ || _loc33_ < _loc53_;
            _loc44_ = _loc30_ > _loc39_ || _loc28_ > _loc39_ || _loc33_ > _loc39_;
            while(_loc48_ != null)
            {
               _loc46_ = _loc48_.vertex;
               _loc42_ = _loc46_.cameraX * _loc7_ + _loc46_.cameraY * _loc8_ + _loc46_.cameraZ * _loc10_;
               if(_loc42_ < _loc53_)
               {
                  _loc54_ = true;
               }
               else if(_loc42_ > _loc39_)
               {
                  _loc44_ = true;
               }
               _loc46_.offset = _loc42_;
               _loc48_ = _loc48_.next;
            }
            if(!_loc54_)
            {
               if(!_loc44_)
               {
                  if(param1 != null)
                  {
                     _loc37_.processNext = _loc43_;
                  }
                  else
                  {
                     param1 = _loc43_;
                  }
                  _loc37_ = _loc43_;
               }
               else
               {
                  if(_loc21_ != null)
                  {
                     _loc49_.processNext = _loc43_;
                  }
                  else
                  {
                     _loc21_ = _loc43_;
                  }
                  _loc49_ = _loc43_;
               }
            }
            else if(!_loc44_)
            {
               if(_loc9_ != null)
               {
                  _loc13_.processNext = _loc43_;
               }
               else
               {
                  _loc9_ = _loc43_;
               }
               _loc13_ = _loc43_;
            }
            else
            {
               _loc34_.offset = _loc30_;
               _loc35_.offset = _loc28_;
               _loc36_.offset = _loc33_;
               _loc32_ = _loc43_.create();
               _loc32_.material = _loc43_.material;
               _loc32_.geometry = _loc43_.geometry;
               param3.lastFace.next = _loc32_;
               param3.lastFace = _loc32_;
               _loc41_ = _loc43_.create();
               _loc41_.material = _loc43_.material;
               _loc41_.geometry = _loc43_.geometry;
               param3.lastFace.next = _loc41_;
               param3.lastFace = _loc41_;
               _loc50_ = null;
               _loc12_ = null;
               _loc48_ = _loc43_.wrapper.next.next;
               while(_loc48_.next != null)
               {
                  _loc48_ = _loc48_.next;
               }
               _loc34_ = _loc48_.vertex;
               _loc30_ = _loc34_.offset;
               _loc11_ = _loc43_.material != null && _loc43_.material.useVerticesNormals;
               _loc48_ = _loc43_.wrapper;
               while(_loc48_ != null)
               {
                  _loc35_ = _loc48_.vertex;
                  _loc28_ = _loc35_.offset;
                  if(_loc30_ < _loc53_ && _loc28_ > _loc39_ || _loc30_ > _loc39_ && _loc28_ < _loc53_)
                  {
                     _loc45_ = (_loc17_ - _loc30_) / (_loc28_ - _loc30_);
                     _loc46_ = _loc35_.create();
                     param3.lastVertex.next = _loc46_;
                     param3.lastVertex = _loc46_;
                     _loc46_.cameraX = _loc34_.cameraX + (_loc35_.cameraX - _loc34_.cameraX) * _loc45_;
                     _loc46_.cameraY = _loc34_.cameraY + (_loc35_.cameraY - _loc34_.cameraY) * _loc45_;
                     _loc46_.cameraZ = _loc34_.cameraZ + (_loc35_.cameraZ - _loc34_.cameraZ) * _loc45_;
                     _loc46_.u = _loc34_.u + (_loc35_.u - _loc34_.u) * _loc45_;
                     _loc46_.v = _loc34_.v + (_loc35_.v - _loc34_.v) * _loc45_;
                     if(_loc11_)
                     {
                        _loc46_.x = _loc34_.x + (_loc35_.x - _loc34_.x) * _loc45_;
                        _loc46_.y = _loc34_.y + (_loc35_.y - _loc34_.y) * _loc45_;
                        _loc46_.z = _loc34_.z + (_loc35_.z - _loc34_.z) * _loc45_;
                        _loc46_.normalX = _loc34_.normalX + (_loc35_.normalX - _loc34_.normalX) * _loc45_;
                        _loc46_.normalY = _loc34_.normalY + (_loc35_.normalY - _loc34_.normalY) * _loc45_;
                        _loc46_.normalZ = _loc34_.normalZ + (_loc35_.normalZ - _loc34_.normalZ) * _loc45_;
                     }
                     _loc52_ = _loc48_.create();
                     _loc52_.vertex = _loc46_;
                     if(_loc50_ != null)
                     {
                        _loc50_.next = _loc52_;
                     }
                     else
                     {
                        _loc32_.wrapper = _loc52_;
                     }
                     _loc50_ = _loc52_;
                     _loc52_ = _loc48_.create();
                     _loc52_.vertex = _loc46_;
                     if(_loc12_ != null)
                     {
                        _loc12_.next = _loc52_;
                     }
                     else
                     {
                        _loc41_.wrapper = _loc52_;
                     }
                     _loc12_ = _loc52_;
                  }
                  if(_loc28_ <= _loc39_)
                  {
                     _loc52_ = _loc48_.create();
                     _loc52_.vertex = _loc35_;
                     if(_loc50_ != null)
                     {
                        _loc50_.next = _loc52_;
                     }
                     else
                     {
                        _loc32_.wrapper = _loc52_;
                     }
                     _loc50_ = _loc52_;
                  }
                  if(_loc28_ >= _loc53_)
                  {
                     _loc52_ = _loc48_.create();
                     _loc52_.vertex = _loc35_;
                     if(_loc12_ != null)
                     {
                        _loc12_.next = _loc52_;
                     }
                     else
                     {
                        _loc41_.wrapper = _loc52_;
                     }
                     _loc12_ = _loc52_;
                  }
                  _loc34_ = _loc35_;
                  _loc30_ = _loc28_;
                  _loc48_ = _loc48_.next;
               }
               if(_loc9_ != null)
               {
                  _loc13_.processNext = _loc32_;
               }
               else
               {
                  _loc9_ = _loc32_;
               }
               _loc13_ = _loc32_;
               if(_loc21_ != null)
               {
                  _loc49_.processNext = _loc41_;
               }
               else
               {
                  _loc21_ = _loc41_;
               }
               _loc49_ = _loc41_;
               _loc43_.processNext = null;
               _loc43_.geometry = null;
            }
            _loc43_ = _loc26_;
         }
         if(_loc38_ != null)
         {
            _loc38_.geometry = _loc51_;
            if(_loc49_ != null)
            {
               _loc49_.processNext = null;
            }
            param6 = this.d1dfe181(_loc38_,_loc21_,param3,param4,param5,param6);
         }
         else if(_loc21_ != null)
         {
            if(param5 && _loc21_ != _loc49_)
            {
               if(_loc49_ != null)
               {
                  _loc49_.processNext = null;
               }
               if(_loc21_.geometry.sorting == 2)
               {
                  param6 = this.d1dfe181(null,_loc21_,param3,param4,param5,param6);
               }
               else
               {
                  _loc21_ = param3.sortByAverageZ(_loc21_);
                  _loc49_ = _loc21_.processNext;
                  while(_loc49_.processNext != null)
                  {
                     _loc49_ = _loc49_.processNext;
                  }
                  _loc49_.processNext = param6;
                  param6 = _loc21_;
               }
            }
            else
            {
               _loc49_.processNext = param6;
               param6 = _loc21_;
            }
         }
         if(param1 != null)
         {
            _loc37_.processNext = param6;
            param6 = param1;
         }
         if(_loc27_ != null)
         {
            _loc27_.geometry = _loc51_;
            if(_loc13_ != null)
            {
               _loc13_.processNext = null;
            }
            param6 = this.d1dfe181(_loc27_,_loc9_,param3,param4,param5,param6);
         }
         else if(_loc9_ != null)
         {
            if(param5 && _loc9_ != _loc13_)
            {
               if(_loc13_ != null)
               {
                  _loc13_.processNext = null;
               }
               if(_loc9_.geometry.sorting == 2)
               {
                  param6 = this.d1dfe181(null,_loc9_,param3,param4,param5,param6);
               }
               else
               {
                  _loc9_ = param3.sortByAverageZ(_loc9_);
                  _loc13_ = _loc9_.processNext;
                  while(_loc13_.processNext != null)
                  {
                     _loc13_ = _loc13_.processNext;
                  }
                  _loc13_.processNext = param6;
                  param6 = _loc9_;
               }
            }
            else
            {
               _loc13_.processNext = param6;
               param6 = _loc9_;
            }
         }
         return param6;
      }
   }
}

