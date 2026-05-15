package §5214236338236351123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.engine3d.UVFrame;
   import §catch catch§.§5214233797233810123423632234§;
   import §in switch implements§.TextureByteData;
   
   public class §52142344523458123423632234§ implements §521423112022311215123423632234§
   {
      
      private var §5214234356234369123423632234§:Vector.<Mesh>;
      
      private var §each use catch§:§5214233797233810123423632234§;
      
      private var §5214238852238865123423632234§:String;
      
      private var §if for use§:String;
      
      public function §52142344523458123423632234§(param1:§5214233797233810123423632234§, param2:String)
      {
         super();
         this.§5214234356234369123423632234§ = new Vector.<Mesh>();
         this.§each use catch§ = param1;
         this.§5214238852238865123423632234§ = param2;
      }
      
      public function §try for throw§(param1:TextureMaterial, param2:UVFrame) : void
      {
         for each(var _loc4_ in this.§5214234356234369123423632234§)
         {
            for each(var _loc3_ in _loc4_.faces)
            {
               if(Boolean(this.§if for use§) && _loc3_.material.name != this.§if for use§)
               {
                  _loc3_.material = param1;
               }
            }
            _loc4_.removeVertex(_loc4_.addVertex(0,0,0));
         }
      }
      
      public function §each var get§() : TextureByteData
      {
         return this.§each use catch§.§5214238136238149123423632234§.§521423118062311819123423632234§(this.§5214238852238865123423632234§);
      }
      
      public function §5214238820238833123423632234§(param1:Mesh, param2:String = null) : void
      {
         this.§if for use§ = param2;
         this.§5214234356234369123423632234§.push(param1);
      }
   }
}

