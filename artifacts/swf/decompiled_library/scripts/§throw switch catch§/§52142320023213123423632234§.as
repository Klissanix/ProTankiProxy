package §throw switch catch§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.utils.removeDisplayObject;
   import §final for if§.§5214231167231180123423632234§;
   import §final for if§.§5214234809234822123423632234§;
   import §final for if§.§5214235174235187123423632234§;
   import §final for if§.§static default§;
   import fl.controls.List;
   import fl.data.DataProvider;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §get const continue§.§5214233743233756123423632234§;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import utils.ScrollStyleUtils;
   
   public class §52142320023213123423632234§ extends Sprite implements §var use try§
   {
      
      public static var §521423124592312472123423632234§:IAchievementService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private static const §521423119192311932123423632234§:int = 970;
      
      private static const §include for while§:int = 490;
      
      private static const §in catch super§:int = 60;
      
      private static const §null while§:Class = §b8e163_png$246c246ec5bada607d5b4032a1933097-1497390682§;
      
      private var §5214236633236646123423632234§:Stage;
      
      private var §if switch set§:§5214235174235187123423632234§;
      
      private var §function const use§:IDisplay;
      
      private var §521423101102310123123423632234§:§native for dynamic§;
      
      private var §521423114862311499123423632234§:§5214234809234822123423632234§;
      
      private var §521423552368123423632234§:§include return§;
      
      private var §var package default§:§5214233743233756123423632234§;
      
      private var §521423126902312703123423632234§:§5214233743233756123423632234§;
      
      private var §class switch while§:§5214233743233756123423632234§;
      
      private var §const set continue§:List;
      
      private var §521423103092310322123423632234§:DataProvider;
      
      private var §try package dynamic§:int;
      
      private var §while each§:uint;
      
      private var §use set catch§:String;
      
      private var §true package import§:int;
      
      private var §for catch extends§:int;
      
      private var §default finally set§:Boolean;
      
      public function §52142320023213123423632234§(param1:IDisplay, param2:§5214235174235187123423632234§)
      {
         super();
         this.§function const use§ = param1;
         this.§5214236633236646123423632234§ = param1.stage;
         this.§if switch set§ = param2;
         this.init();
      }
      
      public function §5214236458236471123423632234§(param1:String) : void
      {
         this.§521423114862311499123423632234§.§5214236458236471123423632234§(param1);
      }
      
      public function §521423130282313041123423632234§() : void
      {
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function get §catch switch function§() : DisplayObjectContainer
      {
         return this.§function const use§.systemLayer;
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         clearTimeout(this.§while each§);
         this.§521423101102310123123423632234§ = null;
         this.§521423114862311499123423632234§ = null;
         this.§521423552368123423632234§ = null;
         this.§var package default§ = null;
         this.§521423126902312703123423632234§ = null;
         this.§class switch while§ = null;
         this.§const set continue§ = null;
         this.§521423103092310322123423632234§ = null;
         this.§if switch set§ = null;
         this.§5214236633236646123423632234§ = null;
         this.§function const use§ = null;
         this.§use set catch§ = null;
      }
      
      public function §catch catch throw§(param1:String) : void
      {
         this.§521423114862311499123423632234§.§catch catch throw§(param1);
      }
      
      public function §while set null§() : void
      {
         this.§var package default§.enabled = false;
      }
      
      private function §52142331823331123423632234§() : void
      {
         if(this.§var package default§.visible && this.§var package default§.enabled)
         {
            §521423124592312472123423632234§.setBattleStartButtonTargetPoint(new Point(this.x + this.§var package default§.x,this.y + this.§var package default§.y));
         }
         else
         {
            §521423124592312472123423632234§.setBattleStartButtonTargetPoint(new Point());
         }
      }
      
      private function §5214235186235199123423632234§(param1:String) : int
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§521423103092310322123423632234§.length)
         {
            _loc2_ = this.§521423103092310322123423632234§.getItemAt(_loc3_);
            if(_loc2_.id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function §super catch use§(param1:BattleInfoUser) : void
      {
         this.§52142346423477123423632234§(param1.user,param1.kills,param1.suspicious);
      }
      
      private function §implements const for§(param1:int = 200) : void
      {
         clearTimeout(this.§while each§);
         this.§while each§ = setTimeout(this.§else finally for§,param1);
      }
      
      public function §override package var§(param1:§5214237536237549123423632234§) : void
      {
         this.§521423114862311499123423632234§.§set extends§(param1);
         this.§521423114862311499123423632234§.§5214239964239977123423632234§(param1.§use package static§,param1.§521423126652312678123423632234§);
         this.§521423114862311499123423632234§.§521423119942312007123423632234§(param1.§5214233079233092123423632234§.data);
         this.§521423103092310322123423632234§ = new DataProvider();
         this.§const set continue§.dataProvider = this.§521423103092310322123423632234§;
         this.§try package dynamic§ = param1.§5214231995232008123423632234§;
         this.§use set catch§ = param1.§5214238434238447123423632234§;
         this.§true package import§ = param1.§5214234782234795123423632234§;
         this.§for catch extends§ = param1.§import use do§;
         this.§default finally set§ = param1.§5214237098237111123423632234§;
         this.§5214234140234153123423632234§();
         this.§52142326923282123423632234§();
      }
      
      private function §if package get§(param1:§5214231167231180123423632234§) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.resize(this.§5214236633236646123423632234§.stageWidth / Display.§521423132512313264123423632234§,this.§5214236633236646123423632234§.stageHeight / Display.§521423132512313264123423632234§);
      }
      
      public function §throw for catch§(param1:int) : void
      {
         this.§var package default§.§5214232015232028123423632234§ = param1;
      }
      
      private function §521423121772312190123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.EXIT_FROM_BATTLE"));
      }
      
      public function resize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc5_:int = int(Math.max(970,param1)) / 3;
         var _loc4_:Number = Math.max(param2 - 60,490);
         this.§521423101102310123123423632234§.width = _loc5_;
         this.§521423101102310123123423632234§.height = _loc4_;
         this.x = _loc5_ * 2;
         this.y = 60;
         this.§521423114862311499123423632234§.width = _loc5_ - 22;
         this.§521423114862311499123423632234§.height = int(_loc4_ * 0.4);
         this.§521423114862311499123423632234§.y = 11;
         this.§521423114862311499123423632234§.x = 11;
         this.§521423552368123423632234§.width = _loc5_ - 22;
         this.§521423552368123423632234§.height = _loc4_ - this.§521423114862311499123423632234§.height - 80;
         this.§521423552368123423632234§.x = 11;
         this.§521423552368123423632234§.y = this.§521423114862311499123423632234§.height + 14;
         this.§const set continue§.setSize(this.§521423552368123423632234§.width - (this.§const set continue§.maxVerticalScrollPosition > 0 ? 1 : 4),this.§521423552368123423632234§.height - 8);
         this.§const set continue§.x = this.§521423552368123423632234§.x + 4;
         this.§const set continue§.y = this.§521423552368123423632234§.y + 4;
         this.§var package default§.width = 130;
         this.§var package default§.x = _loc5_ - this.§var package default§.width - 11;
         this.§var package default§.y = _loc4_ - 61;
         this.§521423126902312703123423632234§.width = 130;
         this.§521423126902312703123423632234§.x = _loc5_ - this.§521423126902312703123423632234§.width - 11;
         this.§521423126902312703123423632234§.y = _loc4_ - 61;
         this.§class switch while§.width = 130;
         this.§class switch while§.x = _loc5_ - this.§class switch while§.width - 11;
         this.§class switch while§.y = _loc4_ - 61;
         this.§52142331823331123423632234§();
         if(param3)
         {
            this.§implements const for§();
         }
         else
         {
            this.§521423103092310322123423632234§.invalidate();
         }
      }
      
      public function show() : void
      {
         if(!this.§catch switch function§.contains(this))
         {
            §return set get§.setCurrentSelectionBattle(this.§use set catch§,this.§true package import§,this.§for catch extends§);
            this.setEvents();
            this.§catch switch function§.addChild(this);
            this.§52142326923282123423632234§();
         }
      }
      
      public function §5214239723110123423632234§() : void
      {
         this.§521423126902312703123423632234§.visible = false;
         this.§class switch while§.visible = false;
         this.§var package default§.visible = false;
         if(§return set get§.hasCurrentBattleId())
         {
            if(§return set get§.currentBattleId == this.§use set catch§)
            {
               this.§class switch while§.visible = true;
            }
            else
            {
               this.§521423126902312703123423632234§.visible = true;
            }
         }
         else
         {
            this.§var package default§.visible = true;
         }
         if(§return set get§.isSpectatorMode())
         {
            this.§521423114862311499123423632234§.§5214237098237111123423632234§ = §return set get§.currentBattleId != this.§use set catch§;
         }
         else
         {
            this.§521423114862311499123423632234§.§5214237098237111123423632234§ = this.§default finally set§;
         }
         this.§52142331823331123423632234§();
      }
      
      public function §while switch set§() : void
      {
         mouseEnabled = true;
         mouseChildren = true;
      }
      
      private function removeEvents() : void
      {
         this.§5214236633236646123423632234§.removeEventListener("resize",this.§52142326923282123423632234§);
         this.§var package default§.removeEventListener("click",this.§for use switch§);
         this.§521423126902312703123423632234§.removeEventListener("click",this.§521423121772312190123423632234§);
         this.§class switch while§.removeEventListener("click",this.§set set continue§);
         this.§521423114862311499123423632234§.removeEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
      }
      
      public function §52142346423477123423632234§(param1:String = null, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Object = null;
         _loc5_ = {};
         _loc5_.id = param1;
         _loc5_.style = "green";
         _loc5_.noNameText = this.§if switch set§.§5214237496237509123423632234§;
         _loc5_.suspicious = param3;
         _loc5_.kills = param2;
         var _loc4_:int = param1 == null ? -1 : this.§5214235186235199123423632234§(param1);
         if(_loc4_ < 0)
         {
            this.§521423103092310322123423632234§.addItem(_loc5_);
         }
         else
         {
            this.§521423103092310322123423632234§.replaceItemAt(_loc5_,_loc4_);
         }
         this.§521423103092310322123423632234§.sortOn(["kills","id"],[2 | 0x10,2 | 0x10]);
         if(this.§521423103092310322123423632234§.length > this.§try package dynamic§)
         {
            this.§521423103092310322123423632234§.removeItemAt(this.§521423103092310322123423632234§.length - 1);
         }
         this.§implements const for§(500);
      }
      
      public function §521423119942312007123423632234§(param1:BitmapData) : void
      {
         this.§521423114862311499123423632234§.§521423119942312007123423632234§(param1);
      }
      
      public function §default catch super§(param1:String) : void
      {
         var _loc2_:int = this.§5214235186235199123423632234§(param1);
         if(_loc2_ >= 0)
         {
            this.§521423103092310322123423632234§.removeItemAt(_loc2_);
            this.§52142346423477123423632234§();
         }
         this.§implements const for§(500);
      }
      
      public function §true package final§() : void
      {
         if(!§continue for final§.inBattle())
         {
            §return set get§.resetCurrentSelectionBattleId();
         }
         this.removeEvents();
         removeDisplayObject(this);
         §521423124592312472123423632234§.setBattleStartButtonTargetPoint(new Point());
      }
      
      protected function init() : void
      {
         this.§521423101102310123123423632234§ = new §native for dynamic§();
         this.§521423101102310123123423632234§.§extends package var§ = this.§if switch set§.§extends package var§;
         this.§521423101102310123123423632234§.§extends catch default§ = §native set dynamic§.§class false§;
         addChild(this.§521423101102310123123423632234§);
         this.§521423114862311499123423632234§ = new §5214234809234822123423632234§();
         addChild(this.§521423114862311499123423632234§);
         this.§521423552368123423632234§ = new §include return§(100,100,4278985229);
         this.§521423552368123423632234§.§5214238301238314123423632234§ = true;
         addChild(this.§521423552368123423632234§);
         this.§const set continue§ = new List();
         this.§const set continue§.rowHeight = 20;
         this.§const set continue§.setStyle("cellRenderer",§static default§);
         this.§const set continue§.focusEnabled = false;
         addChild(this.§const set continue§);
         ScrollStyleUtils.setGreenStyle(this.§const set continue§);
         this.§var package default§ = new §5214233743233756123423632234§();
         this.§var package default§.label = this.§if switch set§.§5214238402238415123423632234§;
         this.§var package default§.icon = new §null while§().bitmapData;
         addChild(this.§var package default§);
         this.§521423126902312703123423632234§ = new §5214233743233756123423632234§();
         this.§521423126902312703123423632234§.label = this.§if switch set§.§5214235119235132123423632234§;
         addChild(this.§521423126902312703123423632234§);
         this.§class switch while§ = new §5214233743233756123423632234§();
         this.§class switch while§.label = this.§if switch set§.§switch for while§;
         addChild(this.§class switch while§);
         this.§52142326923282123423632234§();
      }
      
      public function §throw use final§() : void
      {
         this.§var package default§.enabled = true;
      }
      
      private function §set set continue§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.RETURN_TO_BATTLE"));
      }
      
      public function §5214234140234153123423632234§() : void
      {
         this.§521423103092310322123423632234§.removeAll();
         var _loc1_:int = 0;
         while(_loc1_ < this.§try package dynamic§)
         {
            this.§52142346423477123423632234§();
            _loc1_++;
         }
      }
      
      private function §for use switch§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.ENTER_DM"));
      }
      
      public function §default switch each§() : void
      {
      }
      
      private function setEvents() : void
      {
         this.§5214236633236646123423632234§.addEventListener("resize",this.§52142326923282123423632234§);
         this.§var package default§.addEventListener("click",this.§for use switch§);
         this.§521423126902312703123423632234§.addEventListener("click",this.§521423121772312190123423632234§);
         this.§class switch while§.addEventListener("click",this.§set set continue§);
         this.§521423114862311499123423632234§.addEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
      }
      
      private function §else finally for§() : void
      {
         this.resize(this.§5214236633236646123423632234§.stageWidth / Display.§521423132512313264123423632234§,this.§5214236633236646123423632234§.stageHeight / Display.§521423132512313264123423632234§,false);
      }
      
      public function §for var var§() : void
      {
      }
   }
}

