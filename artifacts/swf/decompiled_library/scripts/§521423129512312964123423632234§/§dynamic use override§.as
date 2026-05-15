package §521423129512312964123423632234§
{
   import alternativa.startup.CacheURLLoader;
   import flash.events.Event;
   
   public class §dynamic use override§ extends CacheURLLoader
   {
      
      private var §else switch finally§:Boolean;
      
      private var §catch catch package§:Boolean;
      
      public function §dynamic use override§()
      {
         super();
         addEventListener("open",this.§var package implements§,false,2147483647);
      }
      
      override public function close() : void
      {
         if(this.§else switch finally§)
         {
            this.§else switch finally§ = false;
            super.close();
         }
         else
         {
            this.§catch catch package§ = true;
         }
      }
      
      private function §var package implements§(param1:Event) : void
      {
         this.§else switch finally§ = true;
         if(this.§catch catch package§)
         {
            this.close();
         }
      }
   }
}

