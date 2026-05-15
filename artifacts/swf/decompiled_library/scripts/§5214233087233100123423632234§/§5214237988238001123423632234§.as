package §5214233087233100123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§include catch each§;
   import alternativa.startup.SoundCacheLoader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.media.Sound;
   import flash.net.URLRequest;
   
   public class §5214237988238001123423632234§ extends §include catch each§
   {
      
      private var §class const default§:Sound;
      
      public function §5214237988238001123423632234§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      override public function toString() : String
      {
         return "";
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§5214238728238741123423632234§();
      }
      
      private function §5214238728238741123423632234§() : void
      {
         this.§class const default§ = new SoundCacheLoader();
         this.§class const default§.addEventListener("open",this.§set switch function§);
         this.§class const default§.addEventListener("complete",this.§5214231673231686123423632234§);
         this.§class const default§.addEventListener("ioError",this.§5214233573233586123423632234§);
         this.§class const default§.addEventListener("securityError",this.§5214233573233586123423632234§);
         this.§class const default§.addEventListener("progress",this.§5214238362238375123423632234§);
         this.§class const default§.load(new URLRequest(§super switch switch§ + "sound.swf"));
         §5214237993238006123423632234§();
         §521423127412312754123423632234§ = "Data requested";
      }
      
      override protected function §function switch try§() : void
      {
         if((this.§else for include§ & 8) != 0)
         {
            §521423134852313498123423632234§(8);
            this.§class const default§.close();
         }
         this.§5214238728238741123423632234§();
      }
      
      public function get §set const switch§() : Sound
      {
         return this.§class const default§;
      }
      
      private function §5214231673231686123423632234§(param1:Event) : void
      {
         §521423134852313498123423632234§(8);
         this.§class const default§.removeEventListener("open",this.§set switch function§);
         this.§class const default§.removeEventListener("complete",this.§5214231673231686123423632234§);
         this.§class const default§.removeEventListener("ioError",this.§5214233573233586123423632234§);
         this.§class const default§.removeEventListener("securityError",this.§5214233573233586123423632234§);
         this.§class const default§.removeEventListener("progress",this.§5214238362238375123423632234§);
         §else catch class§();
      }
      
      private function §5214233573233586123423632234§(param1:ErrorEvent) : void
      {
         §521423134852313498123423632234§(8);
         this.§class const default§ = new §5214233311233324123423632234§();
         §else catch class§();
      }
      
      private function §5214238362238375123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §521423117982311811123423632234§(8);
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
   }
}

