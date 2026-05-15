package alternativa.tanks.materials
{
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.display.BitmapData;
   import flash.display.Shape;
   
   public class PaintMaterial extends TextureMaterial
   {
      
      public var scaleX:Number = 1;
      
      public var scaleY:Number = 1;
      
      public function PaintMaterial(param1:BitmapData, param2:BitmapData, param3:BitmapData, param4:int = 0)
      {
         var _loc6_:BitmapData = new BitmapData(param2.width,param2.height);
         var _loc5_:Shape = new Shape();
         _loc5_.graphics.beginBitmapFill(param1);
         _loc5_.graphics.drawRect(0,0,param2.width,param2.height);
         _loc5_.graphics.endFill();
         _loc6_.draw(_loc5_);
         _loc6_.draw(param2,null,null,"hardlight");
         _loc6_.draw(param3);
         super(_loc6_,true,true,param4);
      }
   }
}

