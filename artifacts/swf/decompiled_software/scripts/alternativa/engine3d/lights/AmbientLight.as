package alternativa.engine3d.lights
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   
   use namespace alternativa3d;
   
   public class AmbientLight extends Light3D
   {
      
      public function AmbientLight(param1:uint)
      {
         super();
         this.color = param1;
         calculateBounds();
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:AmbientLight = new AmbientLight(color);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawDebug(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:Canvas = null;
         var _loc4_:int = param1.checkInDebug(this);
         if(_loc4_ > 0)
         {
            _loc3_ = param2.getChildCanvas(true,false);
            if(_loc4_ & 0x0100 && ml > param1.nearClipping)
            {
            }
            if(_loc4_ & 8)
            {
               Debug.drawBounds(param1,_loc3_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
            }
         }
      }
   }
}

