package §for package catch§
{
   import flash.events.Event;
   import §true switch true§.§if const get§;
   
   public class PlaceholderInputText extends §if const get§
   {
      
      private var §5214234136234149123423632234§:String;
      
      private const §5214236605236618123423632234§:uint = 8421504;
      
      public function PlaceholderInputText(param1:String)
      {
         super();
         this.§5214234136234149123423632234§ = param1;
         value = param1;
         §52142339223405123423632234§.textColor = 8421504;
         §52142339223405123423632234§.displayAsPassword = false;
         addEventListener("focusIn",this.method_2662);
         addEventListener("focusOut",this.method_1266);
      }
      
      public function method_2662(param1:Event) : void
      {
         if(value == this.§5214234136234149123423632234§)
         {
            §52142339223405123423632234§.textColor = 16777215;
            value = "";
            §52142339223405123423632234§.displayAsPassword = this.hidden;
         }
      }
      
      public function method_1266(param1:Event) : void
      {
         if(value == "")
         {
            §52142339223405123423632234§.textColor = 8421504;
            value = this.§5214234136234149123423632234§;
            §52142339223405123423632234§.displayAsPassword = false;
         }
      }
      
      override public function set hidden(param1:Boolean) : void
      {
         super.hidden = param1;
         §52142339223405123423632234§.displayAsPassword = false;
      }
      
      public function setValue(param1:String) : void
      {
         this.value = param1;
         §52142339223405123423632234§.textColor = 16777215;
      }
   }
}

