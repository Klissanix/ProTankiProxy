package alternativa.engine3d.loaders
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.FillMaterial;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import flash.geom.Matrix;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class Parser3DS
   {
      
      private static const c3e8efa7:int = 19789;
      
      private static const a340af55:int = 2;
      
      private static const cfa0066:int = 15677;
      
      private static const c3a6dabe:int = 45056;
      
      private static const f854b32:int = 16384;
      
      private static const e41fd85:int = 16640;
      
      private static const bd28597:int = 16656;
      
      private static const a5ee0fb0:int = 16672;
      
      private static const a3716ddd:int = 16688;
      
      private static const b6d2b24d:int = 16720;
      
      private static const f1ec7684:int = 16704;
      
      private static const e7595fb9:int = 16736;
      
      private static const f2edd9d6:int = 45055;
      
      private var data:ByteArray;
      
      private var d39eb057:Object;
      
      private var f2b12cd4:Array;
      
      private var f5f52b33:Object;
      
      public var objects:Vector.<Object3D>;
      
      public var parents:Vector.<Object3D>;
      
      public var materials:Vector.<Material>;
      
      public var textureMaterials:Vector.<TextureMaterial>;
      
      public function Parser3DS()
      {
         super();
      }
      
      public function getObjectByName(param1:String) : Object3D
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.objects)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function parse(param1:ByteArray, param2:String = "", param3:Number = 1) : void
      {
         if(param1.bytesAvailable < 6)
         {
            return;
         }
         this.data = param1;
         param1.endian = "littleEndian";
         this.b270d396(param1.position,param1.bytesAvailable);
         this.objects = new Vector.<Object3D>();
         this.parents = new Vector.<Object3D>();
         this.materials = new Vector.<Material>();
         this.textureMaterials = new Vector.<TextureMaterial>();
         this.cfc8937(param2,param3);
         param1 = null;
         this.d39eb057 = null;
         this.f2b12cd4 = null;
         this.f5f52b33 = null;
      }
      
      private function c31f8921(param1:int) : ChunkInfo
      {
         this.data.position = param1;
         var _loc2_:ChunkInfo = new ChunkInfo();
         _loc2_.id = this.data.readUnsignedShort();
         _loc2_.size = this.data.readUnsignedInt();
         _loc2_.dataSize = _loc2_.size - 6;
         _loc2_.dataPosition = this.data.position;
         _loc2_.nextChunkPosition = param1 + _loc2_.size;
         return _loc2_;
      }
      
      private function b270d396(param1:int, param2:int) : void
      {
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:ChunkInfo = this.c31f8921(param1);
         this.data.position = param1;
         switch(_loc3_.id - 19789)
         {
            case 0:
               this.c4781040(_loc3_.dataPosition,_loc3_.dataSize);
         }
         this.b270d396(_loc3_.nextChunkPosition,param2 - _loc3_.size);
      }
      
      private function c4781040(param1:int, param2:int) : void
      {
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:ChunkInfo = this.c31f8921(param1);
         switch(_loc3_.id)
         {
            case 2:
               break;
            case 15677:
               this.f3b99b8d(_loc3_.dataPosition,_loc3_.dataSize);
               break;
            case 45056:
               this.e12054c3(_loc3_.dataPosition,_loc3_.dataSize);
         }
         this.c4781040(_loc3_.nextChunkPosition,param2 - _loc3_.size);
      }
      
      private function f3b99b8d(param1:int, param2:int) : void
      {
         var _loc3_:ChunkInfo = null;
         var _loc4_:MaterialData = null;
         while(param2 >= 6)
         {
            _loc3_ = this.c31f8921(param1);
            switch(_loc3_.id)
            {
               case 45055:
                  _loc4_ = new MaterialData();
                  this.e290e7d8(_loc4_,_loc3_.dataPosition,_loc3_.dataSize);
                  break;
               case 16384:
                  this.b366ff1(_loc3_);
            }
            param1 = _loc3_.nextChunkPosition;
            param2 -= _loc3_.size;
         }
      }
      
      private function b366ff1(param1:ChunkInfo) : void
      {
         if(this.d39eb057 == null)
         {
            this.d39eb057 = {};
         }
         var _loc3_:ObjectData = new ObjectData();
         _loc3_.name = this.getString(param1.dataPosition);
         this.d39eb057[_loc3_.name] = _loc3_;
         var _loc2_:int = _loc3_.name.length + 1;
         this.e9c63dd(_loc3_,param1.dataPosition + _loc2_,param1.dataSize - _loc2_);
      }
      
      private function e9c63dd(param1:ObjectData, param2:int, param3:int) : void
      {
         if(param3 < 6)
         {
            return;
         }
         var _loc4_:ChunkInfo;
         switch((_loc4_ = this.c31f8921(param2)).id)
         {
            case 16640:
               this.f2535688(param1,_loc4_.dataPosition,_loc4_.dataSize);
               break;
            case 17920:
            case 18176:
         }
         this.e9c63dd(param1,_loc4_.nextChunkPosition,param3 - _loc4_.size);
      }
      
      private function f2535688(param1:ObjectData, param2:int, param3:int) : void
      {
         if(param3 < 6)
         {
            return;
         }
         var _loc4_:ChunkInfo;
         switch((_loc4_ = this.c31f8921(param2)).id)
         {
            case 16656:
               this.c281b53f(param1);
               break;
            case 16704:
               this.a3da8557(param1);
               break;
            case 16736:
               this.e5e113aa(param1);
               break;
            case 16672:
               this.a6cddd05(param1,_loc4_);
         }
         this.f2535688(param1,_loc4_.nextChunkPosition,param3 - _loc4_.size);
      }
      
      private function c281b53f(param1:ObjectData) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(this.data.readUnsignedShort());
         param1.vertices = new Vector.<Number>(_loc2_ * 3,true);
         while(_loc3_ < _loc2_)
         {
            param1.vertices[_loc4_++] = this.data.readFloat();
            param1.vertices[_loc4_++] = this.data.readFloat();
            param1.vertices[_loc4_++] = this.data.readFloat();
            _loc3_++;
         }
      }
      
      private function a3da8557(param1:ObjectData) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(this.data.readUnsignedShort());
         param1.uvs = new Vector.<Number>(_loc2_ * 2,true);
         while(_loc3_ < _loc2_)
         {
            param1.uvs[_loc4_++] = this.data.readFloat();
            param1.uvs[_loc4_++] = this.data.readFloat();
            _loc3_++;
         }
      }
      
      private function e5e113aa(param1:ObjectData) : void
      {
         param1.a = this.data.readFloat();
         param1.e = this.data.readFloat();
         param1.i = this.data.readFloat();
         param1.b = this.data.readFloat();
         param1.f = this.data.readFloat();
         param1.j = this.data.readFloat();
         param1.c = this.data.readFloat();
         param1.g = this.data.readFloat();
         param1.k = this.data.readFloat();
         param1.d = this.data.readFloat();
         param1.h = this.data.readFloat();
         param1.l = this.data.readFloat();
      }
      
      private function a6cddd05(param1:ObjectData, param2:ChunkInfo) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = int(this.data.readUnsignedShort());
         param1.faces = new Vector.<int>(_loc4_ * 3);
         param1.smoothingGroups = new Vector.<uint>(_loc4_);
         while(_loc5_ < _loc4_)
         {
            param1.faces[_loc6_++] = this.data.readUnsignedShort();
            param1.faces[_loc6_++] = this.data.readUnsignedShort();
            param1.faces[_loc6_++] = this.data.readUnsignedShort();
            this.data.position += 2;
            _loc5_++;
         }
         var _loc3_:int = 2 + 8 * _loc4_;
         this.b33ba982(param1,param2.dataPosition + _loc3_,param2.dataSize - _loc3_);
      }
      
      private function b33ba982(param1:ObjectData, param2:int, param3:int) : void
      {
         if(param3 < 6)
         {
            return;
         }
         var _loc4_:ChunkInfo;
         switch((_loc4_ = this.c31f8921(param2)).id)
         {
            case 16688:
               this.f187b396(param1);
               break;
            case 16720:
               this.e5700449(param1);
         }
         this.b33ba982(param1,_loc4_.nextChunkPosition,param3 - _loc4_.size);
      }
      
      private function f187b396(param1:ObjectData) : void
      {
         var _loc3_:int = 0;
         if(param1.surfaces == null)
         {
            param1.surfaces = {};
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         param1.surfaces[this.getString(this.data.position)] = _loc4_;
         var _loc2_:int = int(this.data.readUnsignedShort());
         while(_loc3_ < _loc2_)
         {
            _loc4_[_loc3_] = this.data.readUnsignedShort();
            _loc3_++;
         }
      }
      
      private function e5700449(param1:ObjectData) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = param1.faces.length / 3;
         while(_loc3_ < _loc2_)
         {
            param1.smoothingGroups[_loc3_] = this.data.readUnsignedInt();
            _loc3_++;
         }
      }
      
      private function e12054c3(param1:int, param2:int) : void
      {
         var _loc3_:ChunkInfo = null;
         var _loc4_:AnimationData = null;
         while(param2 >= 6)
         {
            _loc3_ = this.c31f8921(param1);
            switch(_loc3_.id - 45057)
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
                  if(this.f2b12cd4 == null)
                  {
                     this.f2b12cd4 = [];
                  }
                  _loc4_ = new AnimationData();
                  this.f2b12cd4.push(_loc4_);
                  this.e65e96f3(_loc4_,_loc3_.dataPosition,_loc3_.dataSize);
            }
            param1 = int(_loc3_.nextChunkPosition);
            param2 -= _loc3_.size;
         }
      }
      
      private function e65e96f3(param1:AnimationData, param2:int, param3:int) : void
      {
         if(param3 < 6)
         {
            return;
         }
         var _loc4_:ChunkInfo;
         switch((_loc4_ = this.c31f8921(param2)).id - 45072)
         {
            case 0:
               param1.objectName = this.getString(this.data.position);
               this.data.position += 4;
               param1.parentIndex = this.data.readUnsignedShort();
               break;
            case 1:
               param1.objectName = this.getString(this.data.position);
               break;
            case 3:
               param1.pivot = new Vector3D(this.data.readFloat(),this.data.readFloat(),this.data.readFloat());
               break;
            case 16:
               this.data.position += 20;
               param1.position = new Vector3D(this.data.readFloat(),this.data.readFloat(),this.data.readFloat());
               break;
            case 17:
               this.data.position += 20;
               param1.rotation = this.a6b0e9bf(this.data.readFloat(),this.data.readFloat(),this.data.readFloat(),this.data.readFloat());
               break;
            case 18:
               this.data.position += 20;
               param1.scale = new Vector3D(this.data.readFloat(),this.data.readFloat(),this.data.readFloat());
         }
         this.e65e96f3(param1,_loc4_.nextChunkPosition,param3 - _loc4_.size);
      }
      
      private function e290e7d8(param1:MaterialData, param2:int, param3:int) : void
      {
         if(param3 < 6)
         {
            return;
         }
         var _loc4_:ChunkInfo;
         switch((_loc4_ = this.c31f8921(param2)).id)
         {
            case 40960:
               this.a74a28a4(param1);
               break;
            case 40976:
               break;
            case 40992:
               this.data.position = _loc4_.dataPosition + 6;
               param1.color = (this.data.readUnsignedByte() << 16) + (this.data.readUnsignedByte() << 8) + this.data.readUnsignedByte();
               break;
            case 41008:
               break;
            case 41024:
               this.data.position = _loc4_.dataPosition + 6;
               param1.glossiness = this.data.readUnsignedShort();
               break;
            case 41025:
               this.data.position = _loc4_.dataPosition + 6;
               param1.specular = this.data.readUnsignedShort();
               break;
            case 41040:
               this.data.position = _loc4_.dataPosition + 6;
               param1.transparency = this.data.readUnsignedShort();
               break;
            case 41472:
               param1.diffuseMap = new MapData();
               this.a5d5f984(param1.name,param1.diffuseMap,_loc4_.dataPosition,_loc4_.dataSize);
               break;
            case 41786:
               break;
            case 41488:
               param1.opacityMap = new MapData();
               this.a5d5f984(param1.name,param1.opacityMap,_loc4_.dataPosition,_loc4_.dataSize);
               break;
            case 41520:
            case 41788:
            case 41476:
            case 41789:
            case 41504:
         }
         this.e290e7d8(param1,_loc4_.nextChunkPosition,param3 - _loc4_.size);
      }
      
      private function a74a28a4(param1:MaterialData) : void
      {
         if(this.f5f52b33 == null)
         {
            this.f5f52b33 = {};
         }
         param1.name = this.getString(this.data.position);
         this.f5f52b33[param1.name] = param1;
      }
      
      private function a5d5f984(param1:String, param2:MapData, param3:int, param4:int) : void
      {
         if(param4 < 6)
         {
            return;
         }
         var _loc5_:ChunkInfo;
         switch((_loc5_ = this.c31f8921(param3)).id)
         {
            case 41728:
               param2.filename = this.getString(_loc5_.dataPosition).toLowerCase();
               break;
            case 41809:
               break;
            case 41812:
               param2.scaleU = this.data.readFloat();
               break;
            case 41814:
               param2.scaleV = this.data.readFloat();
               break;
            case 41816:
               param2.offsetU = this.data.readFloat();
               break;
            case 41818:
               param2.offsetV = this.data.readFloat();
               break;
            case 41820:
               param2.rotation = this.data.readFloat();
         }
         this.a5d5f984(param1,param2,_loc5_.nextChunkPosition,param4 - _loc5_.size);
      }
      
      private function cfc8937(param1:String, param2:Number) : void
      {
         var _loc16_:String = null;
         var _loc15_:String = null;
         var _loc18_:ObjectData = null;
         var _loc20_:Object3D = null;
         var _loc11_:MaterialData = null;
         var _loc12_:MapData = null;
         var _loc17_:Matrix = null;
         var _loc14_:Number = NaN;
         var _loc4_:TextureMaterial = null;
         var _loc19_:FillMaterial = null;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:AnimationData = null;
         var _loc7_:int = 0;
         var _loc13_:int = 0;
         var _loc9_:AnimationData = null;
         var _loc3_:ObjectData = null;
         var _loc10_:String = null;
         for(_loc16_ in this.f5f52b33)
         {
            _loc11_ = this.f5f52b33[_loc16_];
            _loc12_ = _loc11_.diffuseMap;
            if(_loc12_ != null)
            {
               _loc17_ = new Matrix();
               _loc14_ = _loc12_.rotation * 3.141592653589793 / 180;
               _loc17_.translate(-_loc12_.offsetU,_loc12_.offsetV);
               _loc17_.translate(-0.5,-0.5);
               _loc17_.rotate(-_loc14_);
               _loc17_.scale(_loc12_.scaleU,_loc12_.scaleV);
               _loc17_.translate(0.5,0.5);
               _loc11_.matrix = _loc17_;
               _loc4_ = new TextureMaterial();
               _loc4_.name = _loc16_;
               _loc4_.diffuseMapURL = param1 + _loc12_.filename;
               _loc4_.opacityMapURL = _loc11_.opacityMap != null ? param1 + _loc11_.opacityMap.filename : null;
               _loc11_.material = _loc4_;
               _loc4_.name = _loc11_.name;
               this.textureMaterials.push(_loc4_);
            }
            else
            {
               _loc19_ = new FillMaterial(_loc11_.color);
               _loc11_.material = _loc19_;
               _loc19_.name = _loc11_.name;
            }
            this.materials.push(_loc11_.material);
         }
         if(this.f2b12cd4 != null)
         {
            if(this.d39eb057 != null)
            {
               _loc5_ = int(this.f2b12cd4.length);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc8_ = this.f2b12cd4[_loc6_];
                  _loc15_ = _loc8_.objectName;
                  _loc18_ = this.d39eb057[_loc15_];
                  if(_loc18_ != null)
                  {
                     _loc7_ = _loc6_ + 1;
                     _loc13_ = 1;
                     while(_loc7_ < _loc5_)
                     {
                        _loc9_ = this.f2b12cd4[_loc7_];
                        if(!_loc9_.isInstance && _loc15_ == _loc9_.objectName)
                        {
                           _loc3_ = new ObjectData();
                           _loc10_ = _loc15_ + _loc13_++;
                           _loc3_.name = _loc10_;
                           this.d39eb057[_loc10_] = _loc3_;
                           _loc9_.objectName = _loc10_;
                           _loc3_.vertices = _loc18_.vertices;
                           _loc3_.uvs = _loc18_.uvs;
                           _loc3_.faces = _loc18_.faces;
                           _loc3_.smoothingGroups = _loc18_.smoothingGroups;
                           _loc3_.surfaces = _loc18_.surfaces;
                           _loc3_.a = _loc18_.a;
                           _loc3_.b = _loc18_.b;
                           _loc3_.c = _loc18_.c;
                           _loc3_.d = _loc18_.d;
                           _loc3_.e = _loc18_.e;
                           _loc3_.f = _loc18_.f;
                           _loc3_.g = _loc18_.g;
                           _loc3_.h = _loc18_.h;
                           _loc3_.i = _loc18_.i;
                           _loc3_.j = _loc18_.j;
                           _loc3_.k = _loc18_.k;
                           _loc3_.l = _loc18_.l;
                        }
                        _loc7_++;
                     }
                  }
                  if(_loc18_ != null && _loc18_.vertices != null)
                  {
                     _loc20_ = new Mesh();
                     this.f9a385d(_loc20_ as Mesh,_loc18_,_loc8_,param2);
                  }
                  else
                  {
                     _loc20_ = new Object3D();
                  }
                  _loc20_.name = _loc15_;
                  _loc8_.object = _loc20_;
                  if(_loc8_.position != null)
                  {
                     _loc20_.x = _loc8_.position.x * param2;
                     _loc20_.y = _loc8_.position.y * param2;
                     _loc20_.z = _loc8_.position.z * param2;
                  }
                  if(_loc8_.rotation != null)
                  {
                     _loc20_.rotationX = _loc8_.rotation.x;
                     _loc20_.rotationY = _loc8_.rotation.y;
                     _loc20_.rotationZ = _loc8_.rotation.z;
                  }
                  if(_loc8_.scale != null)
                  {
                     _loc20_.scaleX = _loc8_.scale.x;
                     _loc20_.scaleY = _loc8_.scale.y;
                     _loc20_.scaleZ = _loc8_.scale.z;
                  }
                  _loc6_++;
               }
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  _loc8_ = this.f2b12cd4[_loc6_];
                  this.objects.push(_loc8_.object);
                  this.parents.push(_loc8_.parentIndex == 65535 ? null : AnimationData(this.f2b12cd4[_loc8_.parentIndex]).object);
                  _loc6_++;
               }
            }
         }
         else
         {
            for(_loc15_ in this.d39eb057)
            {
               _loc18_ = this.d39eb057[_loc15_];
               if(_loc18_.vertices != null)
               {
                  _loc20_ = new Mesh();
                  _loc20_.name = _loc15_;
                  this.f9a385d(_loc20_ as Mesh,_loc18_,null,param2);
                  this.objects.push(_loc20_);
                  this.parents.push(null);
               }
            }
         }
      }
      
      private function f9a385d(param1:Mesh, param2:ObjectData, param3:AnimationData, param4:Number) : void
      {
         var _loc8_:int = 0;
         var _loc33_:int = 0;
         var _loc27_:Face = null;
         var _loc6_:Vertex = null;
         var _loc9_:int = 0;
         var _loc12_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc13_:Boolean = false;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc5_:Face = null;
         var _loc11_:String = null;
         var _loc40_:* = undefined;
         var _loc26_:MaterialData = null;
         var _loc29_:Material = null;
         var _loc34_:Wrapper = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:int = 0;
         var _loc25_:int = 0;
         var _loc10_:Boolean = false;
         var _loc7_:Vector.<Vertex> = new Vector.<Vertex>();
         var _loc38_:Vector.<Face> = new Vector.<Face>();
         if(param3 != null)
         {
            _loc12_ = param2.a;
            _loc14_ = param2.b;
            _loc15_ = param2.c;
            _loc16_ = param2.d;
            _loc17_ = param2.e;
            _loc18_ = param2.f;
            _loc19_ = param2.g;
            _loc20_ = param2.h;
            _loc21_ = param2.i;
            _loc22_ = param2.j;
            _loc23_ = param2.k;
            _loc24_ = param2.l;
            _loc28_ = 1 / (-_loc15_ * _loc18_ * _loc21_ + _loc14_ * _loc19_ * _loc21_ + _loc15_ * _loc17_ * _loc22_ - _loc12_ * _loc19_ * _loc22_ - _loc14_ * _loc17_ * _loc23_ + _loc12_ * _loc18_ * _loc23_);
            param2.a = (-_loc19_ * _loc22_ + _loc18_ * _loc23_) * _loc28_;
            param2.b = (_loc15_ * _loc22_ - _loc14_ * _loc23_) * _loc28_;
            param2.c = (-_loc15_ * _loc18_ + _loc14_ * _loc19_) * _loc28_;
            param2.d = (_loc16_ * _loc19_ * _loc22_ - _loc15_ * _loc20_ * _loc22_ - _loc16_ * _loc18_ * _loc23_ + _loc14_ * _loc20_ * _loc23_ + _loc15_ * _loc18_ * _loc24_ - _loc14_ * _loc19_ * _loc24_) * _loc28_;
            param2.e = (_loc19_ * _loc21_ - _loc17_ * _loc23_) * _loc28_;
            param2.f = (-_loc15_ * _loc21_ + _loc12_ * _loc23_) * _loc28_;
            param2.g = (_loc15_ * _loc17_ - _loc12_ * _loc19_) * _loc28_;
            param2.h = (_loc15_ * _loc20_ * _loc21_ - _loc16_ * _loc19_ * _loc21_ + _loc16_ * _loc17_ * _loc23_ - _loc12_ * _loc20_ * _loc23_ - _loc15_ * _loc17_ * _loc24_ + _loc12_ * _loc19_ * _loc24_) * _loc28_;
            param2.i = (-_loc18_ * _loc21_ + _loc17_ * _loc22_) * _loc28_;
            param2.j = (_loc14_ * _loc21_ - _loc12_ * _loc22_) * _loc28_;
            param2.k = (-_loc14_ * _loc17_ + _loc12_ * _loc18_) * _loc28_;
            param2.l = (_loc16_ * _loc18_ * _loc21_ - _loc14_ * _loc20_ * _loc21_ - _loc16_ * _loc17_ * _loc22_ + _loc12_ * _loc20_ * _loc22_ + _loc14_ * _loc17_ * _loc24_ - _loc12_ * _loc18_ * _loc24_) * _loc28_;
            if(param3.pivot != null)
            {
               param2.d -= param3.pivot.x;
               param2.h -= param3.pivot.y;
               param2.l -= param3.pivot.z;
            }
            _loc10_ = true;
         }
         if(param2.vertices != null)
         {
            _loc13_ = param2.uvs != null && param2.uvs.length > 0;
            _loc8_ = 0;
            _loc33_ = 0;
            _loc9_ = int(param2.vertices.length);
            while(_loc8_ < _loc9_)
            {
               _loc6_ = new Vertex();
               if(_loc10_)
               {
                  _loc35_ = param2.vertices[_loc8_++];
                  _loc36_ = param2.vertices[_loc8_++];
                  _loc37_ = param2.vertices[_loc8_++];
                  _loc6_.x = param2.a * _loc35_ + param2.b * _loc36_ + param2.c * _loc37_ + param2.d;
                  _loc6_.y = param2.e * _loc35_ + param2.f * _loc36_ + param2.g * _loc37_ + param2.h;
                  _loc6_.z = param2.i * _loc35_ + param2.j * _loc36_ + param2.k * _loc37_ + param2.l;
               }
               else
               {
                  _loc6_.x = param2.vertices[_loc8_++];
                  _loc6_.y = param2.vertices[_loc8_++];
                  _loc6_.z = param2.vertices[_loc8_++];
               }
               _loc6_.x *= param4;
               _loc6_.y *= param4;
               _loc6_.z *= param4;
               if(_loc13_)
               {
                  _loc6_.u = param2.uvs[_loc33_++];
                  _loc6_.v = 1 - param2.uvs[_loc33_++];
               }
               _loc6_.transformId = -1;
               _loc7_[_loc32_++] = _loc6_;
               _loc6_.next = param1.vertexList;
               param1.vertexList = _loc6_;
            }
         }
         if(param2.faces != null)
         {
            _loc8_ = 0;
            _loc33_ = 0;
            _loc9_ = int(param2.faces.length);
            while(_loc8_ < _loc9_)
            {
               _loc27_ = new Face();
               _loc27_.wrapper = new Wrapper();
               _loc27_.wrapper.next = new Wrapper();
               _loc27_.wrapper.next.next = new Wrapper();
               _loc27_.wrapper.vertex = _loc7_[param2.faces[_loc8_++]];
               _loc27_.wrapper.next.vertex = _loc7_[param2.faces[_loc8_++]];
               _loc27_.wrapper.next.next.vertex = _loc7_[param2.faces[_loc8_++]];
               _loc27_.smoothingGroups = param2.smoothingGroups[_loc33_++];
               _loc38_[_loc25_++] = _loc27_;
               if(_loc5_ != null)
               {
                  _loc5_.next = _loc27_;
               }
               else
               {
                  param1.faceList = _loc27_;
               }
               _loc5_ = _loc27_;
            }
         }
         if(param2.surfaces != null)
         {
            for(_loc11_ in param2.surfaces)
            {
               _loc40_ = param2.surfaces[_loc11_];
               _loc26_ = this.f5f52b33[_loc11_];
               _loc29_ = _loc26_.material;
               _loc8_ = 0;
               while(_loc8_ < _loc40_.length)
               {
                  _loc27_ = _loc38_[_loc40_[_loc8_]];
                  _loc27_.material = _loc29_;
                  if(_loc26_.matrix != null)
                  {
                     _loc34_ = _loc27_.wrapper;
                     while(_loc34_ != null)
                     {
                        _loc6_ = _loc34_.vertex;
                        if(_loc6_.transformId < 0)
                        {
                           _loc30_ = _loc6_.u;
                           _loc31_ = _loc6_.v;
                           _loc6_.u = _loc26_.matrix.a * _loc30_ + _loc26_.matrix.b * _loc31_ + _loc26_.matrix.tx;
                           _loc6_.v = _loc26_.matrix.c * _loc30_ + _loc26_.matrix.d * _loc31_ + _loc26_.matrix.ty;
                           _loc6_.transformId = 0;
                        }
                        _loc34_ = _loc34_.next;
                     }
                  }
                  _loc8_++;
               }
            }
         }
         var _loc39_:FillMaterial = new FillMaterial(8355711);
         _loc39_.name = "default";
         _loc27_ = param1.faceList;
         while(_loc27_ != null)
         {
            if(_loc27_.material == null)
            {
               _loc27_.material = _loc39_;
            }
            _loc27_ = _loc27_.next;
         }
         param1.calculateFacesNormals(true);
         param1.calculateBounds();
      }
      
      private function getString(param1:int) : String
      {
         var _loc2_:int = 0;
         this.data.position = param1;
         var _loc3_:String = "";
         while(true)
         {
            _loc2_ = this.data.readByte();
            if(_loc2_ == 0)
            {
               break;
            }
            _loc3_ += String.fromCharCode(_loc2_);
         }
         return _loc3_;
      }
      
      private function a6b0e9bf(param1:Number, param2:Number, param3:Number, param4:Number) : Vector3D
      {
         var _loc10_:Number = NaN;
         var _loc8_:Vector3D = new Vector3D();
         var _loc5_:Number = Math.sin(param1);
         var _loc6_:Number = Math.cos(param1);
         var _loc7_:Number = 1 - _loc6_;
         var _loc9_:Number = param2 * param4 * _loc7_ + param3 * _loc5_;
         if(_loc9_ >= 1)
         {
            _loc10_ = param1 / 2;
            _loc8_.z = -2 * Math.atan2(param2 * Math.sin(_loc10_),Math.cos(_loc10_));
            _loc8_.y = -1.5707963267948966;
            _loc8_.x = 0;
            return _loc8_;
         }
         if(_loc9_ <= -1)
         {
            _loc10_ = param1 / 2;
            _loc8_.z = 2 * Math.atan2(param2 * Math.sin(_loc10_),Math.cos(_loc10_));
            _loc8_.y = 3.141592653589793 / 2;
            _loc8_.x = 0;
            return _loc8_;
         }
         _loc8_.z = -Math.atan2(param4 * _loc5_ - param2 * param3 * _loc7_,1 - (param4 * param4 + param3 * param3) * _loc7_);
         _loc8_.y = -Math.asin(param2 * param4 * _loc7_ + param3 * _loc5_);
         _loc8_.x = -Math.atan2(param2 * _loc5_ - param4 * param3 * _loc7_,1 - (param2 * param2 + param3 * param3) * _loc7_);
         return _loc8_;
      }
   }
}

