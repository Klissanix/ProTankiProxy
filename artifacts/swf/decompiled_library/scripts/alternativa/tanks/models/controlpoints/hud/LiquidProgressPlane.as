package alternativa.tanks.models.controlpoints.hud
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   
   public class LiquidProgressPlane extends ProgressPlane
   {
      
      private static const §return switch while§:Number = 0.815;
      
      private static const §case const native§:Number = 0.182;
      
      public function LiquidProgressPlane(param1:Number, param2:Number, param3:Material, param4:Material, param5:Material, param6:Material, param7:Material)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function update() : void
      {
         var _loc11_:Number = this.progress / 100;
         var _loc8_:Number = _loc11_ > 0 ? _loc11_ : -_loc11_;
         alpha = _loc8_ == 1 ? 1 : 0.942;
         var _loc9_:Number = 0.182 + (0.815 - 0.182) * _loc8_;
         _loc8_ = _loc9_ == 0.815 ? 1 : _loc9_;
         var _loc7_:Material = _loc11_ < 0 ? this.§finally var in§ : this.§5214231324231337123423632234§;
         var _loc4_:Material = _loc11_ < 0 ? this.§for var each§ : this.§5214238047238060123423632234§;
         var _loc1_:Material = _loc8_ == 1 ? _loc4_ : _loc7_;
         var _loc6_:Number = 250;
         var _loc10_:Number = -_loc6_ + 500 * _loc8_;
         var _loc5_:Vertex = this.§5214232275232288123423632234§[0].wrapper.next.next.vertex;
         _loc5_.y = _loc10_;
         _loc5_.v = 1 - _loc8_;
         this.§5214232275232288123423632234§[0].material = _loc1_;
         var _loc3_:Vertex = this.§5214232275232288123423632234§[1].wrapper.next.vertex;
         _loc5_ = this.§5214232275232288123423632234§[1].wrapper.next.next.vertex;
         _loc3_.y = _loc10_;
         _loc3_.v = 1 - _loc8_;
         _loc5_.y = _loc10_;
         _loc5_.v = 1 - _loc8_;
         this.§5214232275232288123423632234§[1].material = _loc1_;
         var _loc2_:Vertex = this.§5214232275232288123423632234§[2].wrapper.vertex;
         _loc3_ = this.§5214232275232288123423632234§[2].wrapper.next.vertex;
         _loc2_.y = _loc10_;
         _loc2_.v = 1 - _loc8_;
         _loc3_.y = _loc10_;
         _loc3_.v = 1 - _loc8_;
         _loc2_ = this.§5214232275232288123423632234§[3].wrapper.vertex;
         _loc2_.y = _loc10_;
         _loc2_.v = 1 - _loc8_;
      }
      
      override protected function createGeometry(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = param1 * 0.25;
         var _loc7_:Number = param2 * 0.25;
         this.§5214232275232288123423632234§ = new Vector.<Face>(4);
         var _loc3_:Vertex = this.createVertex(-_loc6_,-_loc7_,0,0,1);
         var _loc4_:Vertex = this.createVertex(_loc6_,-_loc7_,0,1,1);
         var _loc5_:Vertex = this.createVertex(-_loc6_,-_loc7_,0,0,1);
         this.§5214232275232288123423632234§[0] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(_loc6_,-_loc7_,0,1,1);
         _loc4_ = this.createVertex(_loc6_,-_loc7_,0,1,1);
         _loc5_ = this.createVertex(-_loc6_,-_loc7_,0,0,1);
         this.§5214232275232288123423632234§[1] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(-_loc6_,-_loc7_,0,0,1);
         _loc4_ = this.createVertex(_loc6_,-_loc7_,0,1,1);
         _loc5_ = this.createVertex(-_loc6_,_loc7_,0,0,0);
         this.§5214232275232288123423632234§[2] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
         _loc3_ = this.createVertex(_loc6_,-_loc7_,0,1,1);
         _loc4_ = this.createVertex(_loc6_,_loc7_,0,1,0);
         _loc5_ = this.createVertex(-_loc6_,_loc7_,0,0,0);
         this.§5214232275232288123423632234§[3] = this.createFace(_loc3_,_loc4_,_loc5_,this.§5214231724231737123423632234§);
      }
   }
}

