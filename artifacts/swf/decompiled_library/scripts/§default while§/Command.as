package §default while§
{
   import alternativa.osgi.service.command.§final use in§;
   
   public class Command
   {
      
      public var cmd:String;
      
      public var §throw set get§:Function;
      
      public var argsType:Array;
      
      public var §5214232929232942123423632234§:String;
      
      private var §5214231175231188123423632234§:String;
      
      public function Command(param1:String, param2:String, param3:String, param4:Array, param5:Function)
      {
         super();
         this.§5214231175231188123423632234§ = param3;
         this.§5214232929232942123423632234§ = param1;
         this.argsType = param4;
         this.§throw set get§ = param5;
         this.cmd = param2;
      }
      
      public function excute(param1:Array, param2:§final use in§) : void
      {
         var _loc4_:int = 0;
         var _loc3_:Array = [];
         _loc3_[0] = param2;
         while(_loc4_ < param1.length)
         {
            _loc3_[_loc4_ + 1] = param1[_loc4_];
            _loc4_++;
         }
         this.§throw set get§.apply(null,_loc3_);
      }
      
      public function help() : String
      {
         return this.argsType + " " + this.§5214231175231188123423632234§;
      }
   }
}

