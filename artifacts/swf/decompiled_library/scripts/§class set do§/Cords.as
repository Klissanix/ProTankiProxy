package §class set do§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   
   public class Cords extends BonusObject3DBase
   {
      
      private static const §super var if§:Matrix4 = new Matrix4();
      
      private var §5214236904236917123423632234§:Vector.<Vertex>;
      
      private var §set for finally§:Vector.<Vector3>;
      
      private var §521423120752312088123423632234§:Vertex;
      
      private var §521423132442313257123423632234§:Vector3;
      
      private var §finally catch throw§:int;
      
      private var §var for default§:BonusObject3DBase;
      
      private var §5214239197239210123423632234§:Parachute;
      
      private var mesh:Mesh;
      
      public function Cords(param1:Number, param2:Number, param3:int, param4:Material)
      {
         super();
         this.§finally catch throw§ = param3;
         this.mesh = new Mesh();
         object = this.mesh;
         this.§5214236904236917123423632234§ = new Vector.<Vertex>(2 * param3);
         this.§set for finally§ = new Vector.<Vector3>(param3);
         this.createGeometry(param1,param2);
         this.mesh.setMaterialToAllFaces(param4);
         this.mesh.shadowMapAlphaThreshold = 2;
         this.mesh.depthMapAlphaThreshold = 2;
      }
      
      public function updateVertices() : void
      {
         var _loc3_:int = 0;
         var _loc6_:Vector3 = null;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Vertex = null;
         this.§5214239197239210123423632234§.readTransform(§super var if§);
         while(_loc3_ < this.§finally catch throw§)
         {
            _loc6_ = this.§set for finally§[_loc3_];
            _loc2_ = _loc6_.x * §super var if§.m00 + _loc6_.y * §super var if§.§5214239800239813123423632234§ + _loc6_.z * §super var if§.§521423117972311810123423632234§ + §super var if§.§catch package continue§;
            _loc4_ = _loc6_.x * §super var if§.§5214234411234424123423632234§ + _loc6_.y * §super var if§.m11 + _loc6_.z * §super var if§.§null use use§ + §super var if§.§include var break§;
            _loc5_ = _loc6_.x * §super var if§.§521423135662313579123423632234§ + _loc6_.y * §super var if§.§case set function§ + _loc6_.z * §super var if§.m22 + §super var if§.§function var import§;
            _loc1_ = this.§5214236904236917123423632234§[2 * _loc3_];
            _loc1_.x = _loc2_;
            _loc1_.y = _loc4_;
            _loc1_.z = _loc5_;
            _loc1_ = this.§5214236904236917123423632234§[2 * _loc3_ + 1];
            _loc1_.x = _loc2_;
            _loc1_.y = _loc4_;
            _loc1_.z = _loc5_;
            _loc3_++;
         }
         this.§var for default§.readTransform(§super var if§);
         _loc6_ = this.§521423132442313257123423632234§;
         this.§521423120752312088123423632234§.x = _loc6_.x * §super var if§.m00 + _loc6_.y * §super var if§.§5214239800239813123423632234§ + _loc6_.z * §super var if§.§521423117972311810123423632234§ + §super var if§.§catch package continue§;
         this.§521423120752312088123423632234§.y = _loc6_.x * §super var if§.§5214234411234424123423632234§ + _loc6_.y * §super var if§.m11 + _loc6_.z * §super var if§.§null use use§ + §super var if§.§include var break§;
         this.§521423120752312088123423632234§.z = _loc6_.x * §super var if§.§521423135662313579123423632234§ + _loc6_.y * §super var if§.§case set function§ + _loc6_.z * §super var if§.m22 + §super var if§.§function var import§;
         this.mesh.calculateBounds();
         this.mesh.calculateFacesNormals();
      }
      
      public function init(param1:BonusObject3DBase, param2:Parachute) : void
      {
         this.§var for default§ = param1;
         this.§5214239197239210123423632234§ = param2;
         this.mesh.scaleX = 1;
         this.mesh.scaleY = 1;
         this.mesh.scaleZ = 1;
         setAlpha(1);
         setAlphaMultiplier(1);
      }
      
      private function createVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.next = this.mesh.vertexList;
         this.mesh.vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      public function recycle() : void
      {
         removeFromScene();
         this.§var for default§ = null;
         this.§5214239197239210123423632234§ = null;
         BonusCache.putCords(this);
      }
      
      private function c3c602ba(param1:Vertex, param2:Vertex, param3:Vertex) : Face
      {
         var _loc4_:Face = new Face();
         _loc4_.next = this.mesh.faceList;
         this.mesh.faceList = _loc4_;
         _loc4_.wrapper = new Wrapper();
         _loc4_.wrapper.vertex = param1;
         _loc4_.wrapper.next = new Wrapper();
         _loc4_.wrapper.next.vertex = param2;
         _loc4_.wrapper.next.next = new Wrapper();
         _loc4_.wrapper.next.next.vertex = param3;
         return _loc4_;
      }
      
      private function createGeometry(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Vector3 = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         this.§521423132442313257123423632234§ = new Vector3(0,0,param2);
         this.§521423120752312088123423632234§ = this.createVertex(0,0,param2,0,1);
         var _loc9_:Number = 2 * 3.141592653589793 / this.§finally catch throw§;
         while(_loc6_ < this.§finally catch throw§)
         {
            _loc7_ = _loc6_ * _loc9_;
            _loc8_ = new Vector3(param1 * Math.cos(_loc7_),param1 * Math.sin(_loc7_),0);
            this.§set for finally§[_loc6_] = _loc8_;
            this.§5214236904236917123423632234§[2 * _loc6_] = this.createVertex(_loc8_.x,_loc8_.y,_loc8_.z,0,0);
            this.§5214236904236917123423632234§[2 * _loc6_ + 1] = this.createVertex(_loc8_.x,_loc8_.y,_loc8_.z,1,1);
            _loc6_++;
         }
         while(_loc4_ < this.§finally catch throw§)
         {
            _loc3_ = 2 * _loc4_;
            _loc5_ = _loc3_ + 3;
            if(_loc5_ >= 2 * this.§finally catch throw§)
            {
               _loc5_ -= 2 * this.§finally catch throw§;
            }
            this.c3c602ba(this.§521423120752312088123423632234§,this.§5214236904236917123423632234§[_loc3_],this.§5214236904236917123423632234§[_loc5_]);
            this.c3c602ba(this.§521423120752312088123423632234§,this.§5214236904236917123423632234§[_loc5_],this.§5214236904236917123423632234§[_loc3_]);
            _loc4_++;
         }
      }
   }
}

