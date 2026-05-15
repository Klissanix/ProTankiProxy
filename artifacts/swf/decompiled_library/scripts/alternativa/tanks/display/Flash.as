package alternativa.tanks.display
{
   import flash.utils.getTimer;
   
   public class Flash
   {
      
      private static const SHOW:int = 1;
      
      private static const §with var in§:int = 2;
      
      private static const §5214231127231140123423632234§:int = 3;
      
      private var §5214235238235251123423632234§:uint;
      
      private var §521423140492314062123423632234§:int;
      
      private var §static var throw§:int;
      
      private var state:int = 3;
      
      private var startTime:int;
      
      public function Flash(param1:uint, param2:int, param3:int)
      {
         super();
         this.§5214235238235251123423632234§ = param1;
         this.§521423140492314062123423632234§ = param2;
         this.§static var throw§ = param3;
      }
      
      public static function getDefault() : Flash
      {
         return new Flash(255,100,300);
      }
      
      public function init() : void
      {
         this.startTime = getTimer();
         this.state = 1;
      }
      
      public function getColorOffset(param1:int) : uint
      {
         var _loc2_:uint = 0;
         switch(this.state - 1)
         {
            case 0:
               if(param1 < this.startTime + this.§521423140492314062123423632234§)
               {
                  _loc2_ = this.§5214235238235251123423632234§ * (param1 - this.startTime) / this.§521423140492314062123423632234§;
                  break;
               }
               _loc2_ = this.§5214235238235251123423632234§;
               this.startTime += this.§521423140492314062123423632234§ + this.§static var throw§;
               this.state = 2;
               break;
            case 1:
               if(param1 < this.startTime)
               {
                  _loc2_ = this.§5214235238235251123423632234§ * (this.startTime - param1) / this.§static var throw§;
                  break;
               }
               this.state = 3;
               _loc2_ = 0;
         }
         return _loc2_;
      }
      
      public function isActive() : Boolean
      {
         return this.state != 3;
      }
   }
}

