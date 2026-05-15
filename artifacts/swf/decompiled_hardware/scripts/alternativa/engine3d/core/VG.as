package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   
   use namespace alternativa3d;
   
   public class VG
   {
      
      private static var collector:VG;
      
      alternativa3d var next:VG;
      
      alternativa3d var faceStruct:Face;
      
      alternativa3d var object:Object3D;
      
      alternativa3d var sorting:int;
      
      alternativa3d var debug:int = 0;
      
      alternativa3d var space:int = 0;
      
      alternativa3d var viewAligned:Boolean = false;
      
      alternativa3d var boundMinX:Number;
      
      alternativa3d var boundMinY:Number;
      
      alternativa3d var boundMinZ:Number;
      
      alternativa3d var boundMaxX:Number;
      
      alternativa3d var boundMaxY:Number;
      
      alternativa3d var boundMaxZ:Number;
      
      alternativa3d var boundMin:Number;
      
      alternativa3d var boundMax:Number;
      
      alternativa3d var boundVertexList:Vertex = Vertex.createList(8);
      
      alternativa3d var boundPlaneList:Vertex = Vertex.createList(6);
      
      alternativa3d var numOccluders:int;
      
      public function VG()
      {
         super();
      }
      
      alternativa3d static function create(param1:Object3D, param2:Face, param3:int, param4:int, param5:Boolean) : VG
      {
         var _loc6_:VG = null;
         if(collector != null)
         {
            _loc6_ = collector;
            collector = collector.next;
            _loc6_.next = null;
         }
         else
         {
            _loc6_ = new VG();
         }
         _loc6_.object = param1;
         _loc6_.faceStruct = param2;
         _loc6_.sorting = param3;
         _loc6_.debug = param4;
         _loc6_.viewAligned = param5;
         return _loc6_;
      }
      
      alternativa3d function destroy() : void
      {
         if(this.faceStruct != null)
         {
            this.b664e815(this.faceStruct);
            this.faceStruct = null;
         }
         this.object = null;
         this.numOccluders = 0;
         this.debug = 0;
         this.space = 0;
         this.next = collector;
         collector = this;
      }
      
      private function b664e815(param1:Face) : void
      {
         if(param1.processNegative != null)
         {
            this.b664e815(param1.processNegative);
            param1.processNegative = null;
         }
         if(param1.processPositive != null)
         {
            this.b664e815(param1.processPositive);
            param1.processPositive = null;
         }
         var _loc2_:Face = param1.processNext;
         while(_loc2_ != null)
         {
            param1.processNext = null;
            param1 = _loc2_;
            _loc2_ = param1.processNext;
         }
      }
      
      alternativa3d function calculateAABB(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number) : void
      {
         this.boundMinX = 1e+22;
         this.boundMinY = 1e+22;
         this.boundMinZ = 1e+22;
         this.boundMaxX = -1e+22;
         this.boundMaxY = -1e+22;
         this.boundMaxZ = -1e+22;
         this.bf9c30c(this.faceStruct,++this.object.transformId,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         this.space = 1;
      }
      
      alternativa3d function calculateOOBB(param1:Object3D) : void
      {
         var _loc9_:Vertex = null;
         var _loc11_:Vertex = null;
         var _loc12_:Vertex = null;
         var _loc13_:Vertex = null;
         var _loc14_:Vertex = null;
         var _loc17_:Vertex = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc2_:Vertex = null;
         var _loc28_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc25_:Vertex = null;
         var _loc22_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc18_:Vertex = null;
         if(this.space == 1)
         {
            this.transformStruct(this.faceStruct,++this.object.transformId,param1.ma,param1.mb,param1.mc,param1.md,param1.me,param1.mf,param1.mg,param1.mh,param1.mi,param1.mj,param1.mk,param1.ml);
         }
         if(!this.viewAligned)
         {
            this.boundMinX = 1e+22;
            this.boundMinY = 1e+22;
            this.boundMinZ = 1e+22;
            this.boundMaxX = -1e+22;
            this.boundMaxY = -1e+22;
            this.boundMaxZ = -1e+22;
            this.f4350499(this.faceStruct,++this.object.transformId,this.object.ima,this.object.imb,this.object.imc,this.object.imd,this.object.ime,this.object.imf,this.object.img,this.object.imh,this.object.imi,this.object.imj,this.object.imk,this.object.iml);
            if(this.boundMaxX - this.boundMinX < 1)
            {
               this.boundMaxX = this.boundMinX + 1;
            }
            if(this.boundMaxY - this.boundMinY < 1)
            {
               this.boundMaxY = this.boundMinY + 1;
            }
            if(this.boundMaxZ - this.boundMinZ < 1)
            {
               this.boundMaxZ = this.boundMinZ + 1;
            }
            _loc9_ = this.boundVertexList;
            _loc9_.x = this.boundMinX;
            _loc9_.y = this.boundMinY;
            _loc9_.z = this.boundMinZ;
            _loc11_ = _loc9_.next;
            _loc11_.x = this.boundMaxX;
            _loc11_.y = this.boundMinY;
            _loc11_.z = this.boundMinZ;
            _loc12_ = _loc11_.next;
            _loc12_.x = this.boundMinX;
            _loc12_.y = this.boundMaxY;
            _loc12_.z = this.boundMinZ;
            _loc13_ = _loc12_.next;
            _loc13_.x = this.boundMaxX;
            _loc13_.y = this.boundMaxY;
            _loc13_.z = this.boundMinZ;
            _loc14_ = _loc13_.next;
            _loc14_.x = this.boundMinX;
            _loc14_.y = this.boundMinY;
            _loc14_.z = this.boundMaxZ;
            _loc17_ = _loc14_.next;
            _loc17_.x = this.boundMaxX;
            _loc17_.y = this.boundMinY;
            _loc17_.z = this.boundMaxZ;
            _loc19_ = _loc17_.next;
            _loc19_.x = this.boundMinX;
            _loc19_.y = this.boundMaxY;
            _loc19_.z = this.boundMaxZ;
            _loc20_ = _loc19_.next;
            _loc20_.x = this.boundMaxX;
            _loc20_.y = this.boundMaxY;
            _loc20_.z = this.boundMaxZ;
            _loc2_ = _loc9_;
            while(_loc2_ != null)
            {
               _loc2_.cameraX = this.object.ma * _loc2_.x + this.object.mb * _loc2_.y + this.object.mc * _loc2_.z + this.object.md;
               _loc2_.cameraY = this.object.me * _loc2_.x + this.object.mf * _loc2_.y + this.object.mg * _loc2_.z + this.object.mh;
               _loc2_.cameraZ = this.object.mi * _loc2_.x + this.object.mj * _loc2_.y + this.object.mk * _loc2_.z + this.object.ml;
               _loc2_ = _loc2_.next;
            }
            _loc28_ = this.boundPlaneList;
            _loc3_ = _loc28_.next;
            _loc4_ = _loc9_.cameraX;
            _loc5_ = _loc9_.cameraY;
            _loc15_ = _loc9_.cameraZ;
            _loc8_ = _loc11_.cameraX - _loc4_;
            _loc26_ = _loc11_.cameraY - _loc5_;
            _loc21_ = _loc11_.cameraZ - _loc15_;
            _loc7_ = _loc14_.cameraX - _loc4_;
            _loc29_ = _loc14_.cameraY - _loc5_;
            _loc16_ = _loc14_.cameraZ - _loc15_;
            _loc27_ = _loc16_ * _loc26_ - _loc29_ * _loc21_;
            _loc10_ = _loc7_ * _loc21_ - _loc16_ * _loc8_;
            _loc24_ = _loc29_ * _loc8_ - _loc7_ * _loc26_;
            _loc23_ = 1 / Math.sqrt(_loc27_ * _loc27_ + _loc10_ * _loc10_ + _loc24_ * _loc24_);
            _loc27_ *= _loc23_;
            _loc10_ *= _loc23_;
            _loc24_ *= _loc23_;
            _loc28_.cameraX = _loc27_;
            _loc28_.cameraY = _loc10_;
            _loc28_.cameraZ = _loc24_;
            _loc28_.offset = _loc4_ * _loc27_ + _loc5_ * _loc10_ + _loc15_ * _loc24_;
            _loc3_.cameraX = -_loc27_;
            _loc3_.cameraY = -_loc10_;
            _loc3_.cameraZ = -_loc24_;
            _loc3_.offset = -_loc12_.cameraX * _loc27_ - _loc12_.cameraY * _loc10_ - _loc12_.cameraZ * _loc24_;
            _loc25_ = _loc3_.next;
            _loc22_ = _loc25_.next;
            _loc4_ = _loc9_.cameraX;
            _loc5_ = _loc9_.cameraY;
            _loc15_ = _loc9_.cameraZ;
            _loc8_ = _loc14_.cameraX - _loc4_;
            _loc26_ = _loc14_.cameraY - _loc5_;
            _loc21_ = _loc14_.cameraZ - _loc15_;
            _loc7_ = _loc12_.cameraX - _loc4_;
            _loc29_ = _loc12_.cameraY - _loc5_;
            _loc16_ = _loc12_.cameraZ - _loc15_;
            _loc27_ = _loc16_ * _loc26_ - _loc29_ * _loc21_;
            _loc10_ = _loc7_ * _loc21_ - _loc16_ * _loc8_;
            _loc24_ = _loc29_ * _loc8_ - _loc7_ * _loc26_;
            _loc23_ = 1 / Math.sqrt(_loc27_ * _loc27_ + _loc10_ * _loc10_ + _loc24_ * _loc24_);
            _loc27_ *= _loc23_;
            _loc10_ *= _loc23_;
            _loc24_ *= _loc23_;
            _loc25_.cameraX = _loc27_;
            _loc25_.cameraY = _loc10_;
            _loc25_.cameraZ = _loc24_;
            _loc25_.offset = _loc4_ * _loc27_ + _loc5_ * _loc10_ + _loc15_ * _loc24_;
            _loc22_.cameraX = -_loc27_;
            _loc22_.cameraY = -_loc10_;
            _loc22_.cameraZ = -_loc24_;
            _loc22_.offset = -_loc11_.cameraX * _loc27_ - _loc11_.cameraY * _loc10_ - _loc11_.cameraZ * _loc24_;
            _loc6_ = _loc22_.next;
            _loc18_ = _loc6_.next;
            _loc4_ = _loc14_.cameraX;
            _loc5_ = _loc14_.cameraY;
            _loc15_ = _loc14_.cameraZ;
            _loc8_ = _loc17_.cameraX - _loc4_;
            _loc26_ = _loc17_.cameraY - _loc5_;
            _loc21_ = _loc17_.cameraZ - _loc15_;
            _loc7_ = _loc19_.cameraX - _loc4_;
            _loc29_ = _loc19_.cameraY - _loc5_;
            _loc16_ = _loc19_.cameraZ - _loc15_;
            _loc27_ = _loc16_ * _loc26_ - _loc29_ * _loc21_;
            _loc10_ = _loc7_ * _loc21_ - _loc16_ * _loc8_;
            _loc24_ = _loc29_ * _loc8_ - _loc7_ * _loc26_;
            _loc23_ = 1 / Math.sqrt(_loc27_ * _loc27_ + _loc10_ * _loc10_ + _loc24_ * _loc24_);
            _loc27_ *= _loc23_;
            _loc10_ *= _loc23_;
            _loc24_ *= _loc23_;
            _loc6_.cameraX = _loc27_;
            _loc6_.cameraY = _loc10_;
            _loc6_.cameraZ = _loc24_;
            _loc6_.offset = _loc4_ * _loc27_ + _loc5_ * _loc10_ + _loc15_ * _loc24_;
            _loc18_.cameraX = -_loc27_;
            _loc18_.cameraY = -_loc10_;
            _loc18_.cameraZ = -_loc24_;
            _loc18_.offset = -_loc9_.cameraX * _loc27_ - _loc9_.cameraY * _loc10_ - _loc9_.cameraZ * _loc24_;
            if(_loc28_.offset < -_loc3_.offset)
            {
               _loc3_.cameraX = -_loc3_.cameraX;
               _loc3_.cameraY = -_loc3_.cameraY;
               _loc3_.cameraZ = -_loc3_.cameraZ;
               _loc3_.offset = -_loc3_.offset;
               _loc28_.cameraX = -_loc28_.cameraX;
               _loc28_.cameraY = -_loc28_.cameraY;
               _loc28_.cameraZ = -_loc28_.cameraZ;
               _loc28_.offset = -_loc28_.offset;
            }
            if(_loc25_.offset < -_loc22_.offset)
            {
               _loc25_.cameraX = -_loc25_.cameraX;
               _loc25_.cameraY = -_loc25_.cameraY;
               _loc25_.cameraZ = -_loc25_.cameraZ;
               _loc25_.offset = -_loc25_.offset;
               _loc22_.cameraX = -_loc22_.cameraX;
               _loc22_.cameraY = -_loc22_.cameraY;
               _loc22_.cameraZ = -_loc22_.cameraZ;
               _loc22_.offset = -_loc22_.offset;
            }
            if(_loc18_.offset < -_loc6_.offset)
            {
               _loc18_.cameraX = -_loc18_.cameraX;
               _loc18_.cameraY = -_loc18_.cameraY;
               _loc18_.cameraZ = -_loc18_.cameraZ;
               _loc18_.offset = -_loc18_.offset;
               _loc6_.cameraX = -_loc6_.cameraX;
               _loc6_.cameraY = -_loc6_.cameraY;
               _loc6_.cameraZ = -_loc6_.cameraZ;
               _loc6_.offset = -_loc6_.offset;
            }
         }
         this.space = 2;
      }
      
      private function bf9c30c(param1:Face, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number) : void
      {
         var _loc16_:Wrapper = null;
         var _loc15_:Vertex = null;
         var _loc19_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc20_:Face = param1;
         while(_loc20_ != null)
         {
            _loc16_ = _loc20_.wrapper;
            while(_loc16_ != null)
            {
               _loc15_ = _loc16_.vertex;
               if(_loc15_.transformId != param2)
               {
                  _loc19_ = _loc15_.cameraX;
                  _loc17_ = _loc15_.cameraY;
                  _loc18_ = _loc15_.cameraZ;
                  _loc15_.cameraX = param3 * _loc19_ + param4 * _loc17_ + param5 * _loc18_ + param6;
                  _loc15_.cameraY = param7 * _loc19_ + param8 * _loc17_ + param9 * _loc18_ + param10;
                  _loc15_.cameraZ = param11 * _loc19_ + param12 * _loc17_ + param13 * _loc18_ + param14;
                  if(_loc15_.cameraX < this.boundMinX)
                  {
                     this.boundMinX = _loc15_.cameraX;
                  }
                  if(_loc15_.cameraX > this.boundMaxX)
                  {
                     this.boundMaxX = _loc15_.cameraX;
                  }
                  if(_loc15_.cameraY < this.boundMinY)
                  {
                     this.boundMinY = _loc15_.cameraY;
                  }
                  if(_loc15_.cameraY > this.boundMaxY)
                  {
                     this.boundMaxY = _loc15_.cameraY;
                  }
                  if(_loc15_.cameraZ < this.boundMinZ)
                  {
                     this.boundMinZ = _loc15_.cameraZ;
                  }
                  if(_loc15_.cameraZ > this.boundMaxZ)
                  {
                     this.boundMaxZ = _loc15_.cameraZ;
                  }
                  _loc15_.transformId = param2;
               }
               _loc16_ = _loc16_.next;
            }
            _loc20_ = _loc20_.processNext;
         }
         if(param1.processNegative != null)
         {
            this.bf9c30c(param1.processNegative,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
         if(param1.processPositive != null)
         {
            this.bf9c30c(param1.processPositive,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
      }
      
      private function f4350499(param1:Face, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number) : void
      {
         var _loc16_:Wrapper = null;
         var _loc15_:Vertex = null;
         var _loc17_:Face = param1;
         while(_loc17_ != null)
         {
            _loc16_ = _loc17_.wrapper;
            while(_loc16_ != null)
            {
               _loc15_ = _loc16_.vertex;
               if(_loc15_.transformId != param2)
               {
                  if(_loc15_.x < this.boundMinX)
                  {
                     this.boundMinX = _loc15_.x;
                  }
                  if(_loc15_.x > this.boundMaxX)
                  {
                     this.boundMaxX = _loc15_.x;
                  }
                  if(_loc15_.y < this.boundMinY)
                  {
                     this.boundMinY = _loc15_.y;
                  }
                  if(_loc15_.y > this.boundMaxY)
                  {
                     this.boundMaxY = _loc15_.y;
                  }
                  if(_loc15_.z < this.boundMinZ)
                  {
                     this.boundMinZ = _loc15_.z;
                  }
                  if(_loc15_.z > this.boundMaxZ)
                  {
                     this.boundMaxZ = _loc15_.z;
                  }
                  _loc15_.transformId = param2;
               }
               _loc16_ = _loc16_.next;
            }
            _loc17_ = _loc17_.processNext;
         }
         if(param1.processNegative != null)
         {
            this.f4350499(param1.processNegative,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
         if(param1.processPositive != null)
         {
            this.f4350499(param1.processPositive,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
      }
      
      private function f5a4997f(param1:Face, param2:int) : void
      {
         var _loc5_:Wrapper = null;
         var _loc4_:Vertex = null;
         var _loc3_:Face = param1;
         while(_loc3_ != null)
         {
            _loc5_ = _loc3_.wrapper;
            while(_loc5_ != null)
            {
               _loc4_ = _loc5_.vertex;
               if(_loc4_.transformId != param2)
               {
                  if(_loc4_.cameraX < this.boundMinX)
                  {
                     this.boundMinX = _loc4_.cameraX;
                  }
                  if(_loc4_.cameraX > this.boundMaxX)
                  {
                     this.boundMaxX = _loc4_.cameraX;
                  }
                  if(_loc4_.cameraY < this.boundMinY)
                  {
                     this.boundMinY = _loc4_.cameraY;
                  }
                  if(_loc4_.cameraY > this.boundMaxY)
                  {
                     this.boundMaxY = _loc4_.cameraY;
                  }
                  if(_loc4_.cameraZ < this.boundMinZ)
                  {
                     this.boundMinZ = _loc4_.cameraZ;
                  }
                  if(_loc4_.cameraZ > this.boundMaxZ)
                  {
                     this.boundMaxZ = _loc4_.cameraZ;
                  }
                  _loc4_.transformId = param2;
               }
               _loc5_ = _loc5_.next;
            }
            _loc3_ = _loc3_.processNext;
         }
         if(param1.processNegative != null)
         {
            this.f5a4997f(param1.processNegative,param2);
         }
         if(param1.processPositive != null)
         {
            this.f5a4997f(param1.processPositive,param2);
         }
      }
      
      alternativa3d function split(param1:Camera3D, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:VG = null;
         var _loc8_:Face = this.faceStruct.create();
         this.e2c89b14(param1,this.faceStruct,_loc8_,param2,param3,param4,param5,param5 - param6,param5 + param6);
         if(_loc8_.processNegative != null)
         {
            if(collector != null)
            {
               _loc7_ = collector;
               collector = collector.next;
               _loc7_.next = null;
            }
            else
            {
               _loc7_ = new VG();
            }
            this.next = _loc7_;
            _loc7_.faceStruct = _loc8_.processNegative;
            _loc8_.processNegative = null;
            _loc7_.object = this.object;
            _loc7_.sorting = this.sorting;
            _loc7_.debug = this.debug;
            _loc7_.space = this.space;
            _loc7_.viewAligned = this.viewAligned;
            _loc7_.boundMinX = 1e+22;
            _loc7_.boundMinY = 1e+22;
            _loc7_.boundMinZ = 1e+22;
            _loc7_.boundMaxX = -1e+22;
            _loc7_.boundMaxY = -1e+22;
            _loc7_.boundMaxZ = -1e+22;
            _loc7_.f5a4997f(_loc7_.faceStruct,++this.object.transformId);
         }
         else
         {
            this.next = null;
         }
         if(_loc8_.processPositive != null)
         {
            this.faceStruct = _loc8_.processPositive;
            _loc8_.processPositive = null;
            this.boundMinX = 1e+22;
            this.boundMinY = 1e+22;
            this.boundMinZ = 1e+22;
            this.boundMaxX = -1e+22;
            this.boundMaxY = -1e+22;
            this.boundMaxZ = -1e+22;
            this.f5a4997f(this.faceStruct,++this.object.transformId);
         }
         else
         {
            this.faceStruct = null;
         }
         _loc8_.next = Face.collector;
         Face.collector = _loc8_;
      }
      
      alternativa3d function crop(param1:Camera3D, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.faceStruct = this.abbe22b(param1,this.faceStruct,param2,param3,param4,param5,param5 - param6,param5 + param6);
         if(this.faceStruct != null)
         {
            this.boundMinX = 1e+22;
            this.boundMinY = 1e+22;
            this.boundMinZ = 1e+22;
            this.boundMaxX = -1e+22;
            this.boundMaxY = -1e+22;
            this.boundMaxZ = -1e+22;
            this.f5a4997f(this.faceStruct,++this.object.transformId);
         }
      }
      
      private function e2c89b14(param1:Camera3D, param2:Face, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc27_:Face = null;
         var _loc10_:Face = null;
         var _loc33_:Wrapper = null;
         var _loc32_:Vertex = null;
         var _loc38_:Vertex = null;
         var _loc24_:Face = null;
         var _loc36_:Face = null;
         var _loc31_:Face = null;
         var _loc19_:Face = null;
         var _loc11_:Face = null;
         var _loc18_:Face = null;
         var _loc28_:Face = null;
         var _loc34_:Face = null;
         var _loc15_:Face = null;
         var _loc25_:Face = null;
         var _loc35_:Wrapper = null;
         var _loc16_:Wrapper = null;
         var _loc37_:Wrapper = null;
         var _loc12_:Boolean = false;
         var _loc20_:Vertex = null;
         var _loc22_:Vertex = null;
         var _loc23_:Vertex = null;
         var _loc14_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc39_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc21_:Boolean = false;
         var _loc26_:Number = NaN;
         var _loc30_:Number = NaN;
         if(param2.processNegative != null)
         {
            this.e2c89b14(param1,param2.processNegative,param3,param4,param5,param6,param7,param8,param9);
            param2.processNegative = null;
            _loc24_ = param3.processNegative;
            _loc36_ = param3.processPositive;
         }
         if(param2.processPositive != null)
         {
            this.e2c89b14(param1,param2.processPositive,param3,param4,param5,param6,param7,param8,param9);
            param2.processPositive = null;
            _loc31_ = param3.processNegative;
            _loc19_ = param3.processPositive;
         }
         if(param2.wrapper != null)
         {
            _loc27_ = param2;
            while(_loc27_ != null)
            {
               _loc10_ = _loc27_.processNext;
               _loc33_ = _loc27_.wrapper;
               _loc20_ = _loc33_.vertex;
               _loc33_ = _loc33_.next;
               _loc22_ = _loc33_.vertex;
               _loc33_ = _loc33_.next;
               _loc23_ = _loc33_.vertex;
               _loc33_ = _loc33_.next;
               _loc14_ = _loc20_.cameraX * param4 + _loc20_.cameraY * param5 + _loc20_.cameraZ * param6;
               _loc13_ = _loc22_.cameraX * param4 + _loc22_.cameraY * param5 + _loc22_.cameraZ * param6;
               _loc17_ = _loc23_.cameraX * param4 + _loc23_.cameraY * param5 + _loc23_.cameraZ * param6;
               _loc39_ = _loc14_ < param8 || _loc13_ < param8 || _loc17_ < param8;
               _loc29_ = _loc14_ > param9 || _loc13_ > param9 || _loc17_ > param9;
               _loc21_ = _loc14_ < param8 && _loc13_ < param8 && _loc17_ < param8;
               while(_loc33_ != null)
               {
                  _loc32_ = _loc33_.vertex;
                  _loc26_ = _loc32_.cameraX * param4 + _loc32_.cameraY * param5 + _loc32_.cameraZ * param6;
                  if(_loc26_ < param8)
                  {
                     _loc39_ = true;
                  }
                  else
                  {
                     _loc21_ = false;
                     if(_loc26_ > param9)
                     {
                        _loc29_ = true;
                     }
                  }
                  _loc32_.offset = _loc26_;
                  _loc33_ = _loc33_.next;
               }
               if(!_loc39_)
               {
                  if(_loc28_ != null)
                  {
                     _loc34_.processNext = _loc27_;
                  }
                  else
                  {
                     _loc28_ = _loc27_;
                  }
                  _loc34_ = _loc27_;
               }
               else if(!_loc29_)
               {
                  if(_loc21_)
                  {
                     if(_loc11_ != null)
                     {
                        _loc18_.processNext = _loc27_;
                     }
                     else
                     {
                        _loc11_ = _loc27_;
                     }
                     _loc18_ = _loc27_;
                  }
                  else
                  {
                     _loc20_.offset = _loc14_;
                     _loc22_.offset = _loc13_;
                     _loc23_.offset = _loc17_;
                     _loc15_ = _loc27_.create();
                     _loc15_.material = _loc27_.material;
                     param1.lastFace.next = _loc15_;
                     param1.lastFace = _loc15_;
                     _loc35_ = null;
                     _loc12_ = _loc27_.material != null && _loc27_.material.useVerticesNormals;
                     _loc33_ = _loc27_.wrapper;
                     while(_loc33_ != null)
                     {
                        _loc22_ = _loc33_.vertex;
                        if(_loc22_.offset >= param8)
                        {
                           _loc38_ = _loc22_.create();
                           param1.lastVertex.next = _loc38_;
                           param1.lastVertex = _loc38_;
                           _loc38_.x = _loc22_.x;
                           _loc38_.y = _loc22_.y;
                           _loc38_.z = _loc22_.z;
                           _loc38_.u = _loc22_.u;
                           _loc38_.v = _loc22_.v;
                           _loc38_.cameraX = _loc22_.cameraX;
                           _loc38_.cameraY = _loc22_.cameraY;
                           _loc38_.cameraZ = _loc22_.cameraZ;
                           if(_loc12_)
                           {
                              _loc38_.normalX = _loc22_.normalX;
                              _loc38_.normalY = _loc22_.normalY;
                              _loc38_.normalZ = _loc22_.normalZ;
                           }
                           _loc22_ = _loc38_;
                        }
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc22_;
                        if(_loc35_ != null)
                        {
                           _loc35_.next = _loc37_;
                        }
                        else
                        {
                           _loc15_.wrapper = _loc37_;
                        }
                        _loc35_ = _loc37_;
                        _loc33_ = _loc33_.next;
                     }
                     if(_loc11_ != null)
                     {
                        _loc18_.processNext = _loc15_;
                     }
                     else
                     {
                        _loc11_ = _loc15_;
                     }
                     _loc18_ = _loc15_;
                     _loc27_.processNext = null;
                  }
               }
               else
               {
                  _loc20_.offset = _loc14_;
                  _loc22_.offset = _loc13_;
                  _loc23_.offset = _loc17_;
                  _loc15_ = _loc27_.create();
                  _loc15_.material = _loc27_.material;
                  param1.lastFace.next = _loc15_;
                  param1.lastFace = _loc15_;
                  _loc25_ = _loc27_.create();
                  _loc25_.material = _loc27_.material;
                  param1.lastFace.next = _loc25_;
                  param1.lastFace = _loc25_;
                  _loc35_ = null;
                  _loc16_ = null;
                  _loc33_ = _loc27_.wrapper.next.next;
                  while(_loc33_.next != null)
                  {
                     _loc33_ = _loc33_.next;
                  }
                  _loc20_ = _loc33_.vertex;
                  _loc14_ = _loc20_.offset;
                  _loc12_ = _loc27_.material != null && _loc27_.material.useVerticesNormals;
                  _loc33_ = _loc27_.wrapper;
                  while(_loc33_ != null)
                  {
                     _loc22_ = _loc33_.vertex;
                     _loc13_ = _loc22_.offset;
                     if(_loc14_ < param8 && _loc13_ > param9 || _loc14_ > param9 && _loc13_ < param8)
                     {
                        _loc30_ = (param7 - _loc14_) / (_loc13_ - _loc14_);
                        _loc32_ = _loc22_.create();
                        param1.lastVertex.next = _loc32_;
                        param1.lastVertex = _loc32_;
                        _loc32_.x = _loc20_.x + (_loc22_.x - _loc20_.x) * _loc30_;
                        _loc32_.y = _loc20_.y + (_loc22_.y - _loc20_.y) * _loc30_;
                        _loc32_.z = _loc20_.z + (_loc22_.z - _loc20_.z) * _loc30_;
                        _loc32_.u = _loc20_.u + (_loc22_.u - _loc20_.u) * _loc30_;
                        _loc32_.v = _loc20_.v + (_loc22_.v - _loc20_.v) * _loc30_;
                        _loc32_.cameraX = _loc20_.cameraX + (_loc22_.cameraX - _loc20_.cameraX) * _loc30_;
                        _loc32_.cameraY = _loc20_.cameraY + (_loc22_.cameraY - _loc20_.cameraY) * _loc30_;
                        _loc32_.cameraZ = _loc20_.cameraZ + (_loc22_.cameraZ - _loc20_.cameraZ) * _loc30_;
                        if(_loc12_)
                        {
                           _loc32_.normalX = _loc20_.normalX + (_loc22_.normalX - _loc20_.normalX) * _loc30_;
                           _loc32_.normalY = _loc20_.normalY + (_loc22_.normalY - _loc20_.normalY) * _loc30_;
                           _loc32_.normalZ = _loc20_.normalZ + (_loc22_.normalZ - _loc20_.normalZ) * _loc30_;
                        }
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc32_;
                        if(_loc35_ != null)
                        {
                           _loc35_.next = _loc37_;
                        }
                        else
                        {
                           _loc15_.wrapper = _loc37_;
                        }
                        _loc35_ = _loc37_;
                        _loc38_ = _loc22_.create();
                        param1.lastVertex.next = _loc38_;
                        param1.lastVertex = _loc38_;
                        _loc38_.x = _loc32_.x;
                        _loc38_.y = _loc32_.y;
                        _loc38_.z = _loc32_.z;
                        _loc38_.u = _loc32_.u;
                        _loc38_.v = _loc32_.v;
                        _loc38_.cameraX = _loc32_.cameraX;
                        _loc38_.cameraY = _loc32_.cameraY;
                        _loc38_.cameraZ = _loc32_.cameraZ;
                        if(_loc12_)
                        {
                           _loc38_.normalX = _loc32_.normalX;
                           _loc38_.normalY = _loc32_.normalY;
                           _loc38_.normalZ = _loc32_.normalZ;
                        }
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc38_;
                        if(_loc16_ != null)
                        {
                           _loc16_.next = _loc37_;
                        }
                        else
                        {
                           _loc25_.wrapper = _loc37_;
                        }
                        _loc16_ = _loc37_;
                     }
                     if(_loc22_.offset < param8)
                     {
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc22_;
                        if(_loc35_ != null)
                        {
                           _loc35_.next = _loc37_;
                        }
                        else
                        {
                           _loc15_.wrapper = _loc37_;
                        }
                        _loc35_ = _loc37_;
                     }
                     else if(_loc22_.offset > param9)
                     {
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc22_;
                        if(_loc16_ != null)
                        {
                           _loc16_.next = _loc37_;
                        }
                        else
                        {
                           _loc25_.wrapper = _loc37_;
                        }
                        _loc16_ = _loc37_;
                     }
                     else
                     {
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc22_;
                        if(_loc16_ != null)
                        {
                           _loc16_.next = _loc37_;
                        }
                        else
                        {
                           _loc25_.wrapper = _loc37_;
                        }
                        _loc16_ = _loc37_;
                        _loc38_ = _loc22_.create();
                        param1.lastVertex.next = _loc38_;
                        param1.lastVertex = _loc38_;
                        _loc38_.x = _loc22_.x;
                        _loc38_.y = _loc22_.y;
                        _loc38_.z = _loc22_.z;
                        _loc38_.u = _loc22_.u;
                        _loc38_.v = _loc22_.v;
                        _loc38_.cameraX = _loc22_.cameraX;
                        _loc38_.cameraY = _loc22_.cameraY;
                        _loc38_.cameraZ = _loc22_.cameraZ;
                        if(_loc12_)
                        {
                           _loc38_.normalX = _loc22_.normalX;
                           _loc38_.normalY = _loc22_.normalY;
                           _loc38_.normalZ = _loc22_.normalZ;
                        }
                        _loc37_ = _loc33_.create();
                        _loc37_.vertex = _loc38_;
                        if(_loc35_ != null)
                        {
                           _loc35_.next = _loc37_;
                        }
                        else
                        {
                           _loc15_.wrapper = _loc37_;
                        }
                        _loc35_ = _loc37_;
                     }
                     _loc20_ = _loc22_;
                     _loc14_ = _loc13_;
                     _loc33_ = _loc33_.next;
                  }
                  if(_loc11_ != null)
                  {
                     _loc18_.processNext = _loc15_;
                  }
                  else
                  {
                     _loc11_ = _loc15_;
                  }
                  _loc18_ = _loc15_;
                  if(_loc28_ != null)
                  {
                     _loc34_.processNext = _loc25_;
                  }
                  else
                  {
                     _loc28_ = _loc25_;
                  }
                  _loc34_ = _loc25_;
                  _loc27_.processNext = null;
               }
               _loc27_ = _loc10_;
            }
         }
         if(_loc11_ != null || _loc24_ != null && _loc31_ != null)
         {
            if(_loc11_ == null)
            {
               _loc11_ = param2.create();
               param1.lastFace.next = _loc11_;
               param1.lastFace = _loc11_;
            }
            else
            {
               _loc18_.processNext = null;
            }
            if(this.sorting == 3)
            {
               _loc11_.normalX = param2.normalX;
               _loc11_.normalY = param2.normalY;
               _loc11_.normalZ = param2.normalZ;
               _loc11_.offset = param2.offset;
            }
            _loc11_.processNegative = _loc24_;
            _loc11_.processPositive = _loc31_;
            param3.processNegative = _loc11_;
         }
         else
         {
            param3.processNegative = _loc24_ != null ? _loc24_ : _loc31_;
         }
         if(_loc28_ != null || _loc36_ != null && _loc19_ != null)
         {
            if(_loc28_ == null)
            {
               _loc28_ = param2.create();
               param1.lastFace.next = _loc28_;
               param1.lastFace = _loc28_;
            }
            else
            {
               _loc34_.processNext = null;
            }
            if(this.sorting == 3)
            {
               _loc28_.normalX = param2.normalX;
               _loc28_.normalY = param2.normalY;
               _loc28_.normalZ = param2.normalZ;
               _loc28_.offset = param2.offset;
            }
            _loc28_.processNegative = _loc36_;
            _loc28_.processPositive = _loc19_;
            param3.processPositive = _loc28_;
         }
         else
         {
            param3.processPositive = _loc36_ != null ? _loc36_ : _loc19_;
         }
      }
      
      private function abbe22b(param1:Camera3D, param2:Face, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : Face
      {
         var _loc21_:Face = null;
         var _loc9_:Face = null;
         var _loc26_:Wrapper = null;
         var _loc25_:Vertex = null;
         var _loc28_:Face = null;
         var _loc15_:Face = null;
         var _loc22_:Face = null;
         var _loc27_:Face = null;
         var _loc16_:Vertex = null;
         var _loc17_:Vertex = null;
         var _loc18_:Vertex = null;
         var _loc12_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc30_:Boolean = false;
         var _loc23_:Boolean = false;
         var _loc20_:Number = NaN;
         var _loc19_:Face = null;
         var _loc13_:Wrapper = null;
         var _loc29_:Wrapper = null;
         var _loc11_:Boolean = false;
         var _loc24_:Number = NaN;
         if(param2.processNegative != null)
         {
            _loc28_ = this.abbe22b(param1,param2.processNegative,param3,param4,param5,param6,param7,param8);
            param2.processNegative = null;
         }
         if(param2.processPositive != null)
         {
            _loc15_ = this.abbe22b(param1,param2.processPositive,param3,param4,param5,param6,param7,param8);
            param2.processPositive = null;
         }
         if(param2.wrapper != null)
         {
            _loc21_ = param2;
            while(_loc21_ != null)
            {
               _loc9_ = _loc21_.processNext;
               _loc26_ = _loc21_.wrapper;
               _loc16_ = _loc26_.vertex;
               _loc26_ = _loc26_.next;
               _loc17_ = _loc26_.vertex;
               _loc26_ = _loc26_.next;
               _loc18_ = _loc26_.vertex;
               _loc26_ = _loc26_.next;
               _loc12_ = _loc16_.cameraX * param3 + _loc16_.cameraY * param4 + _loc16_.cameraZ * param5;
               _loc10_ = _loc17_.cameraX * param3 + _loc17_.cameraY * param4 + _loc17_.cameraZ * param5;
               _loc14_ = _loc18_.cameraX * param3 + _loc18_.cameraY * param4 + _loc18_.cameraZ * param5;
               _loc30_ = _loc12_ < param7 || _loc10_ < param7 || _loc14_ < param7;
               _loc23_ = _loc12_ > param8 || _loc10_ > param8 || _loc14_ > param8;
               while(_loc26_ != null)
               {
                  _loc25_ = _loc26_.vertex;
                  _loc20_ = _loc25_.cameraX * param3 + _loc25_.cameraY * param4 + _loc25_.cameraZ * param5;
                  if(_loc20_ < param7)
                  {
                     _loc30_ = true;
                  }
                  else if(_loc20_ > param8)
                  {
                     _loc23_ = true;
                  }
                  _loc25_.offset = _loc20_;
                  _loc26_ = _loc26_.next;
               }
               if(!_loc23_)
               {
                  _loc21_.processNext = null;
               }
               else if(!_loc30_)
               {
                  if(_loc22_ != null)
                  {
                     _loc27_.processNext = _loc21_;
                  }
                  else
                  {
                     _loc22_ = _loc21_;
                  }
                  _loc27_ = _loc21_;
               }
               else
               {
                  _loc16_.offset = _loc12_;
                  _loc17_.offset = _loc10_;
                  _loc18_.offset = _loc14_;
                  _loc19_ = _loc21_.create();
                  _loc19_.material = _loc21_.material;
                  param1.lastFace.next = _loc19_;
                  param1.lastFace = _loc19_;
                  _loc13_ = null;
                  _loc26_ = _loc21_.wrapper.next.next;
                  while(_loc26_.next != null)
                  {
                     _loc26_ = _loc26_.next;
                  }
                  _loc16_ = _loc26_.vertex;
                  _loc12_ = _loc16_.offset;
                  _loc11_ = _loc21_.material != null && _loc21_.material.useVerticesNormals;
                  _loc26_ = _loc21_.wrapper;
                  while(_loc26_ != null)
                  {
                     _loc17_ = _loc26_.vertex;
                     _loc10_ = _loc17_.offset;
                     if(_loc12_ < param7 && _loc10_ > param8 || _loc12_ > param8 && _loc10_ < param7)
                     {
                        _loc24_ = (param6 - _loc12_) / (_loc10_ - _loc12_);
                        _loc25_ = _loc17_.create();
                        param1.lastVertex.next = _loc25_;
                        param1.lastVertex = _loc25_;
                        _loc25_.x = _loc16_.x + (_loc17_.x - _loc16_.x) * _loc24_;
                        _loc25_.y = _loc16_.y + (_loc17_.y - _loc16_.y) * _loc24_;
                        _loc25_.z = _loc16_.z + (_loc17_.z - _loc16_.z) * _loc24_;
                        _loc25_.u = _loc16_.u + (_loc17_.u - _loc16_.u) * _loc24_;
                        _loc25_.v = _loc16_.v + (_loc17_.v - _loc16_.v) * _loc24_;
                        _loc25_.cameraX = _loc16_.cameraX + (_loc17_.cameraX - _loc16_.cameraX) * _loc24_;
                        _loc25_.cameraY = _loc16_.cameraY + (_loc17_.cameraY - _loc16_.cameraY) * _loc24_;
                        _loc25_.cameraZ = _loc16_.cameraZ + (_loc17_.cameraZ - _loc16_.cameraZ) * _loc24_;
                        if(_loc11_)
                        {
                           _loc25_.normalX = _loc16_.normalX + (_loc17_.normalX - _loc16_.normalX) * _loc24_;
                           _loc25_.normalY = _loc16_.normalY + (_loc17_.normalY - _loc16_.normalY) * _loc24_;
                           _loc25_.normalZ = _loc16_.normalZ + (_loc17_.normalZ - _loc16_.normalZ) * _loc24_;
                        }
                        _loc29_ = _loc26_.create();
                        _loc29_.vertex = _loc25_;
                        if(_loc13_ != null)
                        {
                           _loc13_.next = _loc29_;
                        }
                        else
                        {
                           _loc19_.wrapper = _loc29_;
                        }
                        _loc13_ = _loc29_;
                     }
                     if(_loc10_ >= param7)
                     {
                        _loc29_ = _loc26_.create();
                        _loc29_.vertex = _loc17_;
                        if(_loc13_ != null)
                        {
                           _loc13_.next = _loc29_;
                        }
                        else
                        {
                           _loc19_.wrapper = _loc29_;
                        }
                        _loc13_ = _loc29_;
                     }
                     _loc16_ = _loc17_;
                     _loc12_ = _loc10_;
                     _loc26_ = _loc26_.next;
                  }
                  if(_loc22_ != null)
                  {
                     _loc27_.processNext = _loc19_;
                  }
                  else
                  {
                     _loc22_ = _loc19_;
                  }
                  _loc27_ = _loc19_;
                  _loc21_.processNext = null;
               }
               _loc21_ = _loc9_;
            }
         }
         if(_loc22_ != null || _loc28_ != null && _loc15_ != null)
         {
            if(_loc22_ == null)
            {
               _loc22_ = param2.create();
               param1.lastFace.next = _loc22_;
               param1.lastFace = _loc22_;
            }
            else
            {
               _loc27_.processNext = null;
            }
            if(this.sorting == 3)
            {
               _loc22_.normalX = param2.normalX;
               _loc22_.normalY = param2.normalY;
               _loc22_.normalZ = param2.normalZ;
               _loc22_.offset = param2.offset;
            }
            _loc22_.processNegative = _loc28_;
            _loc22_.processPositive = _loc15_;
            return _loc22_;
         }
         return _loc28_ != null ? _loc28_ : _loc15_;
      }
      
      alternativa3d function transformStruct(param1:Face, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number) : void
      {
         var _loc16_:Wrapper = null;
         var _loc15_:Vertex = null;
         var _loc19_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc20_:Face = param1;
         while(_loc20_ != null)
         {
            _loc16_ = _loc20_.wrapper;
            while(_loc16_ != null)
            {
               _loc15_ = _loc16_.vertex;
               if(_loc15_.transformId != param2)
               {
                  _loc19_ = _loc15_.cameraX;
                  _loc17_ = _loc15_.cameraY;
                  _loc18_ = _loc15_.cameraZ;
                  _loc15_.cameraX = param3 * _loc19_ + param4 * _loc17_ + param5 * _loc18_ + param6;
                  _loc15_.cameraY = param7 * _loc19_ + param8 * _loc17_ + param9 * _loc18_ + param10;
                  _loc15_.cameraZ = param11 * _loc19_ + param12 * _loc17_ + param13 * _loc18_ + param14;
                  _loc15_.transformId = param2;
               }
               _loc16_ = _loc16_.next;
            }
            _loc20_ = _loc20_.processNext;
         }
         if(param1.processNegative != null)
         {
            this.transformStruct(param1.processNegative,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
         if(param1.processPositive != null)
         {
            this.transformStruct(param1.processPositive,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         }
      }
      
      alternativa3d function draw(param1:Camera3D, param2:Number, param3:Object3D) : void
      {
         var _loc7_:Face = null;
         var _loc4_:Face = null;
         var _loc6_:Face = null;
         var _loc5_:Face = null;
         if(this.space == 1)
         {
            this.transformStruct(this.faceStruct,++this.object.transformId,param3.ma,param3.mb,param3.mc,param3.md,param3.me,param3.mf,param3.mg,param3.mh,param3.mi,param3.mj,param3.mk,param3.ml);
         }
         if(this.viewAligned)
         {
            _loc7_ = this.faceStruct;
            if(this.debug > 0)
            {
               if(this.debug & 0x10)
               {
                  Debug.drawEdges(param1,_loc7_,this.space != 2 ? 16777215 : 16750848);
               }
               if(this.debug & 8)
               {
                  if(this.space == 1)
                  {
                     Debug.drawBounds(param1,param3,this.boundMinX,this.boundMinY,this.boundMinZ,this.boundMaxX,this.boundMaxY,this.boundMaxZ,10092288);
                  }
               }
            }
            param1.addTransparent(_loc7_,this.object);
         }
         else
         {
            switch(this.sorting)
            {
               case 0:
                  _loc7_ = this.faceStruct;
                  break;
               case 1:
                  _loc7_ = this.faceStruct.processNext != null ? param1.sortByAverageZ(this.faceStruct) : this.faceStruct;
                  break;
               case 2:
                  _loc7_ = this.faceStruct.processNext != null ? param1.sortByDynamicBSP(this.faceStruct,param2) : this.faceStruct;
                  break;
               case 3:
                  _loc7_ = this.d1dfe181(this.faceStruct);
            }
            if(this.debug > 0)
            {
               if(this.debug & 0x10)
               {
                  Debug.drawEdges(param1,_loc7_,16777215);
               }
               if(this.debug & 8)
               {
                  if(this.space == 1)
                  {
                     Debug.drawBounds(param1,param3,this.boundMinX,this.boundMinY,this.boundMinZ,this.boundMaxX,this.boundMaxY,this.boundMaxZ,10092288);
                  }
                  else if(this.space == 2)
                  {
                     Debug.drawBounds(param1,this.object,this.boundMinX,this.boundMinY,this.boundMinZ,this.boundMaxX,this.boundMaxY,this.boundMaxZ,16750848);
                  }
               }
            }
            _loc5_ = _loc7_;
            while(_loc5_ != null)
            {
               _loc4_ = _loc5_.processNext;
               if(_loc4_ == null || _loc4_.material != _loc7_.material)
               {
                  _loc5_.processNext = null;
                  if(_loc7_.material != null)
                  {
                     _loc7_.processNegative = _loc6_;
                     _loc6_ = _loc7_;
                  }
                  else
                  {
                     while(_loc7_ != null)
                     {
                        _loc5_ = _loc7_.processNext;
                        _loc7_.processNext = null;
                        _loc7_ = _loc5_;
                     }
                  }
                  _loc7_ = _loc4_;
               }
               _loc5_ = _loc4_;
            }
            _loc7_ = _loc6_;
            while(_loc7_ != null)
            {
               _loc4_ = _loc7_.processNegative;
               _loc7_.processNegative = null;
               param1.addTransparent(_loc7_,this.object);
               _loc7_ = _loc4_;
            }
         }
         this.faceStruct = null;
      }
      
      private function d1dfe181(param1:Face, param2:Face = null) : Face
      {
         var _loc4_:Face = null;
         var _loc3_:Face = null;
         var _loc5_:Face = null;
         if(param1.offset < 0)
         {
            _loc3_ = param1.processNegative;
            _loc5_ = param1.processPositive;
         }
         else
         {
            _loc3_ = param1.processPositive;
            _loc5_ = param1.processNegative;
         }
         param1.processNegative = null;
         param1.processPositive = null;
         if(_loc5_ != null)
         {
            param2 = this.d1dfe181(_loc5_,param2);
         }
         if(param1.wrapper != null)
         {
            _loc4_ = param1;
            while(_loc4_.processNext != null)
            {
               _loc4_ = _loc4_.processNext;
            }
            _loc4_.processNext = param2;
            param2 = param1;
         }
         if(_loc3_ != null)
         {
            param2 = this.d1dfe181(_loc3_,param2);
         }
         return param2;
      }
   }
}

