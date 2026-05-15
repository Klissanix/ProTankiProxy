package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.objects.Mesh;
   import flash.geom.Vector3D;
   
   use namespace alternativa3d;
   
   public class Shadow
   {
      
      public var mapSize:int;
      
      public var blur:int;
      
      public var attenuation:Number;
      
      public var nearDistance:Number;
      
      public var farDistance:Number;
      
      public var color:int;
      
      public var alpha:Number;
      
      public var direction:Vector3D = new Vector3D(0,0,-1);
      
      public var offset:Number = 0;
      
      public var backFadeRange:Number = 0;
      
      private var e44575b2:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var a73a677c:int = 0;
      
      public function Shadow(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:int = 0, param7:Number = 1)
      {
         super();
         this.mapSize = param1;
         this.blur = param2;
         this.attenuation = param3;
         this.nearDistance = param4;
         this.farDistance = param5;
         this.color = param6;
         this.alpha = param7;
      }
      
      public function addCaster(param1:Mesh) : void
      {
         this.e44575b2[this.a73a677c] = param1;
         this.a73a677c++;
      }
      
      public function removeCaster(param1:Mesh) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.a73a677c)
         {
            if(this.e44575b2[_loc2_] == param1)
            {
               this.a73a677c--;
               while(_loc2_ < this.a73a677c)
               {
                  this.e44575b2[_loc2_] = this.e44575b2[int(_loc2_ + 1)];
                  _loc2_++;
               }
               this.e44575b2.length = this.a73a677c;
               return;
            }
            _loc2_++;
         }
      }
      
      public function removeAllCasters() : void
      {
         this.a73a677c = 0;
         this.e44575b2.length = 0;
      }
   }
}

