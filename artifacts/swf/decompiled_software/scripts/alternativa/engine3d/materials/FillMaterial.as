package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   
   use namespace alternativa3d;
   
   public class FillMaterial extends Material
   {
      
      public var color:int;
      
      public var alpha:Number;
      
      public var lineThickness:Number;
      
      public var lineColor:int;
      
      public function FillMaterial(param1:int = 8355711, param2:Number = 1, param3:Number = -1, param4:int = 16777215)
      {
         super();
         this.color = param1;
         this.alpha = param2;
         this.lineThickness = param3;
         this.lineColor = param4;
      }
      
      override public function clone() : Material
      {
         var _loc1_:FillMaterial = new FillMaterial(this.color,this.alpha,this.lineThickness,this.lineColor);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc5_:Face = null;
         var _loc9_:Wrapper = null;
         var _loc7_:Vertex = null;
         var _loc8_:int = 0;
         var _loc11_:Number = param1.viewSizeX;
         var _loc10_:Number = param1.viewSizeY;
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle(this.lineThickness,this.lineColor);
         }
         var _loc6_:Face = param3;
         while(_loc6_ != null)
         {
            _loc5_ = _loc6_.processNext;
            _loc6_.processNext = null;
            _loc9_ = _loc6_.wrapper;
            _loc7_ = _loc9_.vertex;
            param2.gfx.beginFill(this.color,this.alpha);
            param2.gfx.moveTo(_loc7_.cameraX * _loc11_ / _loc7_.cameraZ,_loc7_.cameraY * _loc10_ / _loc7_.cameraZ);
            _loc8_ = -1;
            _loc9_ = _loc9_.next;
            while(_loc9_ != null)
            {
               _loc7_ = _loc9_.vertex;
               param2.gfx.lineTo(_loc7_.cameraX * _loc11_ / _loc7_.cameraZ,_loc7_.cameraY * _loc10_ / _loc7_.cameraZ);
               _loc8_++;
               _loc9_ = _loc9_.next;
            }
            _loc7_ = _loc6_.wrapper.vertex;
            param2.gfx.lineTo(_loc7_.cameraX * _loc11_ / _loc7_.cameraZ,_loc7_.cameraY * _loc10_ / _loc7_.cameraZ);
            param1.numTriangles += _loc8_;
            param1.numPolygons++;
            _loc6_ = _loc5_;
         }
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle();
         }
         param1.numDraws++;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc11_:Face = null;
         var _loc13_:Wrapper = null;
         var _loc12_:Vertex = null;
         var _loc15_:int = 0;
         var _loc17_:Number = param1.viewSizeX;
         var _loc16_:Number = param1.viewSizeY;
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle(this.lineThickness,this.lineColor);
         }
         var _loc14_:Face = param3;
         while(_loc14_ != null)
         {
            _loc11_ = _loc14_.processNext;
            _loc14_.processNext = null;
            _loc13_ = _loc14_.wrapper;
            _loc12_ = _loc13_.vertex;
            param2.gfx.beginFill(this.color,this.alpha);
            param2.gfx.moveTo(_loc12_.cameraX * _loc17_ / param4,_loc12_.cameraY * _loc16_ / param4);
            _loc15_ = -1;
            _loc13_ = _loc13_.next;
            while(_loc13_ != null)
            {
               _loc12_ = _loc13_.vertex;
               param2.gfx.lineTo(_loc12_.cameraX * _loc17_ / param4,_loc12_.cameraY * _loc16_ / param4);
               _loc15_++;
               _loc13_ = _loc13_.next;
            }
            _loc12_ = _loc14_.wrapper.vertex;
            param2.gfx.lineTo(_loc12_.cameraX * _loc17_ / param4,_loc12_.cameraY * _loc16_ / param4);
            param1.numTriangles += _loc15_;
            param1.numPolygons++;
            _loc14_ = _loc11_;
         }
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle();
         }
         param1.numDraws++;
      }
   }
}

