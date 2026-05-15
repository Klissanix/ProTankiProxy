package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.display.BitmapData;
   
   public class TrackMaterial extends TextureMaterial
   {
      
      public function TrackMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override §§namespace("http://alternativaplatform.com/en/alternativa3d") function get transparent() : Boolean
      {
         return true;
      }
      
      override public function clone() : Material
      {
         var _loc1_:TrackMaterial = new TrackMaterial(texture,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
   }
}

