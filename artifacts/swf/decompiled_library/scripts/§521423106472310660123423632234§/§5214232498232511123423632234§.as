package §521423106472310660123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Point;
   
   public class §5214232498232511123423632234§ implements §while use return§
   {
      
      protected var §5214234596234609123423632234§:Vector.<Face> = new Vector.<Face>();
      
      protected var §else use extends§:Number;
      
      protected var §5214235339235352123423632234§:Vector.<Vertex> = new Vector.<Vertex>();
      
      protected var §null use do§:Vector.<Point> = new Vector.<Point>();
      
      public function §5214232498232511123423632234§()
      {
         super();
         this.§else use extends§ = 0;
      }
      
      public function §for use function§(param1:Number) : void
      {
         this.§else use extends§ += param1;
      }
      
      public function §true for native§(param1:Face) : void
      {
         this.§5214234596234609123423632234§.push(param1);
      }
      
      public function reset() : void
      {
         this.§else use extends§ = 0;
      }
      
      public function §try for throw§(param1:Material) : void
      {
         for each(var _loc2_ in this.§5214234596234609123423632234§)
         {
            _loc2_.material = param1;
         }
      }
      
      public function init() : void
      {
         for each(var _loc1_ in this.§5214234596234609123423632234§)
         {
            for each(var _loc2_ in _loc1_.vertices)
            {
               this.§5214235339235352123423632234§[§5214235339235352123423632234§.length] = _loc2_;
               this.§null use do§[§null use do§.length] = new Point(_loc2_.u,_loc2_.v);
            }
         }
      }
   }
}

