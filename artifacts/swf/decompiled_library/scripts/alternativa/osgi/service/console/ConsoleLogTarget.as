package alternativa.osgi.service.console
{
   import §5214235655235668123423632234§.§5214233634233647123423632234§;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.§final use in§;
   import alternativa.osgi.service.logging.LogLevel;
   import alternativa.osgi.service.logging.§else use override§;
   
   public class ConsoleLogTarget implements §else use override§
   {
      
      private static const ANY_CHANNEL:* = "ANY_CHANNEL";
      
      private static const §5214231148231161123423632234§:LogLevel = null;
      
      private const §5214239567239580123423632234§:Vector.<LogEntry> = new Vector.<LogEntry>(0);
      
      private const channels:Object = {};
      
      private var §5214238138238151123423632234§:int;
      
      private var §5214233864233877123423632234§:CommandService;
      
      private var §521423139002313913123423632234§:int;
      
      private var §521423113172311330123423632234§:Object;
      
      private var §catch set package§:Boolean;
      
      private var console:§5214235900235913123423632234§;
      
      public function ConsoleLogTarget(param1:CommandService, param2:§5214235900235913123423632234§, param3:§5214233634233647123423632234§)
      {
         super();
         this.§521423113172311330123423632234§ = {};
         this.console = param2;
         this.§5214233864233877123423632234§ = param1;
         this.§521423139002313913123423632234§ = int(param3.getParameter("log_channel_buffer_size","1000"));
         this.d75cd1b7(param3);
         param1.registerCommand("log","channels","Список каналов",[],this.e3f7253f);
         param1.registerCommand("log","channel","Показать сообщения из канала",[String],this.d2c204ce);
         param1.registerCommand("log","connect","Показывать новые сообщения из канала",[String],this.a5aea7e9);
         param1.registerCommand("log","disconnect","Показывать новые сообщения из канала",[String],this.a6a02361);
         param1.registerCommand("log","trace","Посмотреть trace сообщения",[],this.f2f76c25(LogLevel.TRACE));
         param1.registerCommand("log","info","Посмотреть info сообщения",[],this.f2f76c25(LogLevel.INFO));
         param1.registerCommand("log","warning","Посмотреть warning сообщения",[],this.f2f76c25(LogLevel.WARNING));
         param1.registerCommand("log","debug","Посмотреть debug сообщения",[],this.f2f76c25(LogLevel.DEBUG));
         param1.registerCommand("log","error","Посмотреть error сообщения",[],this.f2f76c25(LogLevel.ERROR));
      }
      
      private function f1e022db(param1:Object) : Vector.<LogEntry>
      {
         var _loc2_:Vector.<LogEntry> = this.f6ce1f7e(param1);
         if(_loc2_ == this.§5214239567239580123423632234§)
         {
            _loc2_ = new Vector.<LogEntry>();
            this.channels[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function log(param1:Object, param2:LogLevel, param3:String, param4:Array = null) : void
      {
         var _loc5_:LogEntry = new LogEntry(this.§5214238138238151123423632234§++,param1,param2,param3,param4);
         var _loc6_:Vector.<LogEntry> = this.f1e022db(param1);
         _loc6_[_loc6_.length] = _loc5_;
         if(Boolean(this.§521423113172311330123423632234§[param1]) || this.§catch set package§)
         {
            this.e5fc00b7(this.console,_loc5_);
         }
         if(_loc6_.length > this.§521423139002313913123423632234§)
         {
            _loc6_.splice(1,100);
         }
      }
      
      private function e76cecd2(param1:LogEntry, param2:*, param3:LogLevel) : Boolean
      {
         if(param1.§521423110412311054123423632234§ != param3 && param3 != null)
         {
            return false;
         }
         if(param1.object != param2 && param2 != "ANY_CHANNEL")
         {
            return false;
         }
         return true;
      }
      
      private function b3fb8b4f(param1:LogLevel) : Vector.<LogEntry>
      {
         var _loc3_:* = undefined;
         var _loc2_:Vector.<LogEntry> = new Vector.<LogEntry>();
         for(var _loc4_ in this.channels)
         {
            _loc3_ = this.channels[_loc4_];
            for each(var _loc5_ in _loc3_)
            {
               if(_loc5_.§521423110412311054123423632234§ == param1)
               {
                  _loc2_[_loc2_.length] = _loc5_;
               }
            }
         }
         _loc2_.sort(this.eac3ea3);
         return _loc2_;
      }
      
      private function d75cd1b7(param1:§5214233634233647123423632234§) : void
      {
         var _loc3_:String = param1.getParameter("showlog");
         if(_loc3_)
         {
            if(_loc3_ == "*")
            {
               this.§catch set package§ = true;
            }
            else
            {
               for each(var _loc2_ in _loc3_.split(","))
               {
                  this.§521423113172311330123423632234§[_loc2_] = true;
               }
            }
         }
      }
      
      private function f2f76c25(param1:LogLevel) : Function
      {
         var logLevel:LogLevel = param1;
         return function(param1:§final use in§):void
         {
            var _loc3_:* = undefined;
            var _loc2_:Vector.<LogEntry> = b3fb8b4f(logLevel);
            for each(_loc3_ in _loc2_)
            {
               e5fc00b7(param1,_loc3_);
            }
         };
      }
      
      private function a5aea7e9(param1:§final use in§, param2:String) : void
      {
         this.§521423113172311330123423632234§[param2] = param2;
      }
      
      private function f6ce1f7e(param1:Object) : Vector.<LogEntry>
      {
         return this.channels[param1] ? this.channels[param1] : this.§5214239567239580123423632234§;
      }
      
      private function a6a02361(param1:§final use in§, param2:String) : void
      {
         delete this.§521423113172311330123423632234§[param2];
      }
      
      private function eac3ea3(param1:LogEntry, param2:LogEntry) : Number
      {
         return param1.§5214233353233366123423632234§ - param2.§5214233353233366123423632234§;
      }
      
      private function d2c204ce(param1:§final use in§, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:LogEntry = null;
         var _loc4_:Vector.<LogEntry> = this.f6ce1f7e(param2);
         while(_loc3_ < _loc4_.length)
         {
            _loc5_ = _loc4_[_loc3_];
            if(this.e76cecd2(_loc5_,param2,null))
            {
               this.e5fc00b7(param1,_loc5_);
            }
            _loc3_++;
         }
      }
      
      private function e5fc00b7(param1:§final use in§, param2:LogEntry) : void
      {
         param1.addText(param2.§521423110412311054123423632234§.getName() + " [" + param2.object + "] " + this.b41dff77(param2.message,param2.params));
      }
      
      private function e3f7253f(param1:§final use in§) : void
      {
         for(var _loc2_ in this.channels)
         {
            param1.addText(_loc2_);
         }
      }
      
      private function b41dff77(param1:String, param2:Array) : String
      {
         var _loc3_:int = 0;
         if(param2 != null)
         {
            while(_loc3_ < param2.length)
            {
               param1 = param1.replace("%" + (_loc3_ + 1),param2[_loc3_]);
               _loc3_++;
            }
         }
         return param1;
      }
   }
}

