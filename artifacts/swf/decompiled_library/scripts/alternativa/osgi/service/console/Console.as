package alternativa.osgi.service.console
{
   import §521423139282313941123423632234§.ConsoleVar;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.§final use in§;
   import alternativa.utils.CircularStringBuffer;
   import alternativa.utils.§final package super§;
   import alternativa.utils.§override catch var§;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.setTimeout;
   
   public class Console implements §5214235900235913123423632234§
   {
      
      private static const §case var use§:uint = 16777215;
      
      private static const §5214235592235605123423632234§:uint = 0;
      
      private static const §get var case§:int = 20;
      
      private static const §switch switch super§:TextFormat = new TextFormat("Courier New",12,0);
      
      private static const §5214239253239266123423632234§:RegExp = /\n|\r|\n\r/;
      
      private static const §5214234362234375123423632234§:RegExp = /(?:[^"\s]+)|(?:"[^"]*")/g;
      
      private var stage:Stage;
      
      private var container:Sprite;
      
      private var §5214234286234299123423632234§:Sprite;
      
      private var §5214237335237348123423632234§:TextField;
      
      private var §5214234178234191123423632234§:Vector.<TextField>;
      
      private var §5214236755236768123423632234§:int;
      
      private var §5214234410234423123423632234§:int;
      
      private var §521423109022310915123423632234§:int = 0;
      
      private var §if function§:Boolean;
      
      private var visible:Boolean;
      
      private var §5214234092234105123423632234§:Vector.<String> = new Vector.<String>();
      
      private var §5214234813234826123423632234§:int = 0;
      
      private var variables:Object = {};
      
      private var §521423137652313778123423632234§:int;
      
      private var §5214235946235959123423632234§:int;
      
      private var §var for super§:int;
      
      private var buffer:§override catch var§;
      
      private var §5214238031238044123423632234§:int;
      
      private var §52142329623309123423632234§:int;
      
      private var align:int;
      
      private var §521423131162313129123423632234§:uint = 16777215;
      
      private var §static var extends§:uint = 0;
      
      private var §521423132462313259123423632234§:Number = 1;
      
      private var filter:String;
      
      private var §5214233864233877123423632234§:CommandService;
      
      private var §false set get§:Error;
      
      public function Console(param1:CommandService, param2:Stage, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         this.container = new Sprite();
         this.§5214234178234191123423632234§ = new Vector.<TextField>();
         this.§5214233864233877123423632234§ = param1;
         this.stage = param2;
         this.buffer = new CircularStringBuffer(500);
         this.e264e28e(param2);
         this.cacb07();
         this.c31c33f4();
         this.setSize(param3,param4);
         this.horizontalAlignment = param5;
         this.vericalAlignment = param6;
         param2.addEventListener("keyUp",this.onKeyUp);
         param2.addEventListener("resize",this.onResize);
         param1.registerCommand("console","hide","Спрятать консоль",[],this.e7166a3e);
         param1.registerCommand("console","copy","Скопировать содержимое консоли в буфер обмена",[],this.e49ba66d);
         param1.registerCommand("cmd","clear","Очистить консоль",[],this.c9bf222);
         param1.registerCommand("cmd","e","Показать последний exception",[],this.b3dc114e);
         param1.registerCommand("console","height","Установить высоту консоли",[int],this.c2685808);
         param1.registerCommand("console","width","Установить ширину консоли",[int],this.b75726e7);
         param1.registerCommand("console","halign","Выравнивание по горизонтали",[int],this.e2c5a039);
         param1.registerCommand("console","valign","Выравнивание по вертикали",[int],this.b756fc53);
         param1.registerCommand("console","alpha","Установить прозрачность консоли",[Number],this.d69d59e3);
         param1.registerCommand("console","bg","Установить цвет фона",[uint],this.f2263a64);
         param1.registerCommand("console","fg","Установить цвет шрифта",[uint],this.c5e69d40);
         param1.registerCommand("vars","list","Посмотреть список переменных",[],this.c1e7b0aa);
         param1.registerCommand("vars","show","Посмотреть переменную",[String],this.f56eee8f);
         param1.registerCommand("vars","set","Установить значение переменной",[String,String],this.adeab3b);
      }
      
      private function adeab3b(param1:§final use in§, param2:String, param3:String) : void
      {
         var _loc5_:String = null;
         var _loc4_:String = null;
         var _loc6_:ConsoleVar = this.variables[param2];
         if(_loc6_ != null)
         {
            _loc5_ = _loc6_.toString();
            _loc4_ = _loc6_.acceptInput(param3);
            if(_loc4_ == null)
            {
               param1.addText("New value " + _loc6_.toString() + ", old value=" + _loc5_);
               return;
            }
            throw new ConsoleVarChangeError(param2,param3,_loc4_);
         }
         throw new ConsoleVarNotFoundError(param2);
      }
      
      private function f56eee8f(param1:§final use in§, param2:String) : void
      {
         var _loc3_:ConsoleVar = this.variables[param2];
         if(_loc3_ != null)
         {
            param1.addText(_loc3_.toString());
            return;
         }
         throw new ConsoleVarNotFoundError(param2);
      }
      
      private function c1e7b0aa(param1:§final use in§) : void
      {
         for(var _loc2_ in this.variables)
         {
            param1.addText(_loc2_);
         }
      }
      
      private function b3dc114e(param1:§final use in§) : void
      {
         if(this.§false set get§)
         {
            param1.addText(this.§false set get§.getStackTrace());
         }
      }
      
      public function addVariable(param1:ConsoleVar) : void
      {
         this.variables[param1.getName()] = param1;
      }
      
      public function removeVariable(param1:String) : void
      {
         delete this.variables[param1];
      }
      
      public function set horizontalAlignment(param1:int) : void
      {
         param1 = this.clamp(param1,1,3);
         this.align = this.align & -4 | param1;
         this.ce785b7();
      }
      
      public function get horizontalAlignment() : int
      {
         return this.align & 3;
      }
      
      public function set vericalAlignment(param1:int) : void
      {
         param1 = this.clamp(param1,1,3);
         this.align = this.align & -13 | param1 << 2;
         this.ce785b7();
      }
      
      public function get vericalAlignment() : int
      {
         return this.align >> 2 & 3;
      }
      
      public function addText(param1:String) : void
      {
         var _loc3_:Boolean = this.buffer.size - this.§var for super§ <= this.§521423137652313778123423632234§;
         var _loc2_:int = this.addLine(param1);
         if(_loc3_)
         {
            this.c4272757(_loc2_);
         }
      }
      
      public function addPrefixedText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = this.buffer.size - this.§var for super§ <= this.§521423137652313778123423632234§;
         var _loc3_:int = this.bc623ee(param1,param2);
         if(_loc4_)
         {
            this.c4272757(_loc3_);
         }
      }
      
      public function addLines(param1:Vector.<String>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:Boolean = this.buffer.size - this.§var for super§ <= this.§521423137652313778123423632234§;
         for each(_loc3_ in param1)
         {
            _loc2_ += this.addLine(_loc3_);
         }
         if(_loc4_)
         {
            this.c4272757(_loc2_);
         }
      }
      
      public function addPrefixedLines(param1:String, param2:Vector.<String>) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Boolean = this.buffer.size - this.§var for super§ <= this.§521423137652313778123423632234§;
         for each(var _loc4_ in param2)
         {
            _loc3_ += this.bc623ee(param1,_loc4_);
         }
         if(_loc5_)
         {
            this.c4272757(_loc3_);
         }
      }
      
      public function show() : void
      {
         if(this.visible)
         {
            return;
         }
         this.stage.addChild(this.container);
         this.stage.focus = this.§5214237335237348123423632234§;
         this.visible = true;
         this.onResize(null);
         this.c4272757(0);
      }
      
      public function hide() : void
      {
         if(this.stage == null)
         {
            return;
         }
         if(this.visible)
         {
            this.stage.removeChild(this.container);
            this.stage.focus = this.stage;
            this.visible = false;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         param1 = this.clamp(param1,1,100);
         param2 = this.clamp(param2,1,100);
         if(param1 == this.§5214238031238044123423632234§ && param2 == this.§52142329623309123423632234§)
         {
            return;
         }
         this.§5214238031238044123423632234§ = param1;
         this.§52142329623309123423632234§ = param2;
         this.c490035d();
         this.ce785b7();
      }
      
      public function set width(param1:int) : void
      {
         this.setSize(param1,this.§52142329623309123423632234§);
      }
      
      public function get width() : int
      {
         return this.§5214238031238044123423632234§;
      }
      
      public function set height(param1:int) : void
      {
         this.setSize(this.§5214238031238044123423632234§,param1);
      }
      
      public function get height() : int
      {
         return this.§52142329623309123423632234§;
      }
      
      public function hideDelayed(param1:uint) : void
      {
         setTimeout(this.hide,param1);
      }
      
      public function executeCommand(param1:String) : void
      {
         if(param1.match(/^\s*$/))
         {
            return;
         }
         var _loc2_:int = int(this.§5214234092234105123423632234§.length);
         if(_loc2_ == 0 || this.§5214234092234105123423632234§[_loc2_ - 1] != param1)
         {
            this.§5214234092234105123423632234§[_loc2_] = param1;
         }
         this.§5214234813234826123423632234§ = _loc2_ + 1;
         try
         {
            this.§5214233864233877123423632234§.execute(param1,this);
         }
         catch(e:Error)
         {
            addText(e.message);
            §false set get§ = e;
         }
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§521423132462313259123423632234§ = param1;
         this.c490035d();
      }
      
      public function get alpha() : Number
      {
         return this.§521423132462313259123423632234§;
      }
      
      private function e264e28e(param1:Stage) : void
      {
         var _loc2_:TextField = new TextField();
         _loc2_.defaultTextFormat = §switch switch super§;
         _loc2_.text = "j";
         param1.addChild(_loc2_);
         this.§5214236755236768123423632234§ = _loc2_.textWidth;
         this.§5214234410234423123423632234§ = _loc2_.textHeight + 4;
         param1.removeChild(_loc2_);
      }
      
      private function cacb07() : void
      {
         this.§5214237335237348123423632234§ = new TextField();
         this.§5214237335237348123423632234§.defaultTextFormat = §switch switch super§;
         this.§5214237335237348123423632234§.height = 20;
         this.§5214237335237348123423632234§.type = "input";
         this.§5214237335237348123423632234§.background = true;
         this.§5214237335237348123423632234§.backgroundColor = 16777215;
         this.§5214237335237348123423632234§.border = true;
         this.§5214237335237348123423632234§.borderColor = 0;
         this.§5214237335237348123423632234§.addEventListener("keyDown",this.daeb052);
         this.§5214237335237348123423632234§.addEventListener("keyUp",this.c2f4fa5e);
         this.§5214237335237348123423632234§.addEventListener("textInput",this.c72f5af);
         this.container.addChild(this.§5214237335237348123423632234§);
      }
      
      private function c31c33f4() : void
      {
         this.§5214234286234299123423632234§ = new Sprite();
         this.§5214234286234299123423632234§.addEventListener("mouseWheel",this.c29e3d9);
         this.container.addChild(this.§5214234286234299123423632234§);
      }
      
      private function b69fb54b(param1:int, param2:int) : void
      {
         this.§521423137652313778123423632234§ = param2 / (this.§5214234410234423123423632234§ + this.§521423109022310915123423632234§);
         this.§5214235946235959123423632234§ = param1 / this.§5214236755236768123423632234§ - 1;
         this.a65c767(param1);
         this.c4272757(0);
         var _loc3_:Graphics = this.§5214234286234299123423632234§.graphics;
         _loc3_.clear();
         _loc3_.beginFill(this.§521423131162313129123423632234§,this.§521423132462313259123423632234§);
         _loc3_.drawRect(0,0,param1,param2);
         _loc3_.endFill();
      }
      
      private function a65c767(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:TextField = null;
         while(this.§5214234178234191123423632234§.length > this.§521423137652313778123423632234§)
         {
            this.§5214234286234299123423632234§.removeChild(this.§5214234178234191123423632234§.pop());
         }
         while(this.§5214234178234191123423632234§.length < this.§521423137652313778123423632234§)
         {
            this.f3406ee7();
         }
         var _loc4_:int = this.§5214234410234423123423632234§ + this.§521423109022310915123423632234§;
         while(_loc3_ < this.§5214234178234191123423632234§.length)
         {
            _loc2_ = this.§5214234178234191123423632234§[_loc3_];
            _loc2_.y = _loc3_ * _loc4_;
            _loc2_.width = param1;
            _loc3_++;
         }
      }
      
      private function f3406ee7() : void
      {
         var _loc1_:TextField = new TextField();
         _loc1_.height = this.§5214234410234423123423632234§;
         _loc1_.defaultTextFormat = §switch switch super§;
         _loc1_.tabEnabled = false;
         _loc1_.selectable = true;
         this.§5214234286234299123423632234§.addChild(_loc1_);
         this.§5214234178234191123423632234§[§5214234178234191123423632234§.length] = _loc1_;
      }
      
      private function c4272757(param1:int) : void
      {
         this.§var for super§ += param1;
         if(this.§var for super§ + this.§521423137652313778123423632234§ > this.buffer.size)
         {
            this.§var for super§ = this.buffer.size - this.§521423137652313778123423632234§;
         }
         if(this.§var for super§ < 0)
         {
            this.§var for super§ = 0;
         }
         this.f55f6a9a();
      }
      
      private function f55f6a9a() : void
      {
         if(this.container.parent != null)
         {
            this.b212213f();
         }
      }
      
      private function b212213f() : void
      {
         var _loc2_:int = 0;
         var _loc1_:§final package super§ = this.buffer.getIterator(this.§var for super§);
         while(_loc2_ < this.§521423137652313778123423632234§ && _loc1_.hasNext())
         {
            TextField(this.§5214234178234191123423632234§[_loc2_++]).text = _loc1_.getNext();
         }
         while(_loc2_ < this.§521423137652313778123423632234§)
         {
            TextField(this.§5214234178234191123423632234§[_loc2_++]).text = "";
         }
      }
      
      private function daeb052(param1:KeyboardEvent) : void
      {
         if(this.f45679af(param1))
         {
            this.§if function§ = true;
         }
         switch(param1.keyCode)
         {
            case 13:
               this.c771a0d();
               break;
            case 27:
               if(this.§5214237335237348123423632234§.text != "")
               {
                  this.§5214237335237348123423632234§.text = "";
                  break;
               }
               this.hideDelayed(50);
               break;
            case 38:
               this.c6a8724a();
               break;
            case 40:
               this.a186f92b();
               break;
            case 33:
               this.c4272757(-this.§521423137652313778123423632234§);
               break;
            case 34:
               this.c4272757(this.§521423137652313778123423632234§);
         }
         param1.stopPropagation();
      }
      
      private function c2f4fa5e(param1:KeyboardEvent) : void
      {
         if(!this.f45679af(param1))
         {
            param1.stopPropagation();
         }
      }
      
      private function c72f5af(param1:TextEvent) : void
      {
         if(this.§if function§)
         {
            param1.preventDefault();
            this.§if function§ = false;
         }
      }
      
      private function f45679af(param1:KeyboardEvent) : Boolean
      {
         return param1.keyCode == 75 && param1.ctrlKey && param1.shiftKey;
      }
      
      private function c771a0d() : void
      {
         this.c4272757(this.buffer.size);
         var _loc1_:String = this.§5214237335237348123423632234§.text;
         this.§5214237335237348123423632234§.text = "";
         this.addText("> " + _loc1_);
         this.executeCommand(_loc1_);
      }
      
      private function c6a8724a() : void
      {
         if(this.§5214234813234826123423632234§ == 0)
         {
            return;
         }
         --this.§5214234813234826123423632234§;
         var _loc1_:String = this.§5214234092234105123423632234§[this.§5214234813234826123423632234§];
         this.§5214237335237348123423632234§.text = _loc1_ == null ? "" : _loc1_;
      }
      
      private function a186f92b() : void
      {
         ++this.§5214234813234826123423632234§;
         if(this.§5214234813234826123423632234§ >= this.§5214234092234105123423632234§.length)
         {
            this.§5214234813234826123423632234§ = this.§5214234092234105123423632234§.length;
            this.§5214237335237348123423632234§.text = "";
         }
         else
         {
            this.§5214237335237348123423632234§.text = this.§5214234092234105123423632234§[this.§5214234813234826123423632234§];
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(this.f45679af(param1))
         {
            if(this.visible)
            {
               this.hide();
            }
            else
            {
               this.show();
            }
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.c490035d();
         this.ce785b7();
      }
      
      private function addLine(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Array = param1.split(§5214239253239266123423632234§);
         for each(_loc3_ in _loc5_)
         {
            if(!(Boolean(this.filter) && _loc3_.indexOf(this.filter) < 0))
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  this.buffer.add(_loc3_.substr(_loc4_,this.§5214235946235959123423632234§));
                  _loc2_++;
                  _loc4_ += this.§5214235946235959123423632234§;
               }
            }
         }
         return _loc2_;
      }
      
      private function bc623ee(param1:String, param2:String) : int
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Array = param2.split(§5214239253239266123423632234§);
         var _loc3_:int = this.§5214235946235959123423632234§ - param1.length;
         for each(_loc5_ in _loc7_)
         {
            if(!(Boolean(this.filter) && _loc5_.indexOf(this.filter) < 0))
            {
               _loc6_ = 0;
               while(_loc6_ < _loc5_.length)
               {
                  this.buffer.add(param1 + _loc5_.substr(_loc6_,_loc3_));
                  _loc4_++;
                  _loc6_ += _loc3_;
               }
            }
         }
         return _loc4_;
      }
      
      private function c29e3d9(param1:MouseEvent) : void
      {
         this.c4272757(-param1.delta);
      }
      
      private function clamp(param1:int, param2:int, param3:int) : int
      {
         if(param1 < param2)
         {
            return param2;
         }
         if(param1 > param3)
         {
            return param3;
         }
         return param1;
      }
      
      private function c490035d() : void
      {
         var _loc2_:int = 0.01 * this.§52142329623309123423632234§ * this.stage.stageHeight;
         var _loc3_:int = 0.01 * this.§5214238031238044123423632234§ * this.stage.stageWidth;
         var _loc1_:int = _loc2_ - 20;
         this.b69fb54b(_loc3_,_loc1_);
         this.§5214237335237348123423632234§.y = _loc1_;
         this.§5214237335237348123423632234§.width = _loc3_;
      }
      
      private function ce785b7() : void
      {
         var _loc1_:int = this.align & 3;
         switch(_loc1_ - 1)
         {
            case 0:
               this.container.x = 0;
               break;
            case 1:
               this.container.x = this.stage.stageWidth - this.container.width;
               break;
            case 2:
               this.container.x = this.stage.stageWidth - this.container.width >> 1;
         }
         var _loc2_:int = this.align >> 2 & 3;
         switch(_loc2_ - 1)
         {
            case 0:
               this.container.y = 0;
               break;
            case 1:
               this.container.y = this.stage.stageHeight - this.container.height;
               break;
            case 2:
               this.container.y = this.stage.stageHeight - this.container.height >> 1;
         }
      }
      
      private function e7166a3e(param1:§final use in§) : void
      {
         this.hideDelayed(100);
      }
      
      private function e49ba66d(param1:§final use in§) : void
      {
         var _loc3_:§final package super§ = this.buffer.getIterator(0);
         var _loc2_:String = "Console content:\r\n";
         while(_loc3_.hasNext())
         {
            _loc2_ += _loc3_.getNext() + "\r\n";
         }
         System.setClipboard(_loc2_);
         this.addText("Content has been copied to clipboard");
      }
      
      private function c9bf222(param1:§final use in§) : void
      {
         this.buffer.clear();
         this.c4272757(0);
      }
      
      private function e2c5a039(param1:§final use in§, param2:int) : void
      {
         this.horizontalAlignment = param2;
      }
      
      private function b756fc53(param1:§final use in§, param2:int) : void
      {
         this.vericalAlignment = param2;
      }
      
      private function b75726e7(param1:§final use in§, param2:int) : void
      {
         this.setSize(param2,this.§52142329623309123423632234§);
      }
      
      private function c2685808(param1:§final use in§, param2:int) : void
      {
         this.setSize(this.§5214238031238044123423632234§,param2);
      }
      
      private function d69d59e3(param1:§final use in§, param2:Number) : void
      {
         this.alpha = param2;
      }
      
      private function f2263a64(param1:§final use in§, param2:uint) : void
      {
         this.c490035d();
         this.§5214237335237348123423632234§.backgroundColor = param2;
         param1.addText("Background color set to " + param2);
      }
      
      private function c5e69d40(param1:§final use in§, param2:uint) : void
      {
         var _loc3_:TextField = null;
         §switch switch super§.color = param2;
         this.§5214237335237348123423632234§.textColor = param2;
         this.§5214237335237348123423632234§.defaultTextFormat = §switch switch super§;
         for each(_loc3_ in this.§5214234178234191123423632234§)
         {
            _loc3_.textColor = param2;
            _loc3_.defaultTextFormat = §switch switch super§;
         }
         param1.addText("Foreground color set to " + param2);
      }
      
      private function a730634f(param1:§5214235900235913123423632234§, param2:Array) : void
      {
         this.b6387f24(param2[0],false);
      }
      
      private function f1d18ec(param1:§5214235900235913123423632234§, param2:Array) : void
      {
         this.b6387f24(param2[0],true);
      }
      
      private function b6387f24(param1:String, param2:Boolean) : void
      {
         var _loc5_:ConsoleVar = null;
         var _loc6_:Array = [];
         for(var _loc4_ in this.variables)
         {
            if(param1 == null || param1 == "" || _loc4_.indexOf(param1) == 0)
            {
               _loc5_ = this.variables[_loc4_];
               _loc6_.push(param2 ? _loc4_ + " = " + _loc5_.toString() : _loc4_);
            }
         }
         if(_loc6_.length > 0)
         {
            _loc6_.sort();
            for each(var _loc3_ in _loc6_)
            {
               this.addText(_loc3_);
            }
         }
      }
      
      public function setCommandHandler(param1:String, param2:Function) : void
      {
      }
      
      public function removeCommandHandler(param1:String) : void
      {
      }
   }
}

