package alternativa.tanks.gui
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §521423133832313396123423632234§.§class const package§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.§5214234569234582123423632234§;
   import fl.controls.LabelButton;
   import fl.controls.ScrollBar;
   import fl.events.ScrollEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import §include else§.§true for switch§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   import §try const default§.§case package implements§;
   import utils.ScrollStyleUtils;
   
   public class LobbyChat extends Sprite implements §5214234569234582123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      private static const §521423131822313195123423632234§:String = "lobbyChatLastMessageKey";
      
      private static const §for use throw§:Number = 7;
      
      private static const §5214238089238102123423632234§:uint = 10987948;
      
      private static const §5214236820236833123423632234§:int = 2000;
      
      private static var §5214235791235804123423632234§:SharedObject;
      
      private var §catch catch extends§:§native for dynamic§ = new §native for dynamic§();
      
      private var §return const set§:§include return§ = new §include return§(100,100,4278985229);
      
      private var §5214237506237519123423632234§:§5214237555237568123423632234§ = new §5214237555237568123423632234§();
      
      private var §5214237335237348123423632234§:TextField;
      
      private var §5214239233239246123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §finally break§:Boolean;
      
      private var §5214233792233805123423632234§:Boolean = false;
      
      private var §if const false§:Boolean = true;
      
      private var §function use§:String;
      
      private var §5214231105231118123423632234§:String;
      
      private var §const use switch§:Timer;
      
      private var §521423120182312031123423632234§:Boolean = false;
      
      public var §super set continue§:ChatOutput = new ChatOutput();
      
      public var §dynamic var extends§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §continue set dynamic§:String;
      
      private var §break set each§:String = "";
      
      public var §5214237668237681123423632234§:§class const package§ = new §class const package§(§5214231668231681123423632234§.§dynamic use false§,"",0,"System",null);
      
      public var §else use default§:§class const package§ = new §class const package§(§5214231668231681123423632234§.§dynamic use false§,"",0,"",null);
      
      private var §catch finally for§:Timer;
      
      private var §521423109812310994123423632234§:Number = 0;
      
      private var §521423133672313380123423632234§:int;
      
      private var §5214239467239480123423632234§:int;
      
      private var §with use each§:TextFormat;
      
      private var §5214233016233029123423632234§:TextFormat;
      
      private var §5214231056231069123423632234§:Boolean;
      
      public function LobbyChat()
      {
         super();
         addEventListener("addedToStage",this.configUI);
         addEventListener("addedToStage",this.f3a0218);
         addEventListener("removedFromStage",this.e3e7c912);
      }
      
      public static function blocked(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
            §5214235791235804123423632234§.data.blocklist = _loc2_;
            §5214235791235804123423632234§.flush();
         }
         _loc3_ = _loc2_.indexOf(param1);
         return _loc3_ > -1;
      }
      
      public static function unblockUser(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
         }
         var _loc3_:int = _loc2_.indexOf(param1);
         if(_loc3_ > -1)
         {
            _loc2_.removeAt(_loc3_);
         }
         §5214235791235804123423632234§.data.blocklist = _loc2_;
         §5214235791235804123423632234§.flush();
         return true;
      }
      
      public static function get blockList() : Array
      {
         var _loc1_:Array = null;
         if(§5214235791235804123423632234§ == null)
         {
            §5214235791235804123423632234§ = §if catch include§.getStorage();
         }
         _loc1_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc1_ == null)
         {
            _loc1_ = [];
         }
         return _loc1_;
      }
      
      public static function unblockall() : Boolean
      {
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         §5214235791235804123423632234§.data.blocklist = [];
         §5214235791235804123423632234§.flush();
         return true;
      }
      
      public static function blockUser(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         §5214235791235804123423632234§ = §if catch include§.getStorage();
         _loc2_ = §5214235791235804123423632234§.data.blocklist;
         if(_loc2_ == null)
         {
            _loc2_ = [];
         }
         var _loc3_:int = _loc2_.indexOf(param1);
         if(_loc3_ > -1)
         {
            _loc2_.removeAt(_loc3_);
         }
         _loc2_.push(param1);
         §5214235791235804123423632234§.data.blocklist = _loc2_;
         §5214235791235804123423632234§.flush();
         return true;
      }
      
      private function a20f7b9c(param1:ScrollEvent) : void
      {
         this.§super set continue§.§use catch§ = 18;
         this.§super set continue§.setSize(this.§return const set§.width + 1,this.§return const set§.height - 8);
         this.§super set continue§.removeEventListener("scroll",this.a20f7b9c);
         this.§super set continue§.§set const do§ = false;
      }
      
      private function f42d1996(param1:Event) : void
      {
         var _loc2_:Sprite = null;
         var _loc4_:Sprite = null;
         var _loc5_:ScrollBar = this.§super set continue§.verticalScrollBar;
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_.numChildren)
         {
            _loc2_ = Sprite(_loc5_.getChildAt(_loc3_));
            if(_loc2_.hitArea != null)
            {
               _loc4_ = _loc2_.hitArea;
               _loc4_.graphics.clear();
            }
            else
            {
               _loc4_ = new Sprite();
               _loc4_.mouseEnabled = false;
               _loc2_.hitArea = _loc4_;
               this.§super set continue§.addChild(_loc4_);
            }
            _loc4_.graphics.beginFill(0,0);
            if(_loc2_ is LabelButton)
            {
               _loc4_.graphics.drawRect(_loc5_.x - 7,_loc2_.y - 14,_loc2_.width + 7,_loc2_.height + 28);
            }
            else
            {
               _loc4_.graphics.drawRect(_loc5_.x - 7,_loc2_.y,_loc2_.width + 7,_loc2_.height);
            }
            _loc4_.graphics.endFill();
            _loc3_++;
         }
      }
      
      public function cleanOutUsersMessages(param1:String) : void
      {
         this.§super set continue§.cleanOutUsersMessages(param1);
      }
      
      private function a6d1066b(param1:§case package implements§) : void
      {
         this.d71b2042(param1.uid);
      }
      
      private function sendMessage(param1:MouseEvent) : void
      {
         this.send();
      }
      
      public function addMessage(param1:§class const package§, param2:§class const package§, param3:String, param4:Boolean = false, param5:Boolean = false) : void
      {
         if(param1 == null)
         {
            param1 = this.§else use default§;
         }
         if(param2 == null)
         {
            param2 = this.§else use default§;
         }
         if(!blocked(param1.uid))
         {
            this.§super set continue§.addLine(param1,param2,param3,param4,param5);
            if(this.§finally break§)
            {
               this.§super set continue§.selectUser(this.§function use§,true);
            }
            if(param2.uid == this.§continue set dynamic§)
            {
               this.§break set each§ = param1.uid;
            }
         }
      }
      
      public function set selfName(param1:String) : void
      {
         this.§continue set dynamic§ = param1;
         this.§super set continue§.selfName = this.§continue set dynamic§;
      }
      
      public function setShowChat(param1:Boolean) : void
      {
         this.§super set continue§.visible = param1;
         if(!param1)
         {
            this.§5214237506237519123423632234§.value = "";
         }
         this.§5214233792233805123423632234§ = param1;
         this.a1d6c9e8();
         this.e6a85793();
      }
      
      public function set lastMessageTime(param1:Number) : void
      {
         this.§521423109812310994123423632234§ = param1;
         §if catch include§.getStorage().data["lobbyChatLastMessageKey"] = param1;
         this.d55fa7de();
      }
      
      private function e49e9694(param1:ContextMenuServiceEvent) : void
      {
         this.d71b2042(param1.uid);
      }
      
      public function hide() : void
      {
         if(this.§const use switch§ != null)
         {
            this.§const use switch§.stop();
            this.§const use switch§.removeEventListener("timer",this.b4ea43fa);
         }
         if(this.§5214237335237348123423632234§ != null)
         {
            this.§5214237335237348123423632234§.removeEventListener("keyDown",this.c16519bc);
            this.§5214237335237348123423632234§.removeEventListener("keyUp",this.b47ae6b2);
            this.§5214237335237348123423632234§.removeEventListener("click",this.c36a1420);
         }
         if(this.§dynamic var extends§ != null)
         {
            this.§dynamic var extends§.removeEventListener("click",this.sendMessage);
         }
         if(this.§super set continue§ != null)
         {
            this.§super set continue§.verticalScrollBar.removeEventListener("enterFrame",this.f42d1996);
            this.§super set continue§.removeEventListener("scroll",this.a20f7b9c);
            this.§super set continue§.removeEventListener("UserLabelEvent.CLICK_WITH_CTRL",this.a6d1066b);
         }
         if(this.§5214237506237519123423632234§ != null)
         {
            this.§5214237506237519123423632234§.removeEventListener("LoginChanged",this.c3c2f8b7);
         }
         if(this.§catch finally for§)
         {
            this.§catch finally for§.stop();
            this.§catch finally for§.removeEventListener("timer",this.e42a125f);
         }
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.WRITE_IN_CHAT",this.e49e9694);
      }
      
      public function clearAll() : void
      {
         this.§super set continue§.clear();
      }
      
      public function set typingAntifloodEnabled(param1:Boolean) : *
      {
         this.§5214231056231069123423632234§ = param1;
      }
      
      private function c16519bc(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            this.send();
         }
         this.§521423120182312031123423632234§ = param1.ctrlKey && param1.shiftKey;
      }
      
      public function updateTypingAntifloodParams(param1:int, param2:int) : void
      {
         this.§521423133672313380123423632234§ = param1;
         this.§5214239467239480123423632234§ = param2;
         this.d55fa7de();
      }
      
      private function b66cd001(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^\s*\//i;
         var _loc3_:int = param1.search(_loc2_);
         return _loc3_ > -1;
      }
      
      private function e3616931(param1:Number) : String
      {
         var _loc3_:String = null;
         var _loc2_:Number = int(param1 / 1000);
         var _loc4_:Number = int(_loc2_ / 60);
         var _loc5_:Number = _loc2_ % 60;
         _loc3_ = _loc5_.toString();
         if(_loc3_.length < 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc4_.toString() + ":" + _loc3_;
      }
      
      private function b4ea43fa(param1:TimerEvent = null) : void
      {
         this.§super set continue§.setSize(this.§return const set§.width + 1,this.§return const set§.height - 8);
         this.§const use switch§.removeEventListener("timer",this.b4ea43fa);
         this.§const use switch§ = null;
      }
      
      private function d55fa7de() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         if(!this.§5214231056231069123423632234§)
         {
            return;
         }
         var _loc7_:String = this.§5214237335237348123423632234§.text;
         var _loc8_:int = _loc7_.length * this.§521423133672313380123423632234§ + this.§5214239467239480123423632234§;
         var _loc1_:Number = new Date().getTime();
         var _loc5_:Number = this.§521423109812310994123423632234§ + _loc8_;
         if(!this.b66cd001(_loc7_) && _loc1_ < _loc5_)
         {
            _loc2_ = _loc5_ - _loc1_;
            this.§dynamic var extends§.label = this.e3616931(_loc2_);
            this.§dynamic var extends§.enable = false;
            _loc3_ = _loc2_ / this.§521423133672313380123423632234§;
            if(_loc3_ >= _loc7_.length)
            {
               this.§5214237335237348123423632234§.setTextFormat(this.§with use each§);
            }
            else if(_loc3_ != 0)
            {
               this.§5214237335237348123423632234§.setTextFormat(this.§5214233016233029123423632234§);
               _loc6_ = _loc7_.length - _loc3_;
               _loc4_ = _loc7_.length;
               if(_loc6_ >= 0 && _loc4_ >= _loc6_)
               {
                  this.§5214237335237348123423632234§.setTextFormat(this.§with use each§,_loc6_,_loc4_);
               }
            }
            this.§if const false§ = false;
         }
         else
         {
            this.§5214237335237348123423632234§.setTextFormat(this.§5214233016233029123423632234§);
            this.§if const false§ = true;
         }
         this.a1d6c9e8();
      }
      
      private function e3e7c912(param1:Event) : void
      {
         stage.removeEventListener("resize",this.onResize);
      }
      
      private function e42a125f(param1:TimerEvent) : void
      {
         this.d55fa7de();
      }
      
      public function configUI(param1:Event) : void
      {
         removeEventListener("addedToStage",this.configUI);
         this.§5214237335237348123423632234§ = this.§5214237506237519123423632234§.§52142339223405123423632234§;
         this.§5214237335237348123423632234§.maxChars = 299;
         addChild(this.§catch catch extends§);
         addChild(this.§return const set§);
         this.§return const set§.y = 11;
         this.§return const set§.x = 11;
         this.§return const set§.§5214238301238314123423632234§ = true;
         this.§catch catch extends§.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.§catch catch extends§.§extends catch default§ = §native set dynamic§.§with class§;
         this.§5214237335237348123423632234§.addEventListener("keyDown",this.c16519bc);
         this.§5214237335237348123423632234§.addEventListener("keyUp",this.b47ae6b2);
         this.§5214237335237348123423632234§.addEventListener("click",this.c36a1420);
         this.§dynamic var extends§.addEventListener("click",this.sendMessage);
         addChild(this.§5214237506237519123423632234§);
         addChild(this.§5214239233239246123423632234§);
         this.§5214239233239246123423632234§.mouseEnabled = false;
         this.§5214239233239246123423632234§.color = 10987948;
         this.§5214239233239246123423632234§.text = §5214236363236376123423632234§.getText("STRING_DISABLED_CHAT_LABEL_TEXT");
         addChild(this.§super set continue§);
         this.§super set continue§.move(15,15);
         this.a7424275();
         this.§super set continue§.addEventListener("UserLabelEvent.CLICK_WITH_CTRL",this.a6d1066b);
         this.§super set continue§.addEventListener("scroll",this.a20f7b9c);
         this.§super set continue§.verticalScrollBar.addEventListener("enterFrame",this.f42d1996);
         this.§5214237506237519123423632234§.addEventListener("LoginChanged",this.c3c2f8b7);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.WRITE_IN_CHAT",this.e49e9694);
         this.§dynamic var extends§.x = 272;
         this.§dynamic var extends§.width = 80;
         this.§dynamic var extends§.label = §5214236363236376123423632234§.getText("CHAT_PANEL_BUTTON_SEND");
         addChild(this.§dynamic var extends§);
         this.§catch finally for§ = new Timer(2000);
         this.§catch finally for§.addEventListener("timer",this.e42a125f);
         this.§catch finally for§.start();
         this.§5214237335237348123423632234§.gridFitType = "subpixel";
         this.§with use each§ = new TextFormat();
         this.§with use each§.color = 16728642;
         this.§5214233016233029123423632234§ = new TextFormat();
         this.§5214233016233029123423632234§.color = 16777215;
         if(§if catch include§.getStorage().data["lobbyChatLastMessageKey"])
         {
            this.§521423109812310994123423632234§ = §if catch include§.getStorage().data["lobbyChatLastMessageKey"];
         }
         else
         {
            this.§521423109812310994123423632234§ = 0;
         }
      }
      
      private function a7424275() : void
      {
         ScrollStyleUtils.setGreenStyle(this.§super set continue§);
      }
      
      private function send() : void
      {
         var _loc11_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc12_:String = null;
         var _loc13_:Array = null;
         var _loc10_:int = 0;
         if(!this.§if const false§)
         {
            return;
         }
         var _loc8_:String = _loc11_ = this.§5214237335237348123423632234§.text;
         var _loc9_:RegExp = /(^(\/block|\/unblock) ([a-z0-9](([\.\-\w](?!(-|_|\.){2,}))*[a-z0-9])))$/i;
         var _loc7_:RegExp = /^(\/unblockall|\/blocklist)$/;
         var _loc2_:RegExp = /^(\/showip|\/hideip)$/;
         var _loc1_:int = _loc8_.search(_loc9_);
         var _loc4_:int = _loc8_.search(_loc7_);
         var _loc3_:int = _loc8_.search(_loc2_);
         if(_loc1_ > -1)
         {
            _loc5_ = _loc8_.replace(_loc9_,"$2");
            _loc6_ = _loc8_.replace(_loc9_,"$3");
            if(_loc5_ == "/block")
            {
               LobbyChat.blockUser(_loc6_);
               _loc12_ = §5214236363236376123423632234§.getText("CHAT_PANEL_COMMAND_BLOCK",_loc6_);
            }
            else
            {
               LobbyChat.unblockUser(_loc6_);
               _loc12_ = §5214236363236376123423632234§.getText("CHAT_PANEL_COMMAND_UNBLOCK",_loc6_);
            }
            this.addMessage(this.§5214237668237681123423632234§,this.§else use default§,_loc12_,true);
            this.§5214237335237348123423632234§.text = _loc5_ + " ";
            return;
         }
         if(_loc4_ > -1)
         {
            _loc5_ = _loc8_.replace(_loc9_,"$1");
            if(_loc5_ == "/unblockall")
            {
               LobbyChat.unblockall();
               _loc12_ = §5214236363236376123423632234§.getText("CHAT_PANEL_COMMAND_UNBLOCK_ALL");
               this.addMessage(this.§5214237668237681123423632234§,this.§else use default§,_loc12_);
            }
            else
            {
               var _loc14_:LobbyChat = LobbyChat;
               var _loc15_:Array = null;
               if(alternativa.tanks.gui.LobbyChat.§5214235791235804123423632234§ == null)
               {
                  alternativa.tanks.gui.LobbyChat.§5214235791235804123423632234§ = alternativa.tanks.gui.LobbyChat.§if catch include§.getStorage();
               }
               _loc15_ = alternativa.tanks.gui.LobbyChat.§5214235791235804123423632234§.data.blocklist;
               if(_loc15_ == null)
               {
                  _loc15_ = [];
               }
               _loc13_ = _loc15_;
               if(_loc13_.length > 0)
               {
                  _loc12_ = §5214236363236376123423632234§.getText("CHAT_PANEL_COMMAND_BLOCK_LIST",true);
                  _loc11_ = "\n" + _loc12_ + "\n—————————————\n";
                  while(_loc10_ < _loc13_.length)
                  {
                     _loc11_ += String(_loc10_ + 1) + ": " + _loc13_[_loc10_] + "\n";
                     _loc10_++;
                  }
               }
               else
               {
                  _loc11_ = "...";
               }
               this.addMessage(this.§5214237668237681123423632234§,this.§else use default§,_loc11_,true);
            }
            this.§5214237335237348123423632234§.text = "";
            return;
         }
         if(_loc3_ > -1)
         {
            _loc5_ = _loc8_.replace(_loc2_,"$1");
            if(_loc5_ == "/showip")
            {
               this.§super set continue§.showIPMode = true;
               this.addMessage(this.§5214237668237681123423632234§,this.§else use default§,"show IP",true);
            }
            else
            {
               this.§super set continue§.showIPMode = false;
               this.addMessage(this.§5214237668237681123423632234§,this.§else use default§,"hide IP",true);
            }
            return;
         }
         if(_loc11_ != "")
         {
            if(this.§finally break§)
            {
               _loc11_ = _loc11_.slice(_loc11_.indexOf(": ") + 2,_loc11_.length);
               this.§5214237335237348123423632234§.text = _loc11_;
               dispatchEvent(new §true for switch§(this.§function use§));
               this.§5214237335237348123423632234§.text = this.§function use§ + ": ";
            }
            else
            {
               dispatchEvent(new §true for switch§());
               this.§5214237335237348123423632234§.text = "";
            }
            this.§5214237335237348123423632234§.setSelection(0,0);
            this.§5214237335237348123423632234§.setSelection(this.§5214237335237348123423632234§.length,this.§5214237335237348123423632234§.length);
            this.§super set continue§.scrollDown();
         }
      }
      
      private function c36a1420(param1:MouseEvent) : void
      {
         if(stage.focus == null)
         {
            stage.focus = this.§5214237335237348123423632234§;
         }
      }
      
      private function f3a0218(param1:Event) : void
      {
         stage.addEventListener("resize",this.onResize);
         this.onResize(null);
      }
      
      private function a1d6c9e8() : void
      {
         if(this.§5214233792233805123423632234§ && !this.§if const false§)
         {
            this.§dynamic var extends§.enable = false;
         }
         else
         {
            this.§dynamic var extends§.label = §5214236363236376123423632234§.getText("CHAT_PANEL_BUTTON_SEND");
            this.§dynamic var extends§.enable = this.§5214233792233805123423632234§;
         }
      }
      
      private function d71b2042(param1:String) : void
      {
         this.§super set continue§.selectUser(param1);
         var _loc2_:String = this.§5214237335237348123423632234§.text;
         if(_loc2_.indexOf(": ") > 0)
         {
            _loc2_ = param1 + ": " + _loc2_.slice(_loc2_.indexOf(": ") + 2,_loc2_.length);
         }
         else
         {
            _loc2_ = param1 + ": " + _loc2_.slice(_loc2_.indexOf(": ") + 1,_loc2_.length);
         }
         this.§5214237335237348123423632234§.text = _loc2_;
         stage.focus = this.§5214237335237348123423632234§;
         this.§5214237335237348123423632234§.setSelection(this.§5214237335237348123423632234§.length,this.§5214237335237348123423632234§.length);
         this.§finally break§ = true;
         this.§function use§ = param1;
         if(this.§521423120182312031123423632234§)
         {
            _loc2_ = "/ban " + param1 + " ";
            this.§5214237335237348123423632234§.text = _loc2_;
            stage.focus = this.§5214237335237348123423632234§;
            this.§5214237335237348123423632234§.setSelection(this.§5214237335237348123423632234§.length,this.§5214237335237348123423632234§.length);
            this.§finally break§ = true;
            this.§function use§ = param1;
         }
         this.d55fa7de();
      }
      
      public function get inputText() : String
      {
         return this.§5214237335237348123423632234§.text;
      }
      
      private function c3c2f8b7(param1:Event) : void
      {
         var _loc2_:RegExp = /^[a-z0-9](([\.\-\w](?!(-|_|\.){2,}))*[a-z0-9])\: /i;
         var _loc3_:int = this.§5214237335237348123423632234§.text.search(_loc2_);
         var _loc4_:String = this.§5214237335237348123423632234§.text.slice(0,this.§5214237335237348123423632234§.text.indexOf(": "));
         if(_loc3_ == 0)
         {
            if(_loc4_.toLocaleLowerCase() == "re" && this.§break set each§ != "")
            {
               _loc4_ = this.§break set each§;
               this.§5214237335237348123423632234§.text = _loc4_ + ": ";
               this.§5214237335237348123423632234§.setSelection(this.§5214237335237348123423632234§.length,this.§5214237335237348123423632234§.length);
            }
            else if(_loc4_.toLocaleLowerCase() == "re" && this.§break set each§ == "")
            {
               this.§5214237335237348123423632234§.text = "";
            }
            if(!this.§finally break§ || _loc4_ != this.§5214231105231118123423632234§)
            {
               this.§5214231105231118123423632234§ = this.§function use§ = _loc4_;
               this.§finally break§ = true;
               this.§super set continue§.selectUser(this.§function use§);
            }
         }
         else if(this.§finally break§)
         {
            this.§finally break§ = false;
            this.§super set continue§.selectUser("");
         }
         this.d55fa7de();
      }
      
      private function e6a85793() : void
      {
         if(this.§5214233792233805123423632234§ && !this.§if const false§)
         {
            this.§5214239233239246123423632234§.text = §5214236363236376123423632234§.getText("STRING_TYPING_SPEED_BANNED");
            this.§5214239233239246123423632234§.visible = true;
            this.§5214237506237519123423632234§.enable = false;
         }
         else
         {
            this.§5214239233239246123423632234§.text = §5214236363236376123423632234§.getText("STRING_DISABLED_CHAT_LABEL_TEXT");
            this.§5214237506237519123423632234§.enable = this.§5214233792233805123423632234§;
            this.§5214239233239246123423632234§.visible = !this.§5214233792233805123423632234§;
         }
      }
      
      private function onResize(param1:Event) : void
      {
         var _loc2_:int = Math.max(970,stage.stageWidth / Display.§521423132512313264123423632234§);
         this.§catch catch extends§.width = _loc2_ / 3;
         this.§catch catch extends§.height = Math.max(stage.stageHeight / Display.§521423132512313264123423632234§ - 60,490);
         x = 0;
         y = 60;
         this.§return const set§.width = this.§catch catch extends§.width - 22;
         this.§return const set§.height = this.§catch catch extends§.height - 58;
         this.§dynamic var extends§.y = this.§catch catch extends§.height - 42;
         this.§dynamic var extends§.x = this.§catch catch extends§.width - this.§dynamic var extends§.width - 11;
         this.§5214237506237519123423632234§.x = 11;
         this.§5214237506237519123423632234§.y = this.§catch catch extends§.height - 42;
         this.§5214237506237519123423632234§.width = this.§dynamic var extends§.x - 16;
         this.§5214239233239246123423632234§.x = this.§5214237506237519123423632234§.x + 3;
         this.§5214239233239246123423632234§.y = this.§5214237506237519123423632234§.y + 7;
         this.§super set continue§.setSize(this.§return const set§.width + 1,this.§return const set§.height - 8);
         if(this.§const use switch§ == null)
         {
            this.§const use switch§ = new Timer(200,1);
            this.§const use switch§.addEventListener("timer",this.b4ea43fa);
         }
         this.§const use switch§.reset();
         this.§const use switch§.start();
      }
      
      private function b47ae6b2(param1:KeyboardEvent) : void
      {
         this.§521423120182312031123423632234§ = false;
      }
   }
}

