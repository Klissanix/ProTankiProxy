package §import var finally§
{
   import §5214233635233648123423632234§.§5214237478237491123423632234§;
   import §finally set implements§.§5214236161236174123423632234§;
   import §finally set implements§.§for var get§;
   import §finally set implements§.§var const try§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §in switch implements§.TextureByteData;
   
   public class §super for else§ extends EventDispatcher
   {
      
      private static const §5214231982231995123423632234§:int = 0;
      
      private static const §extends use continue§:int = 1;
      
      private static var §521423120052312018123423632234§:Class = §red_square_jfif$f38e732223d2c149b2e715e58510478e-874219914§;
      
      public static const §false set default§:ByteArray = new §521423120052312018123423632234§();
      
      private var §implements catch catch§:int = 0;
      
      private var §5214238509238522123423632234§:§521423126602312673123423632234§;
      
      private var §final finally finally§:String;
      
      private var §5214236485236498123423632234§:Object;
      
      private var §521423110562311069123423632234§:Vector.<String>;
      
      private var §521423112722311285123423632234§:int;
      
      private var §5214237903237916123423632234§:int;
      
      private var §if use for§:§5214237478237491123423632234§;
      
      private var §5214238401238414123423632234§:Boolean;
      
      public function §super for else§(param1:Object)
      {
         super();
         if(param1 == null)
         {
            throw ArgumentError("Parameter d41cda13 cannot be null");
         }
         this.§5214236485236498123423632234§ = param1;
         this.§521423110562311069123423632234§ = new Vector.<String>();
         for(var _loc2_ in param1)
         {
            this.§521423110562311069123423632234§[§521423110562311069123423632234§.length] = _loc2_;
         }
         this.§5214237903237916123423632234§ = this.§521423110562311069123423632234§.length;
      }
      
      private function §in use import§() : void
      {
         var _loc2_:§5214233384233397123423632234§ = this.§5214236485236498123423632234§[this.§521423110562311069123423632234§[this.§521423112722311285123423632234§]];
         var _loc1_:String = _loc2_.§5214235555235568123423632234§ ? this.§final finally finally§ + _loc2_.§5214235555235568123423632234§ : null;
         this.§5214238509238522123423632234§.§5214236465236478123423632234§(this.§final finally finally§ + _loc2_.§5214235833235846123423632234§,_loc1_);
      }
      
      private function §521423136622313675123423632234§() : void
      {
         if(this.§implements catch catch§ == 0)
         {
            return;
         }
         if(hasEventListener("partComplete"))
         {
            dispatchEvent(new §var const try§("partComplete",this.§5214237903237916123423632234§,this.§521423112722311285123423632234§));
         }
         if(++this.§521423112722311285123423632234§ == this.§5214237903237916123423632234§)
         {
            this.§5214237301237314123423632234§();
            this.§implements catch catch§ = 0;
            if(hasEventListener("complete"))
            {
               dispatchEvent(new Event("complete"));
            }
         }
         else
         {
            this.§in use import§();
         }
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         var _loc2_:String = this.§521423110562311069123423632234§[this.§521423112722311285123423632234§];
         this.§if use for§.§false package class§(_loc2_,new TextureByteData(this.§5214238509238522123423632234§.§while for native§ || §false set default§));
         dispatchEvent(new §5214236161236174123423632234§("loaderError",_loc2_,param1.text));
         this.§521423136622313675123423632234§();
      }
      
      public function §5214236465236478123423632234§(param1:String) : void
      {
         if(param1 == null)
         {
            throw ArgumentError("Parameter a55ed83f cannot be null");
         }
         this.§final finally finally§ = param1;
         if(this.§5214238509238522123423632234§ == null)
         {
            this.§5214238509238522123423632234§ = new §521423126602312673123423632234§();
            this.§5214238509238522123423632234§.addEventListener("open",this.§5214234159234172123423632234§);
            this.§5214238509238522123423632234§.addEventListener("loaderProgress",this.§5214234389234402123423632234§);
            this.§5214238509238522123423632234§.addEventListener("complete",this.§521423103382310351123423632234§);
            this.§5214238509238522123423632234§.addEventListener("ioError",this.§in switch extends§);
            this.§5214238509238522123423632234§.addEventListener("securityError",this.§in switch extends§);
         }
         else
         {
            this.close();
         }
         this.§if use for§ = new §5214237478237491123423632234§();
         this.§5214238401238414123423632234§ = false;
         this.§implements catch catch§ = 1;
         this.§521423112722311285123423632234§ = 0;
         this.§in use import§();
      }
      
      public function §override switch package§() : void
      {
         this.§if use for§ = null;
      }
      
      private function §5214234159234172123423632234§(param1:Event) : void
      {
         if(!this.§5214238401238414123423632234§)
         {
            this.§5214238401238414123423632234§ = true;
            if(hasEventListener("open"))
            {
               dispatchEvent(new Event("open"));
            }
         }
         if(hasEventListener("partOpen"))
         {
            dispatchEvent(new §var const try§("partOpen",this.§5214237903237916123423632234§,this.§521423112722311285123423632234§));
         }
      }
      
      public function §else var package§() : void
      {
         if(this.§implements catch catch§ == 0)
         {
            throw new Error("Wrong method invocation");
         }
         this.§5214238509238522123423632234§.§else var package§();
      }
      
      public function get §5214238136238149123423632234§() : §5214237478237491123423632234§
      {
         return this.§if use for§;
      }
      
      public function close() : void
      {
         if(this.§implements catch catch§ == 1)
         {
            this.§5214238509238522123423632234§.close();
            this.§5214237301237314123423632234§();
            this.§if use for§ = null;
            this.§implements catch catch§ = 0;
         }
      }
      
      private function §521423103382310351123423632234§(param1:Event) : void
      {
         this.§if use for§.§false package class§(this.§521423110562311069123423632234§[this.§521423112722311285123423632234§],new TextureByteData(this.§5214238509238522123423632234§.§while for native§,this.§5214238509238522123423632234§.§return switch override§));
         this.§521423136622313675123423632234§();
      }
      
      private function §5214234389234402123423632234§(param1:§for var get§) : void
      {
         var _loc2_:Number = NaN;
         if(hasEventListener("loaderProgress"))
         {
            _loc2_ = (this.§521423112722311285123423632234§ + param1.§5214232037232050123423632234§) / this.§5214237903237916123423632234§;
            dispatchEvent(new §for var get§("loaderProgress",this.§5214237903237916123423632234§,this.§521423112722311285123423632234§,_loc2_,param1.bytesLoaded,param1.bytesTotal));
         }
      }
      
      private function §5214237301237314123423632234§() : void
      {
         this.§521423110562311069123423632234§ = null;
      }
   }
}

