package alternativa.tanks.models.controlpoints.hud
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import §finally catch with§.§throw for continue§;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class ProgressPlane extends Mesh
   {
      
      protected static const §5214232725232738123423632234§:Number = 100;
      
      protected var progress:Number = 0;
      
      protected var §5214231724231737123423632234§:Material;
      
      protected var §5214231324231337123423632234§:Material;
      
      protected var §5214238047238060123423632234§:Material;
      
      protected var §finally var in§:Material;
      
      protected var §for var each§:Material;
      
      protected var §5214232275232288123423632234§:Vector.<Face>;
      
      protected var §use const try§:Vector.<Point>;
      
      protected var §get catch super§:Vector.<Vector3D>;
      
      public function ProgressPlane(param1:Number, param2:Number, param3:Material, param4:Material, param5:Material, param6:Material, param7:Material)
      {
         super();
         this.§5214231724231737123423632234§ = param3;
         this.§5214231324231337123423632234§ = param4;
         this.§5214238047238060123423632234§ = param5;
         this.§finally var in§ = param6;
         this.§for var each§ = param7;
         useShadowMap = false;
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         this.createGeometry(param1,param2);
      }
      
      public function updateRotation(param1:Camera3D) : void
      {
         rotationX = param1.rotationX - 3.141592653589793;
         rotationY = 0;
         rotationZ = param1.rotationZ;
      }
      
      public function setProgress(param1:Number) : void
      {
         var _loc2_:Number = §throw for continue§.§52142393423947123423632234§(param1,-100,100);
         if(this.progress != _loc2_)
         {
            this.progress = _loc2_;
            this.update();
         }
      }
      
      protected function createVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         return _loc6_;
      }
      
      protected function createFace(param1:Vertex, param2:Vertex, param3:Vertex, param4:Material) : Face
      {
         var _loc5_:Face = new Face();
         _loc5_.material = param4;
         _loc5_.wrapper = new Wrapper();
         _loc5_.wrapper.vertex = param1;
         _loc5_.wrapper.next = new Wrapper();
         _loc5_.wrapper.next.vertex = param2;
         _loc5_.wrapper.next.next = new Wrapper();
         _loc5_.wrapper.next.next.vertex = param3;
         _loc5_.normalX = 0;
         _loc5_.normalY = 0;
         _loc5_.normalZ = 1;
         _loc5_.offset = 0;
         _loc5_.next = faceList;
         faceList = _loc5_;
         return _loc5_;
      }
      
      protected function createGeometry(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = param1 * 0.5;
         var _loc7_:Number = param2 * 0.5;
         this.§get catch super§ = new Vector.<Vector3D>(4);
         this.§get catch super§[0] = new Vector3D(0,_loc7_,0);
         this.§get catch super§[1] = new Vector3D(-_loc6_,0,0);
         this.§get catch super§[2] = new Vector3D(0,-_loc7_,0);
         this.§get catch super§[3] = new Vector3D(_loc6_,0,0);
         this.§use const try§ = new Vector.<Point>(4);
         this.§use const try§[0] = new Point(0.5,-0.5);
         this.§use const try§[1] = new Point(-0.5,0.5);
         this.§use const try§[2] = new Point(0.5,1.5);
         this.§use const try§[3] = new Point(1.5,0.5);
         this.§5214232275232288123423632234§ = new Vector.<Face>(5);
         var _loc3_:Vertex = this.createVertex(-_loc6_,0,0,-0.5,0.5);
         var _loc4_:Vertex = this.createVertex(0,0,0,0.5,0.5);
         var _loc5_:Vertex = this.createVertex(0,_loc7_,0,0.5,-0.5);
         this.§5214232275232288123423632234§[0] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(0,-_loc7_,0,0.5,1.5);
         _loc4_ = this.createVertex(0,0,0,0.5,0.5);
         _loc5_ = this.createVertex(-_loc6_,0,0,-0.5,0.5);
         this.§5214232275232288123423632234§[1] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(_loc6_,0,0,1.5,0.5);
         _loc4_ = this.createVertex(0,0,0,0.5,0.5);
         _loc5_ = this.createVertex(0,-_loc7_,0,0.5,1.5);
         this.§5214232275232288123423632234§[2] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(0,_loc7_,0,0.5,-0.5);
         _loc4_ = this.createVertex(0,0,0,0.5,0.5);
         _loc5_ = this.createVertex(_loc6_,0,0,1.5,0.5);
         this.§5214232275232288123423632234§[3] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(0,0,0,0,0);
         _loc4_ = this.createVertex(0,0,0,0.5,0.5);
         _loc5_ = this.createVertex(0,0,0,0,0);
         this.§5214232275232288123423632234§[4] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
      }
      
      protected function update() : void
      {
         var _loc7_:int = 0;
         var _loc10_:Face = null;
         var _loc1_:Vertex = null;
         var _loc8_:int = 0;
         var _loc12_:Vector3D = null;
         var _loc11_:Point = null;
         var _loc2_:Vertex = null;
         var _loc15_:Vector3D = null;
         var _loc3_:Point = null;
         var _loc16_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc19_:Number = this.progress / 100;
         var _loc18_:Number = _loc19_ > 0 ? _loc19_ : -_loc19_;
         var _loc13_:int = 4 * _loc18_;
         var _loc9_:int = (_loc13_ + 1) % 4;
         var _loc6_:Material = _loc19_ < 0 ? this.§finally var in§ : this.§5214231324231337123423632234§;
         var _loc4_:Material = _loc19_ < 0 ? this.§for var each§ : this.§5214238047238060123423632234§;
         while(_loc7_ < 4)
         {
            _loc10_ = this.§5214232275232288123423632234§[_loc7_];
            if(_loc7_ < _loc13_)
            {
               _loc10_.material = _loc18_ == 1 ? _loc4_ : _loc6_;
            }
            else if(_loc7_ > _loc13_)
            {
               _loc10_.material = this.§5214231724231737123423632234§;
            }
            _loc1_ = _loc10_.wrapper.vertex;
            _loc8_ = (_loc7_ + 1) % 4;
            _loc12_ = this.§get catch super§[_loc8_];
            _loc11_ = this.§use const try§[_loc8_];
            _loc1_.x = _loc12_.x;
            _loc1_.y = _loc12_.y;
            _loc1_.u = _loc11_.x;
            _loc1_.v = _loc11_.y;
            _loc7_++;
         }
         var _loc14_:Face = this.§5214232275232288123423632234§[4];
         if(_loc18_ == 1)
         {
            _loc2_ = _loc14_.wrapper.next.next.vertex;
            _loc2_.x = 0;
            _loc2_.y = 0;
            _loc2_.u = 0;
            _loc2_.v = 0;
            _loc2_ = _loc14_.wrapper.vertex;
            _loc2_.x = 0;
            _loc2_.y = 0;
            _loc2_.u = 0;
            _loc2_.v = 0;
         }
         else
         {
            _loc10_ = this.§5214232275232288123423632234§[_loc13_];
            _loc10_.material = _loc6_;
            _loc15_ = this.§get catch super§[0];
            _loc3_ = this.§use const try§[0];
            _loc12_ = this.§get catch super§[_loc9_];
            _loc11_ = this.§use const try§[_loc9_];
            _loc1_ = _loc10_.wrapper.vertex;
            _loc16_ = 2 * _loc18_ * 3.141592653589793;
            _loc5_ = Math.cos(_loc16_);
            _loc17_ = Math.sin(_loc16_);
            _loc1_.x = _loc15_.x * _loc5_ - _loc15_.y * _loc17_;
            _loc1_.y = _loc15_.x * _loc17_ + _loc15_.y * _loc5_;
            _loc17_ = -_loc17_;
            _loc1_.u = 0.5 + (_loc3_.x - 0.5) * _loc5_ - (_loc3_.y - 0.5) * _loc17_;
            _loc1_.v = 0.5 + (_loc3_.x - 0.5) * _loc17_ + (_loc3_.y - 0.5) * _loc5_;
            _loc2_ = _loc14_.wrapper.vertex;
            _loc2_.x = _loc12_.x;
            _loc2_.y = _loc12_.y;
            _loc2_.u = _loc11_.x;
            _loc2_.v = _loc11_.y;
            _loc2_ = _loc14_.wrapper.next.next.vertex;
            _loc2_.x = _loc1_.x;
            _loc2_.y = _loc1_.y;
            _loc2_.u = _loc1_.u;
            _loc2_.v = _loc1_.v;
         }
      }
   }
}

