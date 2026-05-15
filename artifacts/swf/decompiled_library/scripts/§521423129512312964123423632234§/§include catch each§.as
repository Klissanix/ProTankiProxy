package §521423129512312964123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.service.IResourceTimer;
   
   public class §include catch each§
   {
      
      public static const §with package include§:String = "default";
      
      public static var §for continue§:ResourceRegistry;
      
      public static var §override package function§:IResourceTimer;
      
      public static var §5214234621234634123423632234§:LogService;
      
      public static var §get set with§:§dynamic use try§;
      
      public var §521423127412312754123423632234§:String;
      
      protected var §5214239618239631123423632234§:§52142373423747123423632234§;
      
      protected var §super switch switch§:String;
      
      protected var §5214234460234473123423632234§:§5214238033238046123423632234§;
      
      protected var §else for include§:int;
      
      internal var §extends package super§:int;
      
      private var §case use with§:int;
      
      private var §521423111712311184123423632234§:Vector.<§include catch each§>;
      
      private var §5214236046236059123423632234§:int = 0;
      
      private var §5214231230231243123423632234§:§521423119282311941123423632234§;
      
      public function §include catch each§(param1:§52142373423747123423632234§)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("Parameter resourceInfo is null");
         }
         §get set with§ ||= §5214234621234634123423632234§.getLogger("resource");
         this.§5214239618239631123423632234§ = param1;
      }
      
      private static function §super catch include§(param1:Object) : String
      {
         var _loc3_:String = getQualifiedClassName(param1);
         var _loc2_:int = _loc3_.indexOf("::");
         if(_loc2_ >= 0)
         {
            return _loc3_.substr(_loc2_ + 2);
         }
         return _loc3_;
      }
      
      public function §extends var try§() : Boolean
      {
         return this.§5214236046236059123423632234§ > 0;
      }
      
      public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
      }
      
      final protected function §5214234125234138123423632234§() : void
      {
         this.§else for include§ |= 1;
      }
      
      final public function §521423117982311811123423632234§(param1:int) : void
      {
         this.§else for include§ |= param1;
      }
      
      public function §52142361323626123423632234§() : String
      {
         if(this.§case use with§ > 0)
         {
            return "?reloadRand=" + Math.random() + "&numReload=" + this.§case use with§;
         }
         return "";
      }
      
      public function §override switch package§() : void
      {
      }
      
      public function get §in const default§() : String
      {
         return "default";
      }
      
      protected function §5214237993238006123423632234§() : void
      {
         this.§implements use super§();
         §override package function§.addResource(this);
      }
      
      public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         if(param2 == null)
         {
            throw new ArgumentError("Parameter listener is null");
         }
         this.§super switch switch§ = param1;
         this.§5214234460234473123423632234§ = param2;
         var _loc4_:Long;
         OSGi.§try set return§.log("resource","loading resource %1 url %2 ",(_loc4_ = this.§5214239618239631123423632234§.id).b34eb168,param1);
      }
      
      final public function §521423134852313498123423632234§(param1:int) : void
      {
         this.§else for include§ &= ~param1;
      }
      
      final public function get §521423137152313728123423632234§() : Boolean
      {
         return this.§5214239618239631123423632234§.§521423137152313728123423632234§;
      }
      
      public function get §var catch import§() : String
      {
         return null;
      }
      
      public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         return false;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      final public function get §use set do§() : Boolean
      {
         return (this.§else for include§ & 8) != 0;
      }
      
      final public function get §5214239584239597123423632234§() : Boolean
      {
         return (this.§else for include§ & 1) != 0;
      }
      
      public function §5214238641238654123423632234§(param1:§521423119282311941123423632234§) : void
      {
         this.§5214231230231243123423632234§ = param1;
      }
      
      public function §5214234106234119123423632234§() : void
      {
         if(--this.§5214236046236059123423632234§ == 0)
         {
            if(this.§5214231230231243123423632234§ != null)
            {
               this.§5214231230231243123423632234§.§break catch return§(this);
            }
         }
      }
      
      final public function §5214234169234182123423632234§(param1:§5214238033238046123423632234§) : void
      {
         var _loc2_:§include catch each§ = this;
         if((_loc2_.§else for include§ & 1) != 0)
         {
            throw new Error("Resource is already loaded. Resource id: " + this.§5214239618239631123423632234§.id);
         }
         §for continue§.loadLazyResource(this,param1);
      }
      
      final public function get §5214231514231527123423632234§() : Long
      {
         return this.§5214239618239631123423632234§.§5214231514231527123423632234§;
      }
      
      final public function §5214233843233856123423632234§(param1:int) : Boolean
      {
         return (this.§else for include§ & param1) != 0;
      }
      
      final public function §5214236623236636123423632234§(param1:§5214238033238046123423632234§) : void
      {
         var _loc2_:§include catch each§ = this;
         if(!_loc2_.§5214239618239631123423632234§.§521423137152313728123423632234§)
         {
            throw new Error("Resource is not lazy. Resource id: " + this.§5214239618239631123423632234§.id);
         }
         var _loc4_:§include catch each§ = this;
         if((_loc4_.§else for include§ & 1) != 0)
         {
            var _loc5_:§include catch each§;
            throw new Error("Resource is already loaded. Resource id: " + (_loc5_ = this).§5214239618239631123423632234§.id);
         }
         §for continue§.addLazyListener(this,param1);
      }
      
      protected function §implements use super§() : void
      {
         this.§extends package super§ = getTimer();
      }
      
      final public function §extends for each§(param1:int) : Boolean
      {
         return (this.§else for include§ & param1) == param1;
      }
      
      protected function §5214238932238945123423632234§() : Boolean
      {
         return false;
      }
      
      protected function §else catch class§() : void
      {
         if(this.§521423111712311184123423632234§ != null)
         {
            for each(var _loc1_ in this.§521423111712311184123423632234§)
            {
               _loc1_.§5214234106234119123423632234§();
            }
            this.§521423111712311184123423632234§ = null;
         }
         this.§52142375423767123423632234§();
         this.§521423117982311811123423632234§(1);
         this.§521423127412312754123423632234§ = "Loaded";
         this.§5214234460234473123423632234§.onResourceLoadingComplete(this);
      }
      
      protected function §function switch try§() : void
      {
         this.§5214234460234473123423632234§.onResourceLoadingFatalError(this,"Cannot reload resource (not implemented)");
      }
      
      protected function §52142375423767123423632234§() : void
      {
         §override package function§.removeResource(this);
      }
      
      final public function get id() : Long
      {
         return this.§5214239618239631123423632234§.id;
      }
      
      public function close() : void
      {
      }
      
      public function §finally var super§(param1:§include catch each§) : void
      {
         if(this.§521423111712311184123423632234§ == null)
         {
            this.§521423111712311184123423632234§ = new Vector.<§include catch each§>();
         }
         this.§521423111712311184123423632234§[§521423111712311184123423632234§.length] = param1;
      }
      
      final public function §super switch set§(param1:§5214238033238046123423632234§) : void
      {
         var _loc2_:§include catch each§ = this;
         if(_loc2_.§5214239618239631123423632234§.§521423137152313728123423632234§ && (_loc3_.§else for include§ & 1) == 0)
         {
            §for continue§.removeLazyListener(this,param1);
         }
      }
      
      public function §5214238435238448123423632234§(param1:§include catch each§) : void
      {
         param1.§finally var super§(this);
         ++this.§5214236046236059123423632234§;
      }
      
      final public function §else var package§() : void
      {
         if(this.§case use with§ >= §override package function§.getMaxReloadAttemts())
         {
            if(this.§5214238932238945123423632234§())
            {
               this.§5214234125234138123423632234§();
               this.§5214234460234473123423632234§.onResourceLoadingError(this,"No reload attempts left");
               this.§521423127412312754123423632234§ = "Dummy data is used";
            }
            else
            {
               this.§5214234460234473123423632234§.onResourceLoadingFatalError(this,"No reload attempts left and no default data available.");
            }
         }
         else
         {
            ++this.§case use with§;
            §get set with§.info("Reloading resource id: %1, type: %2. Attempt %3 out of %4.",[this.§5214239618239631123423632234§.id,this,this.§case use with§,§override package function§.getMaxReloadAttemts()]);
            this.§function switch try§();
         }
      }
   }
}

