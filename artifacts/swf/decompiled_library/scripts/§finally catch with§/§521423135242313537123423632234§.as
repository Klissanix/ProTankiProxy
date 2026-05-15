package §finally catch with§
{
   import flash.utils.Dictionary;
   
   public class §521423135242313537123423632234§
   {
      
      private var §implements package final§:Vector.<Object>;
      
      private var §521423102312310244123423632234§:Dictionary;
      
      public function §521423135242313537123423632234§(param1:Dictionary)
      {
         super();
         this.§implements package final§ = new Vector.<Object>();
         this.§521423102312310244123423632234§ = param1;
      }
      
      public function §try override§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(this.§implements package final§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            delete this.§521423102312310244123423632234§[this.§implements package final§[_loc2_]];
            _loc2_++;
         }
         this.§implements package final§.length = 0;
      }
      
      public function §else const implements§(param1:Object) : void
      {
         this.§521423102312310244123423632234§[param1] = true;
         this.§implements package final§[§implements package final§.length] = param1;
      }
   }
}

