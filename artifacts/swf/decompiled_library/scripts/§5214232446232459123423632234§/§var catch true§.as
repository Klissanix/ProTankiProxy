package §5214232446232459123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TargetingModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import §else switch default§.§override for default§;
   import §extends set continue§.§5214239892239905123423632234§;
   import §extends set continue§.§switch for do§;
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §var catch true§ implements §if use default§, §override for default§, §521423117662311779123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §while set false§:TargetingModeService;
      
      private var §521423131102313123123423632234§:Boolean = false;
      
      private var §521423113832311396123423632234§:Boolean = false;
      
      private var §5214232995233008123423632234§:§5214239892239905123423632234§;
      
      private var §5214237865237878123423632234§:§switch for do§;
      
      private var §package package var§:§52142351023523123423632234§ = null;
      
      private var §52142392223935123423632234§:§52142351023523123423632234§ = null;
      
      private var §finally continue§:§if for switch§;
      
      private var §extends const default§:Boolean;
      
      public function §var catch true§(param1:§if for switch§)
      {
         super();
         this.§finally continue§ = param1;
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§521423128212312834123423632234§);
         §with set include§.addBattleEventListener(TargetingModeChangedEvent,this);
         this.§5214232995233008123423632234§ = new §5214239892239905123423632234§(param1);
         this.§5214237865237878123423632234§ = this.§else use get§(param1);
         this.§5214231007231020123423632234§(this.§521423138822313895123423632234§(§while set false§.getCurrentMode()));
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc2_:TargetingModeChangedEvent = param1 as TargetingModeChangedEvent;
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.targetingMode;
            this.§5214231007231020123423632234§(this.§521423138822313895123423632234§(_loc3_));
         }
      }
      
      protected function §else use get§(param1:§if for switch§) : §switch for do§
      {
         return new §switch for do§(param1);
      }
      
      public function close() : void
      {
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§521423128212312834123423632234§);
         §with set include§.removeBattleEventListener(TargetingModeChangedEvent,this);
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§5214232185232198123423632234§(param2 * 0.001);
      }
      
      protected function §521423138822313895123423632234§(param1:int) : §52142351023523123423632234§
      {
         switch(param1 - 1)
         {
            case 0:
               return this.§5214232995233008123423632234§;
            case 1:
               return this.§5214237865237878123423632234§;
            default:
               return null;
         }
      }
      
      protected function §5214231007231020123423632234§(param1:§52142351023523123423632234§) : void
      {
         this.§52142392223935123423632234§ = param1;
      }
      
      public function §5214232185232198123423632234§(param1:Number) : void
      {
         if(this.§52142392223935123423632234§ != null)
         {
            if(this.§package package var§ != null)
            {
               this.§package package var§.§use use null§();
            }
            this.§finally continue§.§super const finally§();
            this.§package package var§ = this.§52142392223935123423632234§;
            this.§package package var§.§else if§();
            this.§52142392223935123423632234§ = null;
         }
         if(this.§package package var§ != null)
         {
            if(this.§extends const default§)
            {
               this.§package package var§.§use use null§();
               this.§package package var§.§else if§();
               this.§extends const default§ = false;
            }
            this.§package package var§.§5214232185232198123423632234§(param1);
         }
      }
      
      public function §521423117172311730123423632234§() : §if for switch§
      {
         return this.§finally continue§;
      }
      
      public function reset() : void
      {
         this.§521423100402310053123423632234§();
         this.§extends const default§ = true;
      }
      
      public function §521423100402310053123423632234§() : void
      {
         this.§finally continue§.§include const if§();
         this.§finally continue§.§521423127992312812123423632234§(0);
      }
      
      private function §521423128212312834123423632234§(param1:Event) : void
      {
         this.§521423131102313123123423632234§ = false;
      }
   }
}

