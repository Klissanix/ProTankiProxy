package §5214236338236351123423632234§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.tanks.engine3d.UVFrame;
   import §catch catch§.§break catch import§;
   import flash.display.BitmapData;
   import §in switch implements§.TextureByteData;
   
   public class §import catch switch§ implements §521423112022311215123423632234§
   {
      
      private var §5214234264234277123423632234§:§break catch import§;
      
      private var §false switch continue§:Vector.<Sprite3D> = new Vector.<Sprite3D>();
      
      public function §import catch switch§(param1:§break catch import§, param2:String)
      {
         super();
         this.§5214234264234277123423632234§ = param1;
      }
      
      public function §try for throw§(param1:TextureMaterial, param2:UVFrame) : void
      {
         var _loc5_:Number = NaN;
         var _loc3_:BitmapData = param1.texture;
         for each(var _loc4_ in this.§false switch continue§)
         {
            _loc4_.material = param1;
            _loc5_ = Number(_loc4_.width);
            _loc4_.width = _loc5_ * _loc3_.width;
            _loc4_.height = _loc5_ * _loc3_.height;
         }
      }
      
      public function §521423110392311052123423632234§(param1:Sprite3D) : void
      {
         this.§false switch continue§[§false switch continue§.length] = param1;
      }
      
      public function §each var get§() : TextureByteData
      {
         return this.§5214234264234277123423632234§.§for var if§;
      }
   }
}

