package alternativa.tanks.sfx
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.engine3d.UVFrame;
   
   public class AnimatedPlane extends Mesh
   {
      
      private var a:Vertex;
      
      private var b:Vertex;
      
      private var c:Vertex;
      
      private var §in var continue§:Vertex;
      
      private var §521423105572310570123423632234§:Vector.<UVFrame>;
      
      private var numFrames:int;
      
      private var §var set else§:Number = 0;
      
      public function AnimatedPlane(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 10)
      {
         super();
         this.b217d427(param1,param2,param3,param4,param5);
         sorting = 2;
         calculateBounds();
         calculateFacesNormals();
         this.a6f4b128();
         this.softAttenuation = 130;
         this.shadowMapAlphaThreshold = 2;
         this.depthMapAlphaThreshold = 2;
      }
      
      public function clear() : void
      {
         setMaterialToAllFaces(null);
         this.§521423105572310570123423632234§ = null;
         this.numFrames = 0;
      }
      
      public function getOneLoopTime() : Number
      {
         return this.numFrames / this.§var set else§;
      }
      
      public function init(param1:TextureAnimation, param2:Number) : void
      {
         setMaterialToAllFaces(param1.material);
         this.§521423105572310570123423632234§ = param1.§while set extends§;
         this.numFrames = this.§521423105572310570123423632234§.length;
         this.§var set else§ = param2;
      }
      
      private function a6f4b128() : void
      {
         var _loc1_:Vector.<Vertex> = this.vertices;
         this.a = _loc1_[0];
         this.b = _loc1_[1];
         this.c = _loc1_[2];
         this.§in var continue§ = _loc1_[3];
      }
      
      private function b217d427(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc10_:Number = param1 / 2;
         var _loc8_:Number = param2 / 2;
         var _loc9_:Vector.<Number> = Vector.<Number>([param3 - _loc10_,param4 + _loc8_,param5,param3 - _loc10_,param4 - _loc8_,param5,param3 + _loc10_,param4 - _loc8_,param5,param3 + _loc10_,param4 + _loc8_,param5]);
         var _loc7_:Vector.<Number> = Vector.<Number>([0,0,0,1,1,1,1,0]);
         var _loc6_:Vector.<int> = Vector.<int>([4,0,1,2,3,4,0,3,2,1]);
         addVerticesAndFaces(_loc9_,_loc7_,_loc6_,true);
      }
      
      private function d16940a4(param1:UVFrame) : void
      {
         this.a.u = param1.topLeftU;
         this.a.v = param1.topLeftV;
         this.b.u = param1.topLeftU;
         this.b.v = param1.bottomRightV;
         this.c.u = param1.bottomRightU;
         this.c.v = param1.bottomRightV;
         this.§in var continue§.u = param1.bottomRightU;
         this.§in var continue§.v = param1.topLeftV;
      }
      
      public function setTime(param1:Number) : void
      {
         var _loc2_:int = param1 * this.§var set else§;
         if(_loc2_ >= this.numFrames)
         {
            _loc2_ = this.numFrames - 1;
         }
         this.d16940a4(this.§521423105572310570123423632234§[_loc2_]);
      }
   }
}

