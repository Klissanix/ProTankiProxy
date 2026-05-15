package §catch catch§
{
   import §5214233635233648123423632234§.§5214237478237491123423632234§;
   import §5214233635233648123423632234§.§override set case§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.loaders.Parser3DS;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Occluder;
   import flash.utils.ByteArray;
   import §in switch implements§.TextureByteData;
   
   public class §5214233797233810123423632234§ extends §521423132262313239123423632234§
   {
      
      public static const §5214231692231705123423632234§:String = "$$$_DEFAULT_TEXTURE_$$$";
      
      public static var §521423113622311375123423632234§:Number = 0.01;
      
      public static var §5214232272232285123423632234§:Number = 0.01;
      
      public static var §52142367823691123423632234§:Number = 0.01;
      
      public static var §in catch with§:Number = 0.01;
      
      public static var §52142345923472123423632234§:int = 1;
      
      public static var §5214238869238882123423632234§:Number = 0.001;
      
      public static var §5214235104235117123423632234§:Number = 0.001;
      
      public static var §finally for const§:Number = 0.001;
      
      public static var §final switch finally§:Number = 0.01;
      
      public var §5214238136238149123423632234§:§5214237478237491123423632234§;
      
      public var §true catch case§:Vector.<Occluder>;
      
      public var §521423109572310970123423632234§:Object = {};
      
      public function §5214233797233810123423632234§(param1:ByteArray, param2:String, param3:Object, param4:§override set case§, param5:§5214237478237491123423632234§, param6:String)
      {
         super(1);
         this.§implements set§(param1,param2,param3,param4,param5,param6);
      }
      
      private function §return const try§(param1:Mesh) : void
      {
         param1.weldVertices(§5214232272232285123423632234§,§52142345923472123423632234§);
         param1.weldFaces(§52142367823691123423632234§,§52142345923472123423632234§,§in catch with§);
         var _loc2_:Occluder = new Occluder();
         _loc2_.createForm(param1,true);
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.z = param1.z;
         _loc2_.rotationX = param1.rotationX;
         _loc2_.rotationY = param1.rotationY;
         _loc2_.rotationZ = param1.rotationZ;
         if(this.§true catch case§ == null)
         {
            this.§true catch case§ = new Vector.<Occluder>();
         }
         this.§true catch case§[§true catch case§.length] = _loc2_;
      }
      
      override public function §import catch case§() : void
      {
         var _loc2_:TextureByteData = null;
         super.§import catch case§();
         for(var _loc1_ in this.§5214238136238149123423632234§)
         {
            _loc2_ = this.§5214238136238149123423632234§[_loc1_];
            trace("\t" + _loc1_,_loc2_.§while for native§.bytesAvailable,_loc2_.§return switch override§);
         }
      }
      
      private function §continue for for§(param1:Mesh) : String
      {
         var _loc3_:TextureMaterial = null;
         var _loc2_:Face = param1.faceList;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.material as TextureMaterial;
            if(_loc3_ != null)
            {
               return _loc3_.diffuseMapURL.toLowerCase();
            }
            _loc2_ = _loc2_.next;
         }
         return null;
      }
      
      private function §521423110062311019123423632234§(param1:ByteArray, param2:String) : Mesh
      {
         var _loc6_:int = 0;
         var _loc8_:Object3D = null;
         var _loc3_:String = null;
         param1.position = 0;
         var _loc4_:Parser3DS = new Parser3DS();
         _loc4_.parse(param1);
         var _loc5_:Vector.<Object3D> = _loc4_.objects;
         var _loc9_:int = int(_loc5_.length);
         var _loc7_:Mesh = null;
         while(_loc6_ < _loc9_)
         {
            _loc8_ = _loc5_[_loc6_];
            _loc3_ = String(_loc8_.name.toLowerCase());
            if(_loc3_.indexOf("occl") == 0)
            {
               this.§return const try§(Mesh(_loc8_));
            }
            else if(param2 == _loc3_)
            {
               _loc7_ = Mesh(_loc8_);
            }
            _loc6_++;
         }
         return _loc7_ != null ? _loc7_ : Mesh(_loc5_[0]);
      }
      
      private function §521423128902312903123423632234§(param1:Mesh) : void
      {
         param1.weldVertices(§5214238869238882123423632234§,§5214235104235117123423632234§);
         param1.weldFaces(§finally for const§,§5214235104235117123423632234§,§final switch finally§);
         param1.threshold = §521423113622311375123423632234§;
      }
      
      private function §implements set§(param1:ByteArray, param2:String, param3:Object, param4:§override set case§, param5:§5214237478237491123423632234§, param6:String) : void
      {
         var _loc7_:String = null;
         var _loc10_:TextureByteData = null;
         var _loc11_:Mesh = this.§521423110062311019123423632234§(param1,param2);
         this.§521423128902312903123423632234§(_loc11_);
         this.§throw use true§ = _loc11_;
         var _loc8_:String = this.§continue for for§(_loc11_);
         if(_loc8_ == null && param3 == null)
         {
            throw new Error("PropMesh: no textures found");
         }
         if(param3 == null)
         {
            param3 = {};
         }
         if(_loc8_ != null)
         {
            param3["$$$_DEFAULT_TEXTURE_$$$"] = _loc8_;
         }
         this.§5214238136238149123423632234§ = new §5214237478237491123423632234§();
         for(var _loc9_ in param3)
         {
            _loc7_ = String(param3[_loc9_]);
            if(param5 == null)
            {
               _loc10_ = new TextureByteData(param4.§521423118062311819123423632234§(_loc7_),null);
            }
            else
            {
               _loc10_ = param5.§521423118062311819123423632234§(_loc7_);
            }
            this.§5214238136238149123423632234§.§false package class§(_loc9_,_loc10_);
            §521423109572310970123423632234§[_loc9_] = param6 + "#" + _loc7_;
         }
      }
   }
}

