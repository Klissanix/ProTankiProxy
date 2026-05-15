package §else switch default§
{
   import alternativa.engine3d.objects.Decal;
   import alternativa.tanks.battle.BattleService;
   import flash.utils.getTimer;
   
   public class §for use get§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var §5214231114231127123423632234§:int;
      
      private var §5214233245233258123423632234§:Vector.<§521423125752312588123423632234§> = new Vector.<§521423125752312588123423632234§>();
      
      private var §521423102392310252123423632234§:int;
      
      public function §for use get§(param1:int)
      {
         super();
         this.§5214231114231127123423632234§ = param1;
      }
      
      public function §5214238820238833123423632234§(param1:Decal) : void
      {
         this.§5214233245233258123423632234§[this.§521423102392310252123423632234§++] = new §521423125752312588123423632234§(param1,getTimer());
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc3_:§521423125752312588123423632234§ = null;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = this.§521423102392310252123423632234§;
         _loc5_ = 0;
         while(_loc5_ < _loc7_)
         {
            _loc3_ = this.§5214233245233258123423632234§[_loc5_];
            _loc4_ = param1 - _loc3_.§throw package package§;
            if(_loc4_ > this.§5214231114231127123423632234§)
            {
               _loc6_++;
               §52142380523818123423632234§.getBattleScene3D().§override override§(_loc3_.§521423114782311491123423632234§);
               --this.§521423102392310252123423632234§;
            }
            else
            {
               _loc3_.§521423114782311491123423632234§.alpha = 1 - _loc4_ / this.§5214231114231127123423632234§;
               if(_loc6_ > 0)
               {
                  this.§5214233245233258123423632234§[_loc5_ - _loc6_] = _loc3_;
               }
            }
            _loc5_++;
         }
         _loc5_ = this.§521423102392310252123423632234§;
         while(_loc5_ < _loc7_)
         {
            this.§5214233245233258123423632234§[_loc5_] = null;
            _loc5_++;
         }
      }
   }
}

