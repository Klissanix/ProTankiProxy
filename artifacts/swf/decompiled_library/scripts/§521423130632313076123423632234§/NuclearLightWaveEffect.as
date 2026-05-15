package §521423130632313076123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class NuclearLightWaveEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var container:§switch var final§ = null;
      
      private var §finally var true§:Mesh = new Mesh();
      
      private var time:Number = 0;
      
      private var §get switch implements§:Vector3 = new Vector3();
      
      public function NuclearLightWaveEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc6_:Number = param1 / 1000;
         this.time += _loc6_;
         this.§finally var true§.x = this.§get switch implements§.x;
         this.§finally var true§.y = this.§get switch implements§.y;
         this.§finally var true§.z = this.§get switch implements§.z + 80;
         var _loc7_:Number = 0.05555555555555555;
         var _loc4_:Number = 0.16666666666666666;
         var _loc5_:Number = 0.3333333333333333;
         if(this.time <= _loc7_)
         {
            this.§finally var true§.alpha = this.time / _loc4_;
            this.§finally var true§.visible = true;
         }
         else if(this.time <= _loc5_)
         {
            this.§finally var true§.alpha = 1 - (this.time - _loc4_) / (_loc5_ - _loc4_);
            this.§finally var true§.visible = true;
         }
         else
         {
            this.§finally var true§.visible = false;
         }
         var _loc3_:Number = _loc6_ * 6;
         this.§finally var true§.scaleX += _loc3_;
         this.§finally var true§.scaleY += _loc3_;
         return this.§finally var true§.visible;
      }
      
      public function kill() : void
      {
         this.destroy();
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            this.container.§5214231752231765123423632234§(this.§finally var true§);
            this.container = null;
         }
         this.§finally var true§.setMaterialToAllFaces(null);
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Vector3, param2:TextureMaterial) : void
      {
         var _loc6_:Number = NaN;
         _loc6_ = 2000;
         this.§get switch implements§.copy(param1);
         var _loc7_:Vertex = this.§finally var true§.addVertex(-2000,2000,0,0,0);
         var _loc4_:Vertex = this.§finally var true§.addVertex(-2000,-2000,0,0,1);
         var _loc5_:Vertex = this.§finally var true§.addVertex(2000,-2000,0,1,1);
         var _loc3_:Vertex = this.§finally var true§.addVertex(2000,2000,0,1,0);
         this.§finally var true§.addQuadFace(_loc7_,_loc4_,_loc5_,_loc3_,param2);
         this.§finally var true§.addQuadFace(_loc7_,_loc3_,_loc5_,_loc4_,param2);
         this.§finally var true§.calculateFacesNormals();
         this.§finally var true§.calculateBounds();
         this.§finally var true§.useLight = false;
         this.§finally var true§.useShadowMap = false;
         this.§finally var true§.shadowMapAlphaThreshold = 2;
         this.§finally var true§.depthMapAlphaThreshold = 2;
         this.§finally var true§.blendMode = "add";
         this.§finally var true§.softAttenuation = 80;
         this.§finally var true§.scaleX = 1;
         this.§finally var true§.scaleY = 1;
         this.§finally var true§.scaleZ = 1;
         this.time = 0;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§finally var true§);
      }
   }
}

