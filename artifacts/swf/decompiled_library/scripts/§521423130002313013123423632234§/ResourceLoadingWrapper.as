package §521423130002313013123423632234§
{
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   
   public class ResourceLoadingWrapper implements §5214238033238046123423632234§
   {
      
      private var listener:§implements package try§;
      
      public function ResourceLoadingWrapper(param1:§implements package try§)
      {
         super();
         this.listener = param1;
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
         throw new Error("Resource loading error (id: " + param1.§5214239618239631123423632234§.id + ")");
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         this.listener.onLoadingComplete(param1);
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
         throw new Error("Resource loading error (id: " + param1.§5214239618239631123423632234§.id + ")");
      }
   }
}

