package §5214233087233100123423632234§
{
   import §521423129512312964123423632234§.§try switch get§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   internal class §521423123782312391123423632234§
   {
      
      public var §5214233309233322123423632234§:BitmapData;
      
      private var §521423120122312025123423632234§:§5214239702239715123423632234§;
      
      private var §set const break§:Function;
      
      private var §include catch false§:Loader;
      
      public function §521423123782312391123423632234§()
      {
         super();
      }
      
      private function §5214236465236478123423632234§(param1:ByteArray, param2:Function) : void
      {
         this.§include catch false§ = new Loader();
         this.§include catch false§.contentLoaderInfo.addEventListener("complete",param2);
         this.§include catch false§.loadBytes(param1);
      }
      
      private function §5214233690233703123423632234§() : void
      {
         this.§include catch false§ = null;
         this.§set const break§.call(null,this);
      }
      
      private function §5214239205239218123423632234§(param1:Event) : void
      {
         this.§5214233309233322123423632234§ = Bitmap(this.§include catch false§.content).bitmapData;
         if(this.§521423120122312025123423632234§.§return switch override§ != null)
         {
            this.§5214236465236478123423632234§(this.§521423120122312025123423632234§.§return switch override§,this.§do switch final§);
         }
         else
         {
            this.§5214233690233703123423632234§();
         }
      }
      
      private function §throw for null§(param1:BitmapData) : void
      {
         this.§5214233309233322123423632234§ = param1;
         this.§5214233690233703123423632234§();
      }
      
      public function §521423105162310529123423632234§(param1:§5214239702239715123423632234§, param2:Function) : void
      {
         this.§521423120122312025123423632234§ = param1;
         this.§set const break§ = param2;
         this.§5214236465236478123423632234§(param1.§while for native§,this.§5214239205239218123423632234§);
      }
      
      private function §do switch final§(param1:Event) : void
      {
         var _loc2_:BitmapData = Bitmap(this.§include catch false§.content).bitmapData;
         this.§5214233309233322123423632234§ = §try switch get§.§while const use§(this.§5214233309233322123423632234§,_loc2_,true);
         this.§5214233690233703123423632234§();
      }
   }
}

