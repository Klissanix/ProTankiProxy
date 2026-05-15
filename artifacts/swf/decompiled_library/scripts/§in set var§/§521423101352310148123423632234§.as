package §in set var§
{
   import §5214236800236813123423632234§.§else const if§;
   import §5214236800236813123423632234§.§for for final§;
   import §5214236800236813123423632234§.§include switch var§;
   import flash.events.Event;
   import utils.TimeFormatter;
   
   public class §521423101352310148123423632234§ extends §521423106942310707123423632234§ implements §for for final§, §else const if§
   {
      
      private var §5214239977239990123423632234§:§include switch var§ = null;
      
      public function §521423101352310148123423632234§()
      {
         super();
         addEventListener("addedToStage",this.§true var implements§);
         addEventListener("removedFromStage",this.§5214232582232595123423632234§);
      }
      
      private static function §5214238793238806123423632234§(param1:int) : String
      {
         if(param1 <= 0)
         {
            return "";
         }
         return TimeFormatter.format(param1);
      }
      
      public function onTick(param1:§include switch var§) : void
      {
         text = §5214238793238806123423632234§(param1.§throw package return§());
         dispatchEvent(new Event("change"));
      }
      
      public function onCompleteBefore(param1:§include switch var§, param2:Boolean) : void
      {
         if(param1 == this.§5214239977239990123423632234§)
         {
            this.§5214239977239990123423632234§ = null;
            text = "";
         }
      }
      
      public function §native var include§(param1:§include switch var§) : void
      {
         this.§521423129602312973123423632234§();
         this.§5214239977239990123423632234§ = param1;
         if(stage != null)
         {
            this.§catch var native§();
         }
         this.onTick(param1);
      }
      
      private function §catch var native§() : void
      {
         this.§5214239977239990123423632234§.§5214232580232593123423632234§(§for for final§,this);
         this.§5214239977239990123423632234§.§5214232580232593123423632234§(§else const if§,this);
      }
      
      private function §continue catch each§() : void
      {
         this.§5214239977239990123423632234§.§return use var§(§for for final§,this);
         this.§5214239977239990123423632234§.§return use var§(§else const if§,this);
      }
      
      public function §521423129602312973123423632234§() : void
      {
         if(this.§5214239977239990123423632234§ != null)
         {
            if(stage != null)
            {
               this.§continue catch each§();
            }
            this.§5214239977239990123423632234§ = null;
            text = "";
         }
      }
      
      private function §5214232582232595123423632234§(param1:Event) : void
      {
         if(this.§5214239977239990123423632234§ != null)
         {
            this.§continue catch each§();
         }
      }
      
      private function §true var implements§(param1:Event) : void
      {
         if(this.§5214239977239990123423632234§ != null)
         {
            this.§catch var native§();
            this.onTick(this.§5214239977239990123423632234§);
         }
      }
      
      public function §5214237352237365123423632234§() : §include switch var§
      {
         return this.§5214239977239990123423632234§;
      }
   }
}

