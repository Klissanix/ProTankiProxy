package §default while§
{
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.§final use in§;
   
   public class CommandServiceImpl implements CommandService
   {
      
      private static const §5214234362234375123423632234§:RegExp = /(?:[^"\s]+)|(?:"[^"]*")/g;
      
      private const §521423105262310539123423632234§:String = "cmd";
      
      public var §break catch while§:Vector.<Command> = new Vector.<Command>();
      
      public function CommandServiceImpl()
      {
         super();
      }
      
      private function e74488e9(param1:String, param2:Array, param3:§final use in§) : void
      {
         var _loc7_:int = 0;
         var _loc6_:Array = null;
         var _loc5_:String = null;
         var _loc9_:String = null;
         var _loc11_:Command = null;
         param1 = param1.replace(/^\s+|\s+$/g,"");
         var _loc4_:Array = param1.match(§5214234362234375123423632234§);
         if(_loc4_.length == 0)
         {
            throw new CommandNotFoundError(param1,"");
         }
         var _loc10_:Array = (_loc4_[0] as String).split(".");
         if(_loc10_.length == 1)
         {
            _loc5_ = "cmd";
            _loc9_ = String(_loc10_[0]);
         }
         else
         {
            if(_loc10_.length != 2)
            {
               throw new InvalidCommandFormatError(param1);
            }
            _loc5_ = String(_loc10_[0]);
            _loc9_ = String(_loc10_[1]);
         }
         _loc4_.shift();
         while(_loc7_ < this.§break catch while§.length)
         {
            _loc11_ = this.§break catch while§[_loc7_];
            if(this.f5ec34f0(_loc11_,_loc5_,_loc9_))
            {
               if(_loc11_.argsType.length === _loc4_.length + param2.length)
               {
                  _loc6_ = this.a334f35b(_loc11_.argsType,_loc4_);
                  _loc6_ = _loc6_.concat(param2);
                  _loc11_.excute(_loc6_,param3);
                  return;
               }
            }
            _loc7_++;
         }
         var _loc8_:String = "";
         _loc7_ = 0;
         while(_loc7_ < this.§break catch while§.length)
         {
            _loc11_ = this.§break catch while§[_loc7_];
            if(_loc11_.§5214232929232942123423632234§ != "cmd")
            {
               if(_loc11_.cmd == _loc9_ || _loc11_.§5214232929232942123423632234§ == _loc5_ || _loc11_.§5214232929232942123423632234§ == _loc9_)
               {
                  _loc8_ += _loc11_.§5214232929232942123423632234§ + "." + _loc11_.cmd + " " + _loc11_.help() + "\n";
               }
            }
            _loc7_++;
         }
         throw new CommandNotFoundError(param1,_loc8_);
      }
      
      public function removeCommand(param1:String, param2:String, param3:Array) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Command = null;
         while(_loc4_ < this.§break catch while§.length)
         {
            _loc5_ = this.§break catch while§[_loc4_];
            if(this.f5ec34f0(_loc5_,param1,param2))
            {
               if(_loc5_.argsType.toString() == param3.toString())
               {
                  this.§break catch while§.removeAt(_loc4_);
                  return;
               }
            }
            _loc4_++;
         }
      }
      
      private function a334f35b(param1:Array, param2:Array) : Array
      {
         var argsType:Array = param1;
         var stringParams:Array = param2;
         return stringParams.map(function(param1:*, param2:int, param3:Array):*
         {
            var _loc4_:String = null;
            var _loc5_:*;
            switch(_loc5_ = argsType[param2])
            {
               case String:
                  _loc4_ = param1 as String;
                  if(_loc4_.charAt(0) == "\"")
                  {
                     _loc4_ = _loc4_.substr(1);
                  }
                  if(_loc4_.charAt(_loc4_.length - 1) == "\"")
                  {
                     _loc4_ = _loc4_.substr(0,_loc4_.length - 1);
                  }
                  return _loc4_;
               case int:
                  return int(param1);
               case uint:
                  return uint(param1);
               case Number:
                  return Number(param1);
               default:
                  return;
            }
         });
      }
      
      private function f5ec34f0(param1:Command, param2:String, param3:String) : Boolean
      {
         return param1.§5214232929232942123423632234§ == param2 && param1.cmd == param3;
      }
      
      public function execute(param1:String, param2:§final use in§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc6_:* = undefined;
         var _loc5_:Vector.<String> = this.f24b3676(param1);
         var _loc7_:FormattedOutputToString = new FormattedOutputToString();
         this.e74488e9(_loc5_[0],[],_loc7_);
         _loc3_ = 1;
         while(_loc3_ < _loc5_.length)
         {
            _loc4_ = _loc5_[_loc3_];
            _loc6_ = _loc7_.content;
            _loc7_ = new FormattedOutputToString();
            this.e74488e9(_loc4_,[_loc6_],_loc7_);
            _loc3_++;
         }
         param2.addLines(_loc7_.content);
      }
      
      public function registerCommand(param1:String, param2:String, param3:String, param4:Array, param5:Function) : void
      {
         var _loc6_:Command = new Command(param1,param2,param3,param4,param5);
         this.§break catch while§[§break catch while§.length] = _loc6_;
      }
      
      private function f24b3676(param1:String) : Vector.<String>
      {
         var _loc3_:String = null;
         var _loc2_:String = null;
         var _loc8_:Vector.<String> = new Vector.<String>();
         var _loc4_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc3_ = param1.charAt(_loc6_);
            if(_loc3_ == "\"")
            {
               _loc4_ = !_loc4_;
            }
            if(_loc3_ == "|" && _loc4_)
            {
               _loc2_ = param1.substr(_loc5_,_loc6_ - _loc5_);
               _loc8_[_loc8_.length] = _loc2_;
               _loc5_ = _loc6_ + 1;
            }
            _loc6_++;
         }
         var _loc7_:String = param1.substr(_loc5_,param1.length - _loc5_);
         _loc8_[_loc8_.length] = _loc7_;
         return _loc8_;
      }
   }
}

