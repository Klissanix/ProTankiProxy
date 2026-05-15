package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import flash.utils.getQualifiedClassName;
   
   use namespace alternativa3d;
   
   public class Material
   {
      
      public var name:String;
      
      public var alphaTestThreshold:Number = 0;
      
      public var zOffset:Boolean = false;
      
      public var uploadEveryFrame:Boolean = false;
      
      alternativa3d var useVerticesNormals:Boolean = false;
      
      public function Material()
      {
         super();
      }
      
      alternativa3d function get transparent() : Boolean
      {
         return false;
      }
      
      alternativa3d function set transparent(param1:Boolean) : void
      {
      }
      
      public function clone() : Material
      {
         var _loc1_:Material = new Material();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      protected function clonePropertiesFrom(param1:Material) : void
      {
         this.name = param1.name;
         this.alphaTestThreshold = param1.alphaTestThreshold;
         this.useVerticesNormals = param1.useVerticesNormals;
      }
      
      public function toString() : String
      {
         var _loc1_:String = getQualifiedClassName(this);
         return "[" + _loc1_.substr(_loc1_.indexOf("::") + 2) + " " + this.name + "]";
      }
      
      alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         this.clearLinks(param3);
      }
      
      alternativa3d function drawOpaque(param1:Camera3D, param2:Object, param3:Object, param4:int, param5:int, param6:Object3D) : void
      {
      }
      
      alternativa3d function drawTransparent(param1:Camera3D, param2:Object, param3:Object, param4:int, param5:int, param6:Object3D, param7:Boolean = false) : void
      {
      }
      
      alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         this.clearLinks(param3);
      }
      
      alternativa3d function clearLinks(param1:Face) : void
      {
         var _loc2_:Face = null;
         while(param1 != null)
         {
            _loc2_ = param1.processNext;
            param1.processNext = null;
            param1 = _loc2_;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}

