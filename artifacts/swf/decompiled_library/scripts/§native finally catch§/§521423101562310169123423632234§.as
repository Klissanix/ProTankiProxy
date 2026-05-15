package §native finally catch§
{
   import §5214233083233096123423632234§.BattleListItemParams;
   import §5214233083233096123423632234§.§break const return§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import §5214235157235170123423632234§.§static use each§;
   import §5214236785236798123423632234§.GlowEffect;
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.gui.CrystalLabel;
   import §class use try§.§dynamic for false§;
   import §const use implements§.§dynamic include§;
   import §const use implements§.§var use native§;
   import fl.controls.LabelButton;
   import fl.controls.List;
   import fl.controls.ScrollBar;
   import fl.data.DataProvider;
   import fl.events.ListEvent;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §get const continue§.§use set default§;
   import §package catch while§.AbrisSolo;
   import §package catch while§.AbrisTeam;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import utils.ScrollStyleUtils;
   import §while switch false§.§5214239351239364123423632234§;
   
   public class §521423101562310169123423632234§ extends Sprite implements §static use do§
   {
      
      public static var §else var include§:IHelpService;
      
      private static const §521423119192311932123423632234§:int = 970;
      
      private static const §include for while§:int = 490;
      
      private static const §in catch super§:int = 60;
      
      private static const §for use throw§:Number = 7;
      
      private const §521423125292312542123423632234§:String = "BattleSelectModel";
      
      private const §52142394623959123423632234§:int = 1;
      
      private var §5214235250235263123423632234§:§static use each§;
      
      private var §5214236633236646123423632234§:Stage;
      
      private var §if switch set§:§5214233903233916123423632234§;
      
      private var §while var false§:DisplayObjectContainer;
      
      private var §do catch continue§:§break const return§;
      
      private var §521423101102310123123423632234§:§native for dynamic§;
      
      private var §5214232652232665123423632234§:§include return§;
      
      private var §while switch final§:§5214237085237098123423632234§;
      
      private var §native package function§:List;
      
      private var §package use break§:Vector.<§5214235332235345123423632234§>;
      
      private var §521423124312312444123423632234§:DataProvider;
      
      private var §while each§:uint;
      
      private var §super finally use§:int = 100;
      
      private var §finally const function§:int = 0;
      
      public function §521423101562310169123423632234§(param1:Stage, param2:DisplayObjectContainer, param3:§5214233903233916123423632234§, param4:Boolean)
      {
         super();
         this.§5214236633236646123423632234§ = param1;
         this.§while var false§ = param2;
         this.§if switch set§ = param3;
         this.init(param4);
      }
      
      private function §case for package§(param1:String, param2:Boolean, param3:String) : String
      {
         if(param2)
         {
            param1 = param1 + " " + param3;
         }
         return param1;
      }
      
      public function §521423113652311378123423632234§(param1:§dynamic include§) : void
      {
         var _loc2_:§5214235332235345123423632234§ = this.§throw package throw§(param1);
         _loc2_.§521423130282313041123423632234§ = true;
      }
      
      public function setEvents() : void
      {
         this.§5214236633236646123423632234§.addEventListener("resize",this.§52142326923282123423632234§);
         this.§while switch final§.addEventListener("click",this.§do catch case§);
         this.§native package function§.addEventListener("itemClick",this.§implements switch do§);
         this.§native package function§.addEventListener("change",this.§521423124872312500123423632234§);
         this.§native package function§.verticalScrollBar.addEventListener("enterFrame",this.§521423122622312275123423632234§);
         var _loc1_:int = int(this.§package use break§.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§package use break§[_loc2_].addEventListener("change",this.§continue function§);
            _loc2_++;
         }
      }
      
      public function §5214232692232705123423632234§(param1:§dynamic include§) : void
      {
         var _loc2_:§5214235332235345123423632234§ = this.§throw package throw§(param1);
         _loc2_.§521423130282313041123423632234§ = false;
      }
      
      public function §with const each§(param1:String) : int
      {
         var _loc2_:Object = null;
         var _loc3_:int = int(this.§521423124312312444123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.§521423124312312444123423632234§.getItemAt(_loc4_);
            if(_loc2_.id == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      private function §521423122622312275123423632234§(param1:Event) : void
      {
         var _loc2_:Sprite = null;
         var _loc4_:Sprite = null;
         var _loc5_:ScrollBar = this.§native package function§.verticalScrollBar;
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
               this.§native package function§.addChild(_loc4_);
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
      
      public function show(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean) : void
      {
         if(!this.§while var false§.contains(this))
         {
            this.§52142326923282123423632234§();
            this.setEvents();
            this.§while var false§.addChild(this);
            this.§5214235250235263123423632234§ = new §static use each§(this.§if switch set§.§521423110502311063123423632234§,this.§if switch set§.§5214232457232470123423632234§);
            §else var include§.registerHelper("BattleSelectModel",1,this.§5214235250235263123423632234§,false);
            this.§throw package throw§(§dynamic include§.§import const native§).§5214235374235387123423632234§ = param1;
            this.§throw package throw§(§dynamic include§.§continue catch super§).§5214235374235387123423632234§ = param2;
            this.§throw package throw§(§dynamic include§.§return package native§).§5214235374235387123423632234§ = param3;
            this.§throw package throw§(§dynamic include§.§catch package use§).§5214235374235387123423632234§ = param4;
         }
      }
      
      public function §package function§(param1:§break const return§) : void
      {
         this.§do catch continue§ = param1;
      }
      
      protected function init(param1:Boolean) : void
      {
         this.§521423101102310123123423632234§ = new §native for dynamic§();
         this.§521423101102310123123423632234§.§extends package var§ = this.§if switch set§.§extends package var§;
         this.§521423101102310123123423632234§.§extends catch default§ = §native set dynamic§.§5214233357233370123423632234§;
         addChild(this.§521423101102310123123423632234§);
         this.§5214232652232665123423632234§ = new §include return§(100,100,4278985229);
         this.§5214232652232665123423632234§.§5214238301238314123423632234§ = true;
         addChild(this.§5214232652232665123423632234§);
         this.§521423124312312444123423632234§ = new DataProvider();
         this.§native package function§ = new List();
         this.§native package function§.rowHeight = 20;
         this.§native package function§.setStyle("cellRenderer",§use set default§);
         this.§native package function§.dataProvider = this.§521423124312312444123423632234§;
         this.§native package function§.focusEnabled = true;
         addChild(this.§native package function§);
         this.§native package function§.move(15,15);
         ScrollStyleUtils.setGreenStyle(this.§native package function§);
         this.§while switch final§ = new §5214237085237098123423632234§();
         this.§while switch final§.label = this.§if switch set§.§null const break§;
         this.§while switch final§.visible = !param1;
         addChild(this.§while switch final§);
         this.§with use default§();
         this.§52142326923282123423632234§();
      }
      
      public function §for for throw§(param1:String) : void
      {
         var _loc2_:int = this.§with const each§(param1);
         if(_loc2_ >= 0)
         {
            this.§native package function§.selectedIndex = _loc2_;
            this.§native package function§.scrollToSelected();
         }
         else
         {
            this.§native package function§.selectedItem = null;
         }
         this.§native package function§.drawNow();
      }
      
      public function §static for in§(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Object = null;
         var _loc7_:BattleListItemParams = null;
         var _loc8_:Object = null;
         var _loc6_:int = this.§with const each§(param1);
         if(_loc6_ >= 0)
         {
            _loc9_ = this.§521423124312312444123423632234§.getItemAt(_loc6_);
            _loc7_ = _loc9_.dat;
            _loc8_ = this.§override finally var§(_loc7_.id,_loc7_.§return var null§,_loc7_.§5214239315239328123423632234§,_loc7_.§5214235112235125123423632234§,param2,param3,param4,param5,_loc7_.all,_loc7_.friends,_loc7_.maxPeople,_loc7_.§var switch implements§,_loc7_.accessible,_loc7_.proBattle,_loc7_.§5214239008239021123423632234§,_loc7_.suspicionLevel,_loc7_.§do catch catch§,_loc7_.§static var in§,_loc7_.§521423118712311884123423632234§,_loc7_.additionalCrystalsPercent);
            this.§521423124312312444123423632234§.replaceItemAt(_loc8_,_loc6_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc6_);
         }
      }
      
      public function §true switch get§(param1:BattleListItemParams, param2:Boolean) : void
      {
         var _loc3_:int = this.§with const each§(param1.id);
         var _loc4_:Object = {};
         _loc4_.id = param1.id;
         _loc4_.accessible = param1.accessible;
         _loc4_.iconNormal = this.myIcon(false,param1);
         _loc4_.iconSelected = this.myIcon(true,param1);
         _loc4_.suspicionLevel = param1.suspicionLevel.value;
         _loc4_.dat = param1;
         if(param1.§5214235112235125123423632234§)
         {
            _loc4_.friends = param1.friends;
         }
         else
         {
            _loc4_.friends = param1.§5214237929237942123423632234§ + param1.§5214232697232710123423632234§;
         }
         if(_loc3_ < 0)
         {
            this.§521423124312312444123423632234§.addItem(_loc4_);
         }
         if(param2)
         {
            this.§override set include§();
            this.resize();
            §else var include§.hideHelper("BattleSelectModel",1);
         }
      }
      
      public function §521423114392311452123423632234§(param1:String, param2:int, param3:int) : void
      {
         var _loc7_:Object = null;
         var _loc5_:BattleListItemParams = null;
         var _loc6_:Object = null;
         var _loc4_:int = this.§with const each§(param1);
         if(_loc4_ >= 0)
         {
            _loc7_ = this.§521423124312312444123423632234§.getItemAt(_loc4_);
            _loc5_ = _loc7_.dat;
            _loc6_ = this.§override finally var§(_loc5_.id,_loc5_.§return var null§,_loc5_.§5214239315239328123423632234§,_loc5_.§5214235112235125123423632234§,_loc5_.§5214234629234642123423632234§,_loc5_.§521423128912312904123423632234§,_loc5_.§5214232697232710123423632234§,_loc5_.§5214237929237942123423632234§,param2,param3,_loc5_.maxPeople,_loc5_.§var switch implements§,_loc5_.accessible,_loc5_.proBattle,_loc5_.§5214239008239021123423632234§,_loc5_.suspicionLevel,_loc5_.§do catch catch§,_loc5_.§static var in§,_loc5_.§521423118712311884123423632234§,_loc5_.additionalCrystalsPercent,_loc5_.§5214239712239725123423632234§);
            this.§521423124312312444123423632234§.replaceItemAt(_loc6_,_loc4_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc4_);
         }
      }
      
      private function §continue function§(param1:Event) : void
      {
         var _loc2_:§5214235332235345123423632234§ = §5214235332235345123423632234§(param1.currentTarget);
         this.§do catch continue§.onBattleModeChange(_loc2_.§throw var include§,_loc2_.§5214235374235387123423632234§);
      }
      
      private function §5214231906231919123423632234§(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BattleListItemParams = null;
         this.§super finally use§ = param1 - (this.§native package function§.maxVerticalScrollPosition > 0 ? 32 : 20);
         if(this.§super finally use§ == this.§finally const function§)
         {
            return;
         }
         this.§finally const function§ = this.§super finally use§;
         var _loc4_:int = 0;
         while(_loc4_ < this.§521423124312312444123423632234§.length)
         {
            _loc2_ = this.§521423124312312444123423632234§.getItemAt(_loc4_);
            _loc3_ = _loc2_.dat;
            _loc2_.iconNormal = this.myIcon(false,_loc3_);
            _loc2_.iconSelected = this.myIcon(true,_loc3_);
            this.§521423124312312444123423632234§.replaceItemAt(_loc2_,_loc4_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc4_);
            _loc4_++;
         }
      }
      
      private function §implements const for§(param1:int = 400) : void
      {
         clearTimeout(this.§while each§);
         this.§while each§ = setTimeout(this.§else finally for§,param1);
      }
      
      public function resize(param1:Boolean = true) : void
      {
         clearTimeout(this.§while each§);
         var _loc2_:int = Math.max(970,this.§5214236633236646123423632234§.stageWidth / Display.§521423132512313264123423632234§) / 3;
         var _loc5_:int = Math.max(this.§5214236633236646123423632234§.stageHeight / Display.§521423132512313264123423632234§ - 60,490);
         this.§521423101102310123123423632234§.width = _loc2_;
         this.§521423101102310123123423632234§.height = _loc5_;
         this.x = _loc2_;
         this.y = 60;
         this.§5214232652232665123423632234§.width = _loc2_ - 22;
         this.§5214232652232665123423632234§.height = _loc5_ - 58;
         this.§5214232652232665123423632234§.y = 11;
         this.§5214232652232665123423632234§.x = 11;
         var _loc6_:int = this.§5214232652232665123423632234§.width - (this.§native package function§.maxVerticalScrollPosition > 0 ? 0 : 4);
         this.§native package function§.setSize(_loc6_,this.§5214232652232665123423632234§.height - 8);
         var _loc3_:int = int(this.§package use break§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc4_ == 0)
            {
               this.§package use break§[_loc4_].x = 11;
            }
            else
            {
               this.§package use break§[_loc4_].x = this.§package use break§[_loc4_ - 1].x + this.§package use break§[_loc4_ - 1].width + 5;
            }
            this.§package use break§[_loc4_].y = _loc5_ - 42;
            _loc4_++;
         }
         this.§while switch final§.x = _loc2_ - this.§while switch final§.width - 11;
         this.§while switch final§.y = _loc5_ - 42;
         this.§5214231906231919123423632234§(_loc6_);
         if(param1)
         {
            this.§implements const for§();
         }
      }
      
      private function §false const set§(param1:BattleSuspicionLevel) : uint
      {
         var _loc2_:BattleSuspicionLevel = param1;
         if(BattleSuspicionLevel.HIGH !== _loc2_)
         {
            return 14368318;
         }
         return 16048128;
      }
      
      private function §function package break§(param1:§dynamic include§) : void
      {
         var _loc2_:§5214235332235345123423632234§ = new §5214235332235345123423632234§(param1);
         addChild(_loc2_);
         this.§package use break§[param1.value] = _loc2_;
      }
      
      private function §with use default§() : void
      {
         this.§package use break§ = new Vector.<§5214235332235345123423632234§>();
         this.§function package break§(§dynamic include§.§import const native§);
         this.§function package break§(§dynamic include§.§continue catch super§);
         this.§function package break§(§dynamic include§.§return package native§);
         this.§function package break§(§dynamic include§.§catch package use§);
      }
      
      public function §521423127802312793123423632234§(param1:String, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:BattleListItemParams = null;
         var _loc3_:Object = null;
         var _loc4_:int = this.§with const each§(param1);
         if(_loc4_ >= 0)
         {
            _loc5_ = this.§521423124312312444123423632234§.getItemAt(_loc4_);
            _loc6_ = _loc5_.dat;
            _loc3_ = this.§override finally var§(_loc6_.id,param2,_loc6_.§5214239315239328123423632234§,_loc6_.§5214235112235125123423632234§,_loc6_.§5214234629234642123423632234§,_loc6_.§521423128912312904123423632234§,_loc6_.§5214232697232710123423632234§,_loc6_.§5214237929237942123423632234§,_loc6_.all,_loc6_.friends,_loc6_.maxPeople,_loc6_.§var switch implements§,_loc6_.accessible,_loc6_.proBattle,_loc6_.§5214239008239021123423632234§,_loc6_.suspicionLevel,_loc6_.§do catch catch§,_loc6_.§static var in§,_loc6_.§521423118712311884123423632234§,_loc6_.additionalCrystalsPercent);
            this.§521423124312312444123423632234§.replaceItemAt(_loc3_,_loc4_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc4_);
         }
      }
      
      public function §5214233348233361123423632234§(param1:String, param2:int, param3:int, param4:int, param5:uint) : void
      {
         var _loc9_:Object = null;
         var _loc7_:BattleListItemParams = null;
         var _loc8_:Object = null;
         var _loc6_:int = this.§with const each§(param1);
         if(_loc6_ >= 0)
         {
            _loc9_ = this.§521423124312312444123423632234§.getItemAt(_loc6_);
            _loc7_ = _loc9_.dat;
            _loc8_ = this.§override finally var§(_loc7_.id,_loc7_.§return var null§,_loc7_.§5214239315239328123423632234§,_loc7_.§5214235112235125123423632234§,param2,param3,param4,param5,_loc7_.all,_loc7_.friends,_loc7_.maxPeople,_loc7_.§var switch implements§,_loc7_.accessible,_loc7_.proBattle,_loc7_.§5214239008239021123423632234§,_loc7_.suspicionLevel,_loc7_.§do catch catch§,_loc7_.§static var in§,_loc7_.§521423118712311884123423632234§,_loc7_.additionalCrystalsPercent,_loc7_.§5214239712239725123423632234§);
            this.§521423124312312444123423632234§.replaceItemAt(_loc8_,_loc6_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc6_);
         }
      }
      
      private function myIcon(param1:Boolean, param2:BattleListItemParams) : Sprite
      {
         var _loc6_:Bitmap = null;
         var _loc16_:* = 0;
         var _loc11_:CrystalLabel = null;
         var _loc17_:Boolean = false;
         var _loc19_:* = undefined;
         var _loc13_:§5214239351239364123423632234§ = null;
         var _loc15_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc5_:§5214239351239364123423632234§ = null;
         var _loc4_:§5214239351239364123423632234§ = null;
         var _loc8_:Sprite = new Sprite();
         var _loc7_:Shape = new Shape();
         var _loc3_:Boolean = param2.accessible;
         var _loc14_:int = this.§super finally use§;
         var _loc12_:int = _loc14_ * 0.55;
         if(param2.proBattle)
         {
            if(param2.§static var in§)
            {
               _loc6_ = new Bitmap(§dynamic for false§.§const finally catch§(_loc3_,param1));
               _loc6_.y = 3;
               _loc6_.x = -2;
               _loc8_.addChild(_loc6_);
            }
            else
            {
               _loc6_ = new Bitmap(§dynamic for false§.§var package do§(_loc3_,param1));
               _loc6_.y = 3;
               _loc6_.x = -2;
               _loc8_.addChild(_loc6_);
            }
         }
         var _loc18_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         if(param2.suspicionLevel != BattleSuspicionLevel.NONE)
         {
            _loc16_ = this.§false const set§(param2.suspicionLevel);
            if(param2.§5214239712239725123423632234§)
            {
               GlowEffect.glow(_loc18_,_loc16_);
               param2.§5214239712239725123423632234§ = false;
            }
         }
         else
         {
            _loc16_ = uint(param1 ? (_loc3_ ? 4278985229 : 5789784) : (uint(_loc3_ ? 5898034 : 11645361)));
         }
         _loc18_.color = _loc16_;
         _loc18_.text = param2.§return var null§;
         _loc18_.autoSize = "none";
         _loc18_.width = _loc12_ - 6;
         _loc18_.height = 18;
         _loc18_.x = 8;
         _loc18_.y = -1;
         _loc8_.addChild(_loc18_);
         if(param2.additionalCrystalsPercent > 0)
         {
            _loc11_ = new CrystalLabel();
            _loc11_.setText("+" + param2.additionalCrystalsPercent + "%");
            _loc11_.x = _loc14_ - _loc11_.width + 5;
            _loc11_.y = -1;
            _loc8_.addChild(_loc11_);
         }
         var _loc9_:uint = param1 ? (_loc3_ ? 4278985229 : 5789784) : (uint(_loc3_ ? 5898034 : 11645361));
         _loc18_ = new §5214231141231154123423632234§();
         _loc18_.color = _loc9_;
         _loc18_.autoSize = "right";
         _loc18_.align = "right";
         _loc18_.text = param2.§var switch implements§;
         _loc18_.x = _loc14_ - (_loc11_ ? _loc11_.width : 0) - _loc18_.textWidth + 2;
         _loc18_.y = -1;
         _loc8_.addChild(_loc18_);
         if(param2.§5214235112235125123423632234§)
         {
            _loc17_ = param2.all == param2.maxPeople;
            _loc19_ = new AbrisSolo(_loc17_,_loc3_);
            _loc19_.x = _loc12_;
            _loc19_.y = 1;
            _loc8_.addChild(_loc19_);
            _loc18_ = new §5214231141231154123423632234§();
            _loc18_.autoSize = "none";
            _loc18_.color = _loc17_ ? 8816262 : 16777215;
            _loc18_.align = "center";
            _loc18_.text = String(param2.all);
            _loc18_.x = int(_loc12_ - 0.5);
            _loc18_.y = -1;
            _loc18_.width = 52;
            _loc18_.height = 16;
            _loc8_.addChild(_loc18_);
            if(param2.friends > 0)
            {
               _loc13_ = new §5214239351239364123423632234§(param1,_loc3_,param2.friends,_loc9_);
               _loc13_.x = _loc12_ + 53 + 10;
               _loc8_.addChild(_loc13_);
            }
         }
         else
         {
            _loc15_ = param2.§5214234629234642123423632234§ == param2.maxPeople;
            _loc10_ = param2.§521423128912312904123423632234§ == param2.maxPeople;
            _loc19_ = new AbrisTeam(_loc15_,_loc10_,_loc3_);
            _loc19_.x = _loc12_;
            _loc19_.y = 1;
            _loc8_.addChild(_loc19_);
            _loc18_ = new §5214231141231154123423632234§();
            _loc18_.autoSize = "none";
            _loc18_.align = "center";
            _loc18_.color = _loc15_ ? 8816262 : 16777215;
            _loc18_.text = String(param2.§5214234629234642123423632234§);
            _loc18_.x = int(_loc12_ - 0.5);
            _loc18_.y = -1;
            _loc18_.width = 27;
            _loc18_.height = 16;
            _loc8_.addChild(_loc18_);
            _loc18_ = new §5214231141231154123423632234§();
            _loc18_.autoSize = "none";
            _loc18_.align = "center";
            _loc18_.color = _loc10_ ? 8816262 : 16777215;
            _loc18_.text = String(param2.§521423128912312904123423632234§);
            _loc18_.x = int(_loc12_ + 26.5);
            _loc18_.y = -1;
            _loc18_.width = 25;
            _loc18_.height = 16;
            _loc8_.addChild(_loc18_);
            if(param2.§5214237929237942123423632234§ > 0)
            {
               _loc5_ = new §5214239351239364123423632234§(param1,_loc3_,param2.§5214237929237942123423632234§,_loc9_);
               _loc5_.x = _loc12_ + 27 + 26 + 10;
               _loc8_.addChild(_loc5_);
            }
            if(param2.§5214232697232710123423632234§ > 0)
            {
               _loc4_ = new §5214239351239364123423632234§(param1,_loc3_,param2.§5214232697232710123423632234§,_loc9_);
               _loc4_.x = _loc12_ - _loc4_.width - 9;
               _loc8_.addChild(_loc4_);
            }
         }
         return _loc8_;
      }
      
      public function §super set class§(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc7_:BattleListItemParams = null;
         var _loc8_:§var use native§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc3_:int = int(this.§521423124312312444123423632234§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.§521423124312312444123423632234§.getItemAt(_loc4_);
            _loc7_ = _loc2_.dat;
            _loc8_ = §var use native§(_loc7_.§do catch catch§);
            _loc5_ = param1 >= _loc8_.§5214239002239015123423632234§ && param1 <= _loc8_.§5214232042232055123423632234§;
            _loc6_ = this.§override finally var§(_loc7_.id,_loc7_.§return var null§,_loc7_.§5214239315239328123423632234§,_loc7_.§5214235112235125123423632234§,_loc7_.§5214234629234642123423632234§,_loc7_.§521423128912312904123423632234§,_loc7_.§5214232697232710123423632234§,_loc7_.§5214237929237942123423632234§,_loc7_.all,_loc7_.friends,_loc7_.maxPeople,_loc7_.§var switch implements§,_loc5_,_loc7_.proBattle,_loc7_.§5214239008239021123423632234§,_loc7_.suspicionLevel,_loc7_.§do catch catch§,_loc7_.§static var in§,_loc7_.§521423118712311884123423632234§,_loc7_.additionalCrystalsPercent);
            this.§521423124312312444123423632234§.replaceItemAt(_loc6_,_loc4_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc4_);
            _loc4_++;
         }
         this.§override set include§();
      }
      
      private function §implements switch do§(param1:ListEvent) : void
      {
         this.§do catch continue§.onBattleListItemClick(String(param1.item.dat.id));
         var _loc2_:Boolean = Boolean(param1.item.dat.accessible);
         if(!_loc2_)
         {
            this.§5214235250235263123423632234§.targetPoint = new Point(this.§5214236633236646123423632234§.mouseX,this.§5214236633236646123423632234§.mouseY);
            §else var include§.showHelper("BattleSelectModel",1);
         }
      }
      
      public function §521423122662312279123423632234§(param1:String) : void
      {
         var _loc2_:int = this.§with const each§(param1);
         if(_loc2_ >= 0)
         {
            this.§521423124312312444123423632234§.removeItemAt(_loc2_);
            this.§implements const for§();
         }
      }
      
      private function §do catch case§(param1:MouseEvent) : void
      {
         this.§do catch continue§.onShowCreateBattleFormButtonClick();
      }
      
      public function §final catch var§() : void
      {
         this.§native package function§.selectedItem = null;
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.resize();
      }
      
      public function §true package final§() : void
      {
         if(this.§while var false§.contains(this))
         {
            this.removeEvents();
            this.§while var false§.removeChild(this);
            §else var include§.hideHelper("BattleSelectModel",1);
            §else var include§.unregisterHelper("BattleSelectModel",1);
         }
      }
      
      public function §5214238955238968123423632234§(param1:String, param2:BattleSuspicionLevel) : void
      {
         var _loc3_:Object = null;
         var _loc6_:BattleListItemParams = null;
         var _loc4_:Object = null;
         var _loc5_:int = this.§with const each§(param1);
         if(_loc5_ >= 0)
         {
            _loc3_ = this.§521423124312312444123423632234§.getItemAt(_loc5_);
            _loc6_ = _loc3_.dat;
            _loc4_ = this.§override finally var§(_loc6_.id,_loc6_.§return var null§,_loc6_.§5214239315239328123423632234§,_loc6_.§5214235112235125123423632234§,_loc6_.§5214234629234642123423632234§,_loc6_.§521423128912312904123423632234§,_loc6_.§5214232697232710123423632234§,_loc6_.§5214237929237942123423632234§,_loc6_.all,_loc6_.friends,_loc6_.maxPeople,_loc6_.§var switch implements§,_loc6_.accessible,_loc6_.proBattle,_loc6_.§5214239008239021123423632234§,param2,_loc6_.§do catch catch§,_loc6_.§static var in§,_loc6_.§521423118712311884123423632234§,_loc6_.additionalCrystalsPercent,param2.value > 0);
            this.§521423124312312444123423632234§.replaceItemAt(_loc4_,_loc5_);
            this.§521423124312312444123423632234§.invalidateItemAt(_loc5_);
            this.§override set include§();
         }
      }
      
      private function §else finally for§() : void
      {
         this.resize(false);
      }
      
      public function removeEvents() : void
      {
         this.§native package function§.verticalScrollBar.removeEventListener("enterFrame",this.§521423122622312275123423632234§);
         this.§5214236633236646123423632234§.removeEventListener("resize",this.§52142326923282123423632234§);
         this.§while switch final§.removeEventListener("click",this.§do catch case§);
         this.§native package function§.removeEventListener("itemClick",this.§implements switch do§);
         this.§native package function§.removeEventListener("change",this.§521423124872312500123423632234§);
         var _loc1_:int = int(this.§package use break§.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§package use break§[_loc2_].removeEventListener("change",this.§continue function§);
            _loc2_++;
         }
      }
      
      private function §throw package throw§(param1:§dynamic include§) : §5214235332235345123423632234§
      {
         var _loc2_:§5214235332235345123423632234§ = null;
         var _loc3_:int = int(this.§package use break§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(this.§package use break§[_loc4_].§throw var include§ == param1)
            {
               _loc2_ = this.§package use break§[_loc4_];
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function §521423124872312500123423632234§(param1:Event) : void
      {
         if(this.§native package function§.selectedItem != null)
         {
            this.§do catch continue§.onBattleListItemChange(String(this.§native package function§.selectedItem.dat.id));
         }
      }
      
      public function §override set include§() : void
      {
         this.§521423124312312444123423632234§.sortOn(["suspicionLevel","accessible","friends","id"],[0x10 | 2,2,0x10 | 2,0x10 | 2]);
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         var _loc1_:int = int(this.§package use break§.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§package use break§[_loc2_].destroy();
            _loc2_++;
         }
         clearTimeout(this.§while each§);
         this.§package use break§ = null;
         this.§5214235250235263123423632234§ = null;
         this.§do catch continue§ = null;
         this.§if switch set§ = null;
         this.§5214236633236646123423632234§ = null;
         this.§while var false§ = null;
      }
      
      private function §override finally var§(param1:String, param2:String, param3:§521423120252312038123423632234§, param4:Boolean, param5:int, param6:int, param7:int, param8:int, param9:int, param10:int, param11:int, param12:String, param13:Boolean, param14:Boolean, param15:Boolean, param16:BattleSuspicionLevel, param17:§var use native§, param18:Boolean, param19:String, param20:int, param21:Boolean = false) : Object
      {
         var _loc23_:BattleListItemParams = null;
         var _loc22_:Object = null;
         _loc23_ = new BattleListItemParams();
         _loc23_.§return var null§ = param2;
         _loc23_.§5214239315239328123423632234§ = param3;
         _loc23_.id = param1;
         _loc23_.§5214235112235125123423632234§ = param4;
         _loc23_.§5214234629234642123423632234§ = param5;
         _loc23_.§521423128912312904123423632234§ = param6;
         _loc23_.§5214232697232710123423632234§ = param7;
         _loc23_.§5214237929237942123423632234§ = param8;
         _loc23_.all = param9;
         _loc23_.friends = param10;
         _loc23_.maxPeople = param11;
         _loc23_.§var switch implements§ = param12;
         _loc23_.accessible = param13;
         _loc23_.§do catch catch§ = param17;
         _loc23_.§5214239008239021123423632234§ = param15;
         _loc23_.proBattle = param14;
         _loc23_.suspicionLevel = param16;
         _loc23_.§static var in§ = param18;
         _loc23_.§521423118712311884123423632234§ = param19;
         _loc23_.additionalCrystalsPercent = param20;
         if(param21)
         {
            _loc23_.§5214239712239725123423632234§ = true;
         }
         _loc22_ = {};
         _loc22_.id = param1;
         _loc22_.accessible = param13;
         _loc22_.iconNormal = this.myIcon(false,_loc23_);
         _loc22_.iconSelected = this.myIcon(true,_loc23_);
         _loc22_.suspicionLevel = param16.value;
         _loc22_.dat = _loc23_;
         if(param4)
         {
            _loc22_.friends = _loc23_.friends;
         }
         else
         {
            _loc22_.friends = _loc23_.§5214237929237942123423632234§ + _loc23_.§5214232697232710123423632234§;
         }
         return _loc22_;
      }
   }
}