import alternativa.engine3d.core.Object3D;
import alternativa.engine3d.materials.Material;
import flash.geom.Matrix;
import flash.geom.Vector3D;

class MaterialData
{
   
   public var name:String;
   
   public var color:int;
   
   public var specular:int;
   
   public var glossiness:int;
   
   public var transparency:int;
   
   public var diffuseMap:MapData;
   
   public var opacityMap:MapData;
   
   public var matrix:Matrix;
   
   public var material:Material;
   
   public function MaterialData()
   {
      super();
   }
}

class MapData
{
   
   public var filename:String;
   
   public var scaleU:Number = 1;
   
   public var scaleV:Number = 1;
   
   public var offsetU:Number = 0;
   
   public var offsetV:Number = 0;
   
   public var rotation:Number = 0;
   
   public function MapData()
   {
      super();
   }
}

class ObjectData
{
   
   public var name:String;
   
   public var vertices:Vector.<Number>;
   
   public var uvs:Vector.<Number>;
   
   public var faces:Vector.<int>;
   
   public var smoothingGroups:Vector.<uint>;
   
   public var surfaces:Object;
   
   public var a:Number;
   
   public var b:Number;
   
   public var c:Number;
   
   public var d:Number;
   
   public var e:Number;
   
   public var f:Number;
   
   public var g:Number;
   
   public var h:Number;
   
   public var i:Number;
   
   public var j:Number;
   
   public var k:Number;
   
   public var l:Number;
   
   public function ObjectData()
   {
      super();
   }
}

class AnimationData
{
   
   public var objectName:String;
   
   public var object:Object3D;
   
   public var parentIndex:int;
   
   public var pivot:Vector3D;
   
   public var position:Vector3D;
   
   public var rotation:Vector3D;
   
   public var scale:Vector3D;
   
   public var isInstance:Boolean;
   
   public function AnimationData()
   {
      super();
   }
}

class ChunkInfo
{
   
   public var id:int;
   
   public var size:int;
   
   public var dataSize:int;
   
   public var dataPosition:int;
   
   public var nextChunkPosition:int;
   
   public function ChunkInfo()
   {
      super();
   }
}
