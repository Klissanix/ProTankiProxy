package §import var finally§
{
   import §521423129512312964123423632234§.§dynamic use override§;
   import §finally set implements§.§for var get§;
   import §finally set implements§.§var const try§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class §521423126602312673123423632234§ extends EventDispatcher
   {
      
      private static const §5214231982231995123423632234§:int = 0;
      
      private static const §5214232188232201123423632234§:int = 1;
      
      private static const §set package include§:int = 2;
      
      public var §while for native§:ByteArray;
      
      public var §return switch override§:ByteArray;
      
      private var §implements catch catch§:int = 0;
      
      private var §static use static§:§dynamic use override§;
      
      private var §5214236579236592123423632234§:String;
      
      private var §52142348823501123423632234§:String;
      
      public function §521423126602312673123423632234§()
      {
         super();
      }
      
      private function §default set for§() : void
      {
         this.§static use static§ = new §dynamic use override§();
         this.§static use static§.dataFormat = "binary";
         this.§static use static§.addEventListener("open",this.§5214235749235762123423632234§);
         this.§static use static§.addEventListener("progress",this.§with extends§);
         this.§static use static§.addEventListener("complete",this.§while for get§);
         this.§static use static§.addEventListener("ioError",this.§in switch extends§);
         this.§static use static§.addEventListener("securityError",this.§in switch extends§);
      }
      
      private function §while for get§(param1:Event) : void
      {
         switch(this.§implements catch catch§ - 1)
         {
            case 0:
               this.§while for native§ = this.§static use static§.data;
               this.§true switch set§();
               this.§5214235216235229123423632234§(0);
               if(this.§52142348823501123423632234§)
               {
                  this.§521423105492310562123423632234§(2,this.§52142348823501123423632234§);
                  break;
               }
               this.§5214233690233703123423632234§();
               break;
            case 1:
               this.§return switch override§ = this.§static use static§.data;
               this.§true switch set§();
               this.§5214235216235229123423632234§(1);
               this.§5214233690233703123423632234§();
         }
      }
      
      private function §521423105492310562123423632234§(param1:int, param2:String) : void
      {
         this.§implements catch catch§ = param1;
         this.§default set for§();
         this.§static use static§.load(new URLRequest(param2));
      }
      
      private function §5214233690233703123423632234§() : void
      {
         this.§implements catch catch§ = 0;
         this.§5214237301237314123423632234§();
         if(hasEventListener("complete"))
         {
            dispatchEvent(new Event("complete"));
         }
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         this.§implements catch catch§ = 0;
         this.§5214237301237314123423632234§();
         dispatchEvent(param1);
      }
      
      public function §override switch package§() : void
      {
         this.close();
         this.§while for native§ = null;
         this.§return switch override§ = null;
      }
      
      private function §5214237301237314123423632234§() : void
      {
         this.§true switch set§();
         this.§5214236579236592123423632234§ = null;
         this.§52142348823501123423632234§ = null;
      }
      
      public function close() : void
      {
         if(this.§implements catch catch§ == 0)
         {
            return;
         }
         this.§implements catch catch§ = 0;
         this.§static use static§.close();
         this.§5214237301237314123423632234§();
      }
      
      public function §5214236465236478123423632234§(param1:String, param2:String = null) : void
      {
         this.§override switch package§();
         this.§5214236579236592123423632234§ = param1;
         this.§52142348823501123423632234§ = param2;
         this.§521423105492310562123423632234§(1,param1);
      }
      
      private function §5214235216235229123423632234§(param1:int) : void
      {
         if(hasEventListener("partComplete"))
         {
            dispatchEvent(new §var const try§("partComplete",2,param1));
         }
      }
      
      private function §true switch set§() : void
      {
         if(this.§static use static§ != null)
         {
            this.§static use static§.close();
            this.§static use static§.removeEventListener("open",this.§5214235749235762123423632234§);
            this.§static use static§.removeEventListener("progress",this.§with extends§);
            this.§static use static§.removeEventListener("complete",this.§while for get§);
            this.§static use static§.removeEventListener("ioError",this.§in switch extends§);
            this.§static use static§.removeEventListener("securityError",this.§in switch extends§);
            this.§static use static§ = null;
         }
      }
      
      private function §5214235749235762123423632234§(param1:Event) : void
      {
         if(this.§while for native§ == null && hasEventListener("open"))
         {
            dispatchEvent(new Event("open"));
         }
         if(hasEventListener("partOpen"))
         {
            dispatchEvent(new §var const try§("partOpen",2,this.§implements catch catch§ == 1 ? 0 : 1));
         }
      }
      
      private function §with extends§(param1:ProgressEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(hasEventListener("loaderProgress"))
         {
            _loc3_ = this.§implements catch catch§ == 1 ? 0 : 1;
            _loc2_ = 0.5 * (_loc3_ + param1.bytesLoaded / param1.bytesTotal);
            dispatchEvent(new §for var get§("loaderProgress",2,_loc3_,_loc2_,param1.bytesLoaded,param1.bytesTotal));
         }
      }
      
      public function §else var package§() : void
      {
         switch(this.§implements catch catch§ - 1)
         {
            case 0:
               this.§true switch set§();
               this.§521423105492310562123423632234§(1,this.§5214236579236592123423632234§);
               break;
            case 1:
               this.§true switch set§();
               this.§521423105492310562123423632234§(2,this.§52142348823501123423632234§);
               break;
            default:
               throw new Error("Wrong loader state: " + this.§implements catch catch§);
         }
      }
   }
}

