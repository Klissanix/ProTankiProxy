package §default while§
{
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.§final use in§;
   import flash.system.System;
   
   public class DefaultCommands
   {
      
      private var §5214233864233877123423632234§:CommandServiceImpl;
      
      public function DefaultCommands(param1:CommandService)
      {
         super();
         this.§5214233864233877123423632234§ = param1 as CommandServiceImpl;
         param1.registerCommand("cmd","help","Список всех команд",[],this.b18b83a);
         param1.registerCommand("cmd","help","Помощь по конкретной команде",[String],this.d315ce99);
         param1.registerCommand("cmd","grep","Поиск по строке",[String,Vector],this.d326ae40);
         param1.registerCommand("cmd","clip","Копировать вывод конвеера в буфер обмена",[Vector],this.b54b41da);
      }
      
      private function b1cc7e86(param1:Command, param2:Command) : Number
      {
         var _loc3_:int = param1.§5214232929232942123423632234§.localeCompare(param2.§5214232929232942123423632234§);
         if(_loc3_ != 0)
         {
            return _loc3_;
         }
         return param1.cmd.localeCompare(param2.cmd);
      }
      
      private function b18b83a(param1:§final use in§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Command = null;
         var _loc2_:Vector.<Command> = this.§5214233864233877123423632234§.§break catch while§.sort(this.b1cc7e86);
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_];
            param1.addText(_loc4_.§5214232929232942123423632234§ + "." + _loc4_.cmd);
            _loc3_++;
         }
      }
      
      private function b54b41da(param1:§final use in§, param2:Vector.<String>) : void
      {
         var _loc3_:String = param2.join("\n");
         System.setClipboard(_loc3_);
         param1.addLines(param2);
      }
      
      private function d326ae40(param1:§final use in§, param2:String, param3:Vector.<String>) : void
      {
         for each(var _loc4_ in param3)
         {
            if(_loc4_.indexOf(param2) != -1)
            {
               param1.addText(_loc4_);
            }
         }
      }
      
      private function d315ce99(param1:§final use in§, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Command = null;
         var _loc3_:Boolean = false;
         while(_loc4_ < this.§5214233864233877123423632234§.§break catch while§.length)
         {
            _loc5_ = this.§5214233864233877123423632234§.§break catch while§[_loc4_];
            if(_loc5_.§5214232929232942123423632234§ + "." + _loc5_.cmd == param2 || _loc5_.§5214232929232942123423632234§ + "." + _loc5_.cmd == "cmd." + param2)
            {
               param1.addText(_loc5_.§5214232929232942123423632234§ + "." + _loc5_.cmd + " " + _loc5_.help());
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            param1.addText("Команда не найдена " + param2);
         }
      }
   }
}

