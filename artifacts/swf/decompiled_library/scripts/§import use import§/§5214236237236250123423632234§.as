package §import use import§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.achievement.IAchievementService;
   import §extends var import§.§5214231658231671123423632234§;
   import §final for if§.§5214231167231180123423632234§;
   import §final for if§.§5214234809234822123423632234§;
   import §final for if§.§5214235174235187123423632234§;
   import §final for if§.§static default§;
   import fl.controls.List;
   import fl.data.DataProvider;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §get const continue§.§5214233743233756123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.ScrollStyleUtils;
   
   public class §5214236237236250123423632234§ extends Sprite implements §5214236411236424123423632234§
   {
      
      public static var §521423124592312472123423632234§:IAchievementService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private static const §521423119192311932123423632234§:int = 970;
      
      private static const §include for while§:int = 490;
      
      private static const §in catch super§:int = 60;
      
      public static const §5214239260239273123423632234§:Boolean = true;
      
      public static const §each set native§:Boolean = false;
      
      private static const §finally use super§:Class = D29f81g_png$538970dc77510a798993ee003ff28360863186290;
      
      private static const §52142314523158123423632234§:Class = b5ga62a_png$e3e492a8eb2d211ea109e3794c1fb2281331568239;
      
      private var §function const use§:IDisplay;
      
      private var §5214236633236646123423632234§:Stage;
      
      private var §if switch set§:§5214235174235187123423632234§;
      
      private var §521423101102310123123423632234§:§native for dynamic§;
      
      private var §521423114862311499123423632234§:§5214234809234822123423632234§;
      
      private var §var for dynamic§:§include return§;
      
      private var §const finally package§:§include return§;
      
      private var §do set override§:§5214233743233756123423632234§;
      
      private var §extends catch break§:§5214233743233756123423632234§;
      
      private var §521423126902312703123423632234§:§5214233743233756123423632234§;
      
      private var §class switch while§:§5214233743233756123423632234§;
      
      private var §5214234289234302123423632234§:List;
      
      private var §521423129442312957123423632234§:List;
      
      private var §default for static§:§5214231141231154123423632234§;
      
      private var §dynamic const var§:§5214231141231154123423632234§;
      
      private var §break use in§:MovieClip;
      
      private var §try package dynamic§:int;
      
      private var §521423114632311476123423632234§:int = 0;
      
      private var §default package§:int = 0;
      
      private var §while each§:uint;
      
      private var §set switch§:DataProvider;
      
      private var §else catch while§:DataProvider;
      
      private var §use set catch§:String;
      
      private var §true package import§:int;
      
      private var §for catch extends§:int;
      
      private var §default finally set§:Boolean;
      
      public function §5214236237236250123423632234§(param1:IDisplay, param2:§5214235174235187123423632234§)
      {
         super();
         this.§function const use§ = param1;
         this.§5214236633236646123423632234§ = param1.stage;
         this.§if switch set§ = param2;
         this.init();
      }
      
      private function §52142331823331123423632234§() : void
      {
         var _loc1_:Point = null;
         if(this.§do set override§.enabled)
         {
            _loc1_ = new Point(this.x + this.§do set override§.x,this.y + this.§do set override§.y);
         }
         else if(this.§extends catch break§)
         {
            _loc1_ = new Point(this.x + this.§extends catch break§.x,this.y + this.§extends catch break§.y);
         }
         else
         {
            _loc1_ = new Point();
         }
         §521423124592312472123423632234§.setBattleStartButtonTargetPoint(_loc1_);
      }
      
      private function removeEvents() : void
      {
         this.§5214236633236646123423632234§.removeEventListener("resize",this.§52142326923282123423632234§);
         this.§do set override§.removeEventListener("click",this.§true const do§);
         this.§extends catch break§.removeEventListener("click",this.§521423130142313027123423632234§);
         this.§521423114862311499123423632234§.removeEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
         this.§521423126902312703123423632234§.removeEventListener("click",this.§521423121772312190123423632234§);
         this.§class switch while§.removeEventListener("click",this.§set set continue§);
      }
      
      public function §catch catch throw§(param1:String) : void
      {
         this.§521423114862311499123423632234§.§catch catch throw§(param1);
      }
      
      private function §if package get§(param1:§5214231167231180123423632234§) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function setEvents() : void
      {
         this.§5214236633236646123423632234§.addEventListener("resize",this.§52142326923282123423632234§);
         this.§do set override§.addEventListener("click",this.§true const do§);
         this.§extends catch break§.addEventListener("click",this.§521423130142313027123423632234§);
         this.§521423114862311499123423632234§.addEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
         this.§521423126902312703123423632234§.addEventListener("click",this.§521423121772312190123423632234§);
         this.§class switch while§.addEventListener("click",this.§set set continue§);
      }
      
      public function §5214231205231218123423632234§(param1:§5214231658231671123423632234§, param2:int) : void
      {
         if(param1 == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            this.§default for static§.text = String(param2);
         }
         if(param1 == §5214231658231671123423632234§.§implements set implements§)
         {
            this.§dynamic const var§.text = String(param2);
         }
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         clearTimeout(this.§while each§);
         this.§521423101102310123123423632234§ = null;
         this.§521423114862311499123423632234§ = null;
         this.§var for dynamic§ = null;
         this.§const finally package§ = null;
         this.§do set override§ = null;
         this.§extends catch break§ = null;
         this.§521423126902312703123423632234§ = null;
         this.§class switch while§ = null;
         this.§5214234289234302123423632234§ = null;
         this.§521423129442312957123423632234§ = null;
         this.§default for static§ = null;
         this.§dynamic const var§ = null;
         this.§break use in§ = null;
         this.§if switch set§ = null;
         this.§5214236633236646123423632234§ = null;
         this.§function const use§ = null;
         this.§use set catch§ = null;
      }
      
      private function §5214235186235199123423632234§(param1:Boolean, param2:Object) : int
      {
         var _loc4_:Object = null;
         var _loc5_:DataProvider = param1 == true ? this.§else catch while§ : this.§set switch§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_.length)
         {
            _loc4_ = _loc5_.getItemAt(_loc3_);
            if(_loc4_.id == param2)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function §521423103412310354123423632234§() : void
      {
         var _loc1_:int = 0;
         this.§else catch while§.removeAll();
         this.§set switch§.removeAll();
         _loc1_ = 0;
         while(_loc1_ < this.§try package dynamic§)
         {
            this.§52142346423477123423632234§(true);
            this.§52142346423477123423632234§(false);
            _loc1_++;
         }
         this.§default package§ = 0;
         this.§521423114632311476123423632234§ = 0;
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
      
      public function §throw for catch§(param1:int) : void
      {
         this.§do set override§.§5214232015232028123423632234§ = param1;
         this.§extends catch break§.§5214232015232028123423632234§ = param1;
      }
      
      private function §521423130142313027123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.ENTER_TEAM",§5214231658231671123423632234§.§implements set implements§));
      }
      
      public function §default catch super§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = this.§5214235186235199123423632234§(true,param1);
         if(_loc2_ >= 0)
         {
            this.§else catch while§.removeItemAt(_loc2_);
            this.§52142346423477123423632234§(true);
         }
         _loc2_ = this.§5214235186235199123423632234§(false,param1);
         if(_loc2_ >= 0)
         {
            this.§set switch§.removeItemAt(_loc2_);
            this.§52142346423477123423632234§(false);
         }
         this.§521423114632311476123423632234§ = 0;
         this.§default package§ = 0;
         _loc3_ = 0;
         while(_loc3_ < this.§else catch while§.length)
         {
            this.§521423114632311476123423632234§ += this.§else catch while§.getItemAt(_loc3_).id != null ? 1 : 0;
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.§set switch§.length)
         {
            this.§default package§ += this.§set switch§.getItemAt(_loc3_).id != null ? 1 : 0;
            _loc3_++;
         }
         this.§implements const for§(500);
      }
      
      public function §true package final§() : void
      {
         if(this.§catch switch function§.contains(this))
         {
            if(!§continue for final§.inBattle())
            {
               §return set get§.resetCurrentSelectionBattleId();
            }
            this.removeEvents();
            this.§catch switch function§.removeChild(this);
            §521423124592312472123423632234§.setBattleStartButtonTargetPoint(new Point());
         }
      }
      
      public function §5214235139235152123423632234§() : void
      {
         this.§do set override§.enabled = true;
      }
      
      public function §final set super§() : void
      {
         this.§extends catch break§.enabled = false;
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.resize(this.§5214236633236646123423632234§.stageWidth / Display.§521423132512313264123423632234§,this.§5214236633236646123423632234§.stageHeight / Display.§521423132512313264123423632234§);
      }
      
      public function §5214239101239114123423632234§() : void
      {
         this.§do set override§.enabled = false;
      }
      
      private function §true const do§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.ENTER_TEAM",§5214231658231671123423632234§.§521423107532310766123423632234§));
      }
      
      public function §while switch set§() : void
      {
         mouseEnabled = true;
         mouseChildren = true;
      }
      
      public function §521423119942312007123423632234§(param1:BitmapData) : void
      {
         this.§521423114862311499123423632234§.§521423119942312007123423632234§(param1);
      }
      
      private function get §catch switch function§() : DisplayObjectContainer
      {
         return this.§function const use§.systemLayer;
      }
      
      private function §521423121772312190123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.EXIT_FROM_BATTLE"));
      }
      
      private function init() : void
      {
         this.§521423101102310123123423632234§ = new §native for dynamic§();
         this.§521423101102310123123423632234§.§extends package var§ = this.§if switch set§.§extends package var§;
         this.§521423101102310123123423632234§.§extends catch default§ = §native set dynamic§.§class false§;
         addChild(this.§521423101102310123123423632234§);
         this.§521423114862311499123423632234§ = new §5214234809234822123423632234§();
         addChild(this.§521423114862311499123423632234§);
         this.§var for dynamic§ = new §include return§(100,100,4284618496);
         this.§var for dynamic§.§5214238301238314123423632234§ = true;
         addChild(this.§var for dynamic§);
         this.§const finally package§ = new §include return§(100,100,4278201433);
         this.§const finally package§.§5214238301238314123423632234§ = true;
         addChild(this.§const finally package§);
         this.§5214234289234302123423632234§ = new List();
         this.§5214234289234302123423632234§.rowHeight = 20;
         this.§5214234289234302123423632234§.setStyle("cellRenderer",§static default§);
         this.§5214234289234302123423632234§.focusEnabled = false;
         addChild(this.§5214234289234302123423632234§);
         this.§521423129442312957123423632234§ = new List();
         this.§521423129442312957123423632234§.rowHeight = 20;
         this.§521423129442312957123423632234§.setStyle("cellRenderer",§static default§);
         this.§521423129442312957123423632234§.focusEnabled = false;
         addChild(this.§521423129442312957123423632234§);
         ScrollStyleUtils.setRedStyle(this.§521423129442312957123423632234§);
         ScrollStyleUtils.setBlueStyle(this.§5214234289234302123423632234§);
         this.§do set override§ = new §5214233743233756123423632234§();
         this.§do set override§.label = this.§if switch set§.§5214238402238415123423632234§;
         this.§do set override§.icon = new §52142314523158123423632234§().bitmapData;
         addChild(this.§do set override§);
         this.§extends catch break§ = new §5214233743233756123423632234§();
         this.§extends catch break§.label = this.§if switch set§.§5214238402238415123423632234§;
         this.§extends catch break§.icon = new §finally use super§().bitmapData;
         addChild(this.§extends catch break§);
         this.§521423126902312703123423632234§ = new §5214233743233756123423632234§();
         this.§521423126902312703123423632234§.label = this.§if switch set§.§5214235119235132123423632234§;
         addChild(this.§521423126902312703123423632234§);
         this.§class switch while§ = new §5214233743233756123423632234§();
         this.§class switch while§.label = this.§if switch set§.§switch for while§;
         addChild(this.§class switch while§);
         this.§break use in§ = new MovieClip();
         addChild(this.§break use in§);
         this.§default for static§ = new §5214231141231154123423632234§();
         this.§default for static§.§521423102842310297123423632234§ = 22;
         this.§default for static§.color = 4284618496;
         this.§default for static§.x = -74;
         this.§default for static§.width = 70;
         this.§default for static§.autoSize = "right";
         this.§break use in§.addChild(this.§default for static§);
         this.§dynamic const var§ = new §5214231141231154123423632234§();
         this.§dynamic const var§.§521423102842310297123423632234§ = 22;
         this.§dynamic const var§.color = 4278201433;
         this.§dynamic const var§.x = 5;
         this.§dynamic const var§.width = 70;
         this.§dynamic const var§.autoSize = "left";
         this.§break use in§.addChild(this.§dynamic const var§);
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.§521423102842310297123423632234§ = 22;
         _loc1_.text = ":";
         _loc1_.x = -4;
         _loc1_.y = -2;
         this.§break use in§.addChild(_loc1_);
         this.§break use in§.filters = [new GlowFilter(13434828,0.5,6 * Display.§521423132512313264123423632234§,6 * Display.§521423132512313264123423632234§)];
         this.§52142326923282123423632234§();
      }
      
      public function §for var var§() : void
      {
         this.§52142326923282123423632234§();
      }
      
      private function §else finally for§() : void
      {
         this.resize(this.§5214236633236646123423632234§.stageWidth / Display.§521423132512313264123423632234§,this.§5214236633236646123423632234§.stageHeight / Display.§521423132512313264123423632234§,false);
      }
      
      public function §override package var§(param1:§function for with§) : void
      {
         this.§521423114862311499123423632234§.§set extends§(param1);
         this.§521423114862311499123423632234§.§5214239964239977123423632234§(param1.§use package static§,param1.§521423126652312678123423632234§);
         this.§521423114862311499123423632234§.§521423119942312007123423632234§(param1.§5214233079233092123423632234§.data);
         this.§else catch while§ = new DataProvider();
         this.§set switch§ = new DataProvider();
         this.§521423129442312957123423632234§.dataProvider = this.§else catch while§;
         this.§5214234289234302123423632234§.dataProvider = this.§set switch§;
         this.§try package dynamic§ = param1.§5214231995232008123423632234§;
         this.§default package§ = 0;
         this.§521423114632311476123423632234§ = 0;
         this.§use set catch§ = param1.§5214238434238447123423632234§;
         this.§true package import§ = param1.§5214234782234795123423632234§;
         this.§for catch extends§ = param1.§import use do§;
         this.§default finally set§ = param1.§5214237098237111123423632234§;
         this.§5214231205231218123423632234§(§5214231658231671123423632234§.§521423107532310766123423632234§,param1.§521423102942310307123423632234§);
         this.§5214231205231218123423632234§(§5214231658231671123423632234§.§implements set implements§,param1.§static var var§);
         this.§521423103412310354123423632234§();
         this.§52142326923282123423632234§();
      }
      
      public function §52142346423477123423632234§(param1:Boolean, param2:Object = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc5_:Object = {};
         var _loc6_:DataProvider = param1 == true ? this.§else catch while§ : this.§set switch§;
         _loc5_.playerName = name;
         _loc5_.style = param1 == true ? "red" : "blue";
         _loc5_.noNameText = this.§if switch set§.§5214237496237509123423632234§;
         _loc5_.suspicious = param4;
         _loc5_.kills = param3;
         _loc5_.id = param2;
         _loc7_ = param2 == null ? -1 : this.§5214235186235199123423632234§(param1,param2);
         if(_loc7_ < 0)
         {
            _loc6_.addItem(_loc5_);
         }
         else
         {
            _loc6_.replaceItemAt(_loc5_,_loc7_);
         }
         this.§521423114632311476123423632234§ = 0;
         this.§default package§ = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§else catch while§.length)
         {
            this.§521423114632311476123423632234§ += this.§else catch while§.getItemAt(_loc8_).id != null ? 1 : 0;
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < this.§set switch§.length)
         {
            this.§default package§ += this.§set switch§.getItemAt(_loc8_).id != null ? 1 : 0;
            _loc8_++;
         }
         this.§else catch while§.sortOn(["kills","id"],[2 | 0x10,2 | 0x10]);
         this.§set switch§.sortOn(["kills","id"],[2 | 0x10,2 | 0x10]);
         if(_loc6_.length > this.§try package dynamic§ && _loc6_.getItemAt(_loc6_.length - 1).id == null)
         {
            _loc6_.removeItemAt(_loc6_.length - 1);
         }
         this.§implements const for§(500);
      }
      
      public function §5214236458236471123423632234§(param1:String) : void
      {
         this.§521423114862311499123423632234§.§5214236458236471123423632234§(param1);
      }
      
      public function §default switch each§() : void
      {
         this.§52142326923282123423632234§();
      }
      
      private function resize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc5_:int = int(Math.max(970,param1)) / 3;
         var _loc4_:Number = Math.max(param2 - 60,490);
         this.§521423101102310123123423632234§.width = _loc5_;
         this.§521423101102310123123423632234§.height = _loc4_;
         this.x = _loc5_ * 2;
         this.y = 60;
         this.§521423114862311499123423632234§.width = _loc5_ - 22;
         this.§521423114862311499123423632234§.height = int(_loc4_ * 0.4);
         this.§521423114862311499123423632234§.x = this.§521423114862311499123423632234§.y = 11;
         this.§var for dynamic§.width = (int(_loc5_ - 25)) / 2;
         this.§var for dynamic§.height = _loc4_ - this.§521423114862311499123423632234§.height - 80;
         this.§var for dynamic§.x = 11;
         this.§var for dynamic§.y = this.§521423114862311499123423632234§.height + 14;
         this.§const finally package§.width = _loc5_ - this.§var for dynamic§.width - 25;
         this.§const finally package§.height = _loc4_ - this.§521423114862311499123423632234§.height - 80;
         this.§const finally package§.x = 14 + this.§var for dynamic§.width;
         this.§const finally package§.y = this.§521423114862311499123423632234§.height + 14;
         this.§521423129442312957123423632234§.x = this.§var for dynamic§.x + 4;
         this.§521423129442312957123423632234§.y = this.§var for dynamic§.y + 4;
         this.§521423129442312957123423632234§.setSize(this.§var for dynamic§.width - (this.§521423129442312957123423632234§.maxVerticalScrollPosition > 0 ? 1 : 4),this.§var for dynamic§.height - 8);
         this.§5214234289234302123423632234§.x = this.§const finally package§.x + 4;
         this.§5214234289234302123423632234§.y = this.§const finally package§.y + 4;
         this.§5214234289234302123423632234§.setSize(this.§const finally package§.width - (this.§5214234289234302123423632234§.maxVerticalScrollPosition > 0 ? 1 : 4),this.§const finally package§.height - 8);
         this.§extends catch break§.width = this.§do set override§.width = Math.min(130,int((_loc5_ - 110) / 2));
         this.§do set override§.x = 11;
         this.§do set override§.y = _loc4_ - 61;
         this.§extends catch break§.x = _loc5_ - this.§extends catch break§.width - 11;
         this.§extends catch break§.y = _loc4_ - 61;
         this.§521423126902312703123423632234§.width = 130;
         this.§521423126902312703123423632234§.x = _loc5_ - this.§521423126902312703123423632234§.width - 11;
         this.§521423126902312703123423632234§.y = _loc4_ - 61;
         this.§class switch while§.width = 130;
         this.§class switch while§.x = _loc5_ - this.§class switch while§.width - 11;
         this.§class switch while§.y = _loc4_ - 61;
         this.§break use in§.x = this.§const finally package§.x - 3;
         this.§break use in§.y = _loc4_ - 51;
         this.§52142331823331123423632234§();
         if(param3)
         {
            this.§implements const for§();
         }
         else
         {
            this.§set switch§.invalidate();
            this.§else catch while§.invalidate();
         }
      }
      
      public function §521423130282313041123423632234§() : void
      {
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      public function §5214239723110123423632234§() : void
      {
         this.§521423126902312703123423632234§.visible = false;
         this.§class switch while§.visible = false;
         this.§extends catch break§.visible = false;
         this.§do set override§.visible = false;
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
            this.§extends catch break§.visible = true;
            this.§do set override§.visible = true;
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
      
      private function §set set continue§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.RETURN_TO_BATTLE"));
      }
      
      public function §5214232483232496123423632234§() : void
      {
         this.§extends catch break§.enabled = true;
      }
      
      private function §implements const for§(param1:int = 200) : void
      {
         clearTimeout(this.§while each§);
         this.§while each§ = setTimeout(this.§else finally for§,param1);
      }
   }
}

