package §5214236338236351123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   
   public class §return var each§
   {
      
      public static var §521423119962312009123423632234§:TextureMaterialRegistry;
      
      private static const §default package throw§:String = "display";
      
      private var §false switch var§:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var §5214234596234609123423632234§:Vector.<Face> = new Vector.<Face>();
      
      private var §if set implements§:TextureMaterial;
      
      private var §import var do§:BitmapData;
      
      public function §return var each§()
      {
         super();
      }
      
      private function §5214232703232716123423632234§() : void
      {
         if(this.§if set implements§ != null && this.§import var do§ != null)
         {
            this.§if set implements§.texture = this.§import var do§;
            this.§case use function§();
         }
      }
      
      public function §return var case§(param1:BitmapData) : void
      {
         this.§import var do§ = param1;
         this.§5214232703232716123423632234§();
      }
      
      private function §case use function§() : void
      {
         if(this.§false switch var§.length > 0)
         {
            this.§if set implements§.resolution = 1;
         }
      }
      
      public function §var set null§(param1:Boolean) : void
      {
         if(!this.§if set implements§)
         {
            return;
         }
         this.§if set implements§.mipMapping = param1 ? 2 : 0;
      }
      
      public function §5214238820238833123423632234§(param1:Mesh) : void
      {
         this.§false switch var§[§false switch var§.length] = param1;
         for each(var _loc2_ in param1.faces)
         {
            if(_loc2_.material.name == "display")
            {
               this.§5214234596234609123423632234§[§5214234596234609123423632234§.length] = _loc2_;
               if(this.§if set implements§ == null)
               {
                  this.§if set implements§ = TextureMaterial(_loc2_.material);
                  this.§5214232703232716123423632234§();
               }
            }
         }
      }
   }
}

