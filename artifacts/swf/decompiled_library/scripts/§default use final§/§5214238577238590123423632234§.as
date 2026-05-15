package §default use final§
{
   import §5214237330237343123423632234§.§5214233041233054123423632234§;
   import §5214237330237343123423632234§.CommandMap;
   import §5214237330237343123423632234§.EventMap;
   import §5214237330237343123423632234§.MediatorMap;
   import §5214237330237343123423632234§.ViewMap;
   import §5214237330237343123423632234§.§continue switch static§;
   import §5214237330237343123423632234§.§function each§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   import §null package if§.§52142351923532123423632234§;
   import §null package if§.§5214238210238223123423632234§;
   import §null package if§.§each const§;
   import §null package if§.§finally catch try§;
   import §null package if§.§override finally for§;
   import §null package if§.§throw switch use§;
   import §null package if§.§try finally catch§;
   import §with set for§.§5214231201231214123423632234§;
   import §with set for§.SwiftSuspendersInjector;
   
   public class §5214238577238590123423632234§ extends §function each§ implements §throw switch use§
   {
      
      protected var §null with§:§try finally catch§;
      
      protected var §5214232338232351123423632234§:§each const§;
      
      protected var §521423106232310636123423632234§:Boolean;
      
      protected var §5214234756234769123423632234§:DisplayObjectContainer;
      
      protected var §521423103432310356123423632234§:§override finally for§;
      
      protected var §521423130822313095123423632234§:§5214238210238223123423632234§;
      
      protected var §use while§:§52142351923532123423632234§;
      
      public function §5214238577238590123423632234§(param1:DisplayObjectContainer = null, param2:Boolean = true)
      {
         super();
         this.§5214234756234769123423632234§ = param1;
         this.§521423106232310636123423632234§ = param2;
         if(this.§5214234756234769123423632234§)
         {
            this.§continue for override§();
            this.§get package implements§();
         }
      }
      
      public function startup() : void
      {
         dispatchEvent(new §continue switch static§(§continue switch static§.§implements catch var§));
      }
      
      public function shutdown() : void
      {
         dispatchEvent(new §continue switch static§(§continue switch static§.§5214233908233921123423632234§));
      }
      
      public function get contextView() : DisplayObjectContainer
      {
         return this.§5214234756234769123423632234§;
      }
      
      public function set contextView(param1:DisplayObjectContainer) : void
      {
         if(param1 == this.§5214234756234769123423632234§)
         {
            return;
         }
         if(this.§5214234756234769123423632234§)
         {
            throw new §5214233041233054123423632234§(§5214233041233054123423632234§.§false use catch§);
         }
         this.§5214234756234769123423632234§ = param1;
         this.§continue for override§();
         this.§get package implements§();
      }
      
      protected function get injector() : §try finally catch§
      {
         return this.§null with§ = this.§null with§ || this.§break const implements§();
      }
      
      protected function set injector(param1:§try finally catch§) : void
      {
         this.§null with§ = param1;
      }
      
      protected function get §5214232030232043123423632234§() : §each const§
      {
         return this.§5214232338232351123423632234§ = this.§5214232338232351123423632234§ || new §5214231201231214123423632234§();
      }
      
      protected function set §5214232030232043123423632234§(param1:§each const§) : void
      {
         this.§5214232338232351123423632234§ = param1;
      }
      
      protected function get §5214233488233501123423632234§() : §override finally for§
      {
         return this.§521423103432310356123423632234§ = this.§521423103432310356123423632234§ || new CommandMap(eventDispatcher,this.§each use dynamic§(),this.§5214232030232043123423632234§);
      }
      
      protected function set §5214233488233501123423632234§(param1:§override finally for§) : void
      {
         this.§521423103432310356123423632234§ = param1;
      }
      
      protected function get §5214231877231890123423632234§() : §5214238210238223123423632234§
      {
         return this.§521423130822313095123423632234§ = this.§521423130822313095123423632234§ || new MediatorMap(this.contextView,this.§each use dynamic§(),this.§5214232030232043123423632234§);
      }
      
      protected function set §5214231877231890123423632234§(param1:§5214238210238223123423632234§) : void
      {
         this.§521423130822313095123423632234§ = param1;
      }
      
      protected function get §521423101482310161123423632234§() : §52142351923532123423632234§
      {
         return this.§use while§ = this.§use while§ || new ViewMap(this.contextView,this.injector);
      }
      
      protected function set §521423101482310161123423632234§(param1:§52142351923532123423632234§) : void
      {
         this.§use while§ = param1;
      }
      
      protected function §continue for override§() : void
      {
         this.injector.§for var while§(§each const§,this.§5214232030232043123423632234§);
         this.injector.§for var while§(§try finally catch§,this.injector);
         this.injector.§for var while§(IEventDispatcher,eventDispatcher);
         this.injector.§for var while§(DisplayObjectContainer,this.contextView);
         this.injector.§for var while§(§override finally for§,this.§5214233488233501123423632234§);
         this.injector.§for var while§(§5214238210238223123423632234§,this.§5214231877231890123423632234§);
         this.injector.§for var while§(§52142351923532123423632234§,this.§521423101482310161123423632234§);
         this.injector.§super var const§(§finally catch try§,EventMap);
      }
      
      protected function §get package implements§() : void
      {
         if(this.§521423106232310636123423632234§ && Boolean(this.contextView))
         {
            if(this.contextView.stage)
            {
               this.startup();
            }
            else
            {
               this.contextView.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage,false,0,true);
            }
         }
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         this.contextView.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.startup();
      }
      
      protected function §break const implements§() : §try finally catch§
      {
         var _loc1_:§try finally catch§ = new SwiftSuspendersInjector();
         _loc1_.applicationDomain = this.§5214236188236201123423632234§();
         return _loc1_;
      }
      
      protected function §each use dynamic§() : §try finally catch§
      {
         return this.injector.§false var include§(this.§5214236188236201123423632234§());
      }
      
      protected function §5214236188236201123423632234§() : ApplicationDomain
      {
         if(Boolean(this.contextView) && Boolean(this.contextView.loaderInfo))
         {
            return this.contextView.loaderInfo.applicationDomain;
         }
         return ApplicationDomain.currentDomain;
      }
   }
}

