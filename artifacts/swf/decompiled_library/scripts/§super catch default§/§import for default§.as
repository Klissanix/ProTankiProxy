package §super catch default§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§throw for true§;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.engine3d.§implements for finally§;
   import flash.display.BitmapData;
   import §override catch default§.Long;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §import for default§
   {
      
      private static const §override switch override§:String = "details.png";
      
      private static const §5214233201233214123423632234§:String = "lightmap.jpg";
      
      private static const §import null§:Object = {};
      
      public var §catch set dynamic§:Long;
      
      public var §521423134562313469123423632234§:BitmapData;
      
      public var §521423119412311954123423632234§:BitmapData;
      
      public function §import for default§(param1:§5214233863233876123423632234§)
      {
         super();
         this.§catch set dynamic§ = param1.§5214239618239631123423632234§.id;
         this.§521423134562313469123423632234§ = param1.§5214238136238149123423632234§["details.png"] || this.§521423131662313179123423632234§("details.png",65280);
         this.§521423119412311954123423632234§ = param1.§5214238136238149123423632234§["lightmap.jpg"] || this.§521423131662313179123423632234§("lightmap.jpg",8355711);
      }
      
      protected function §521423128902312903123423632234§(param1:Mesh) : Mesh
      {
         if(param1.sorting != 2)
         {
            param1.sorting = 2;
            param1.calculateFacesNormals(true);
            param1.optimizeForDynamicBSP();
            param1.threshold = 0.01;
         }
         return param1;
      }
      
      public function §521423131122313125123423632234§(param1:BitmapData) : BitmapData
      {
         var _loc2_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ || Boolean(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§))
         {
            return §implements for finally§(OSGi.getInstance().getService(§implements for finally§)).getTexture(§521423134562313469123423632234§,true);
         }
         return this.§521423134562313469123423632234§.clone();
      }
      
      private function §521423131662313179123423632234§(param1:String, param2:uint) : BitmapData
      {
         var _loc3_:BitmapData = §import null§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §throw for true§(param2);
            §import null§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}

