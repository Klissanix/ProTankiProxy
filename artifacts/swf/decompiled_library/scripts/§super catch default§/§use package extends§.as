package §super catch default§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.UVMatrixProvider;
   import alternativa.tanks.materials.TrackMaterial;
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   
   public class §use package extends§
   {
      
      private var §52142320723220123423632234§:UVMatrixProvider;
      
      private var §5214234596234609123423632234§:Vector.<Face>;
      
      private var §5214235339235352123423632234§:Vector.<Vertex>;
      
      private var §true set get§:Number;
      
      private var §extends catch function§:Number = 0;
      
      public function §use package extends§()
      {
         super();
         this.§5214234596234609123423632234§ = new Vector.<Face>();
      }
      
      private static function §const use import§(param1:Face) : Number
      {
         var _loc2_:Vector.<Vertex> = param1.vertices;
         return §521423107162310729123423632234§(_loc2_[0],_loc2_[1]);
      }
      
      private static function §521423107162310729123423632234§(param1:Vertex, param2:Vertex) : Number
      {
         var _loc5_:Number = param1.x - param2.x;
         var _loc6_:Number = param1.y - param2.y;
         var _loc7_:Number = param1.z - param2.z;
         var _loc9_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc3_:Number = param1.u - param2.u;
         var _loc4_:Number = param1.v - param2.v;
         var _loc8_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc8_ / _loc9_;
      }
      
      public function §try for throw§(param1:Material) : void
      {
         var _loc3_:TrackMaterial = null;
         for each(var _loc2_ in this.§5214234596234609123423632234§)
         {
            _loc2_.material = param1;
         }
         if(param1 is TrackMaterial)
         {
            _loc3_ = param1 as TrackMaterial;
            this.§52142320723220123423632234§ = _loc3_.uvMatrixProvider;
         }
      }
      
      public function §true for native§(param1:Face) : void
      {
         this.§5214234596234609123423632234§[§5214234596234609123423632234§.length] = param1;
      }
      
      public function §5214236077236090123423632234§(param1:Number) : void
      {
         var _loc2_:Matrix = null;
         this.§extends catch function§ += param1 * this.§true set get§;
         if(this.§52142320723220123423632234§ != null)
         {
            _loc2_ = this.§52142320723220123423632234§.getMatrix();
            _loc2_.tx = this.§extends catch function§;
         }
      }
      
      public function init() : void
      {
         var _loc3_:Vertex = null;
         var _loc2_:Number = 0;
         var _loc4_:Dictionary = new Dictionary();
         for each(var _loc1_ in this.§5214234596234609123423632234§)
         {
            for each(_loc3_ in _loc1_.vertices)
            {
               _loc4_[_loc3_] = true;
            }
            _loc2_ += §const use import§(_loc1_);
         }
         this.§true set get§ = _loc2_ / this.§5214234596234609123423632234§.length;
         this.§5214235339235352123423632234§ = new Vector.<Vertex>();
         for(_loc3_ in _loc4_)
         {
            this.§5214235339235352123423632234§[§5214235339235352123423632234§.length] = _loc3_;
         }
      }
   }
}

