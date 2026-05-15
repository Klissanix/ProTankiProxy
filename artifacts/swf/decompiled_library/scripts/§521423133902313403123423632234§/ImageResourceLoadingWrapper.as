package §521423133902313403123423632234§
{
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214233087233100123423632234§.§include catch with§;
   
   public class ImageResourceLoadingWrapper implements §5214238033238046123423632234§
   {
      
      private var §521423135082313521123423632234§:§5214235988236001123423632234§;
      
      public function ImageResourceLoadingWrapper(param1:§5214235988236001123423632234§)
      {
         super();
         this.§521423135082313521123423632234§ = param1;
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
         throw new Error("Resource loading error (id: " + param1.§5214239618239631123423632234§.id + ")");
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
         throw new Error("Resource loading error (id: " + param1.§5214239618239631123423632234§.id + ")");
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         this.§521423135082313521123423632234§.setPreviewResource(§include catch with§(param1));
      }
   }
}

