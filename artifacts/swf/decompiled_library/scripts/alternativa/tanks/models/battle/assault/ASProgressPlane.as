package alternativa.tanks.models.battle.assault
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class ASProgressPlane extends Mesh implements §override for default§
   {
      
      public static const §do package function§:Number = 1000;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var material:Material;
      
      private var §5214232275232288123423632234§:Vector.<Face>;
      
      private var §use const try§:Vector.<Point> = new Vector.<Point>();
      
      private var §get catch super§:Vector.<Vector3D> = new Vector.<Vector3D>();
      
      public function ASProgressPlane(param1:Material, param2:BattleService)
      {
         super();
         this.material = param1;
         this.§52142380523818123423632234§ = param2;
         useShadowMap = false;
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         this.createGeometry();
         param2.getBattleScene3D().§5214239252239265123423632234§(this);
      }
      
      private function d36ab045(param1:Camera3D) : void
      {
         rotationX = param1.rotationX - 3.141592653589793;
         rotationY = 0;
         rotationZ = param1.rotationZ;
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.d36ab045(this.§52142380523818123423632234§.getBattleScene3D().§while set for§());
      }
      
      private function createFace(param1:Vertex, param2:Vertex, param3:Vertex, param4:Material) : Face
      {
         var _loc5_:Face = null;
         _loc5_ = new Face();
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
      
      private function createVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = null;
         _loc6_ = new Vertex();
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         return _loc6_;
      }
      
      private function createGeometry() : void
      {
         var _loc1_:Vertex = null;
         var _loc2_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Number = 500;
         var _loc3_:Number = 500;
         this.§get catch super§[0] = new Vector3D(0,_loc3_,0);
         this.§get catch super§[1] = new Vector3D(-_loc5_,0,0);
         this.§get catch super§[2] = new Vector3D(0,-_loc3_,0);
         this.§get catch super§[3] = new Vector3D(_loc5_,0,0);
         this.§use const try§[0] = new Point(0.5,-0.5);
         this.§use const try§[1] = new Point(-0.5,0.5);
         this.§use const try§[2] = new Point(0.5,1.5);
         this.§use const try§[3] = new Point(1.5,0.5);
         this.§5214232275232288123423632234§ = new Vector.<Face>();
         _loc1_ = this.createVertex(-_loc5_,0,0,-0.5,0.5);
         _loc2_ = this.createVertex(0,0,0,0.5,0.5);
         _loc4_ = this.createVertex(0,_loc3_,0,0.5,-0.5);
         this.§5214232275232288123423632234§[0] = this.createFace(_loc1_,_loc2_,_loc4_,this.material);
         _loc1_ = this.createVertex(0,-_loc3_,0,0.5,1.5);
         _loc2_ = this.createVertex(0,0,0,0.5,0.5);
         _loc4_ = this.createVertex(-_loc5_,0,0,-0.5,0.5);
         this.§5214232275232288123423632234§[1] = this.createFace(_loc1_,_loc2_,_loc4_,this.material);
         _loc1_ = this.createVertex(_loc5_,0,0,1.5,0.5);
         _loc2_ = this.createVertex(0,0,0,0.5,0.5);
         _loc4_ = this.createVertex(0,-_loc3_,0,0.5,1.5);
         this.§5214232275232288123423632234§[2] = this.createFace(_loc1_,_loc2_,_loc4_,this.material);
         _loc1_ = this.createVertex(0,_loc3_,0,0.5,-0.5);
         _loc2_ = this.createVertex(0,0,0,0.5,0.5);
         _loc4_ = this.createVertex(_loc5_,0,0,1.5,0.5);
         this.§5214232275232288123423632234§[3] = this.createFace(_loc1_,_loc2_,_loc4_,this.material);
         _loc1_ = this.createVertex(0,0,0,0,0);
         _loc2_ = this.createVertex(0,0,0,0.5,0.5);
         _loc4_ = this.createVertex(0,0,0,0,0);
         this.§5214232275232288123423632234§[4] = this.createFace(_loc1_,_loc2_,_loc4_,this.material);
      }
   }
}

