package §break switch§
{
   import alternativa.tanks.battle.§5214233428233441123423632234§;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import §each var null§.§const throw§;
   
   public class Triggers
   {
      
      private const §5214235778235791123423632234§:Vector.<§5214234639234652123423632234§> = new Vector.<§5214234639234652123423632234§>();
      
      private const §const const continue§:Vector.<§5214233428233441123423632234§> = new Vector.<§5214233428233441123423632234§>();
      
      private var §break catch function§:Boolean;
      
      public function Triggers()
      {
         super();
      }
      
      public function check(param1:§const throw§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:§5214234639234652123423632234§ = null;
         if(param1 != null)
         {
            this.§break catch function§ = true;
            _loc3_ = int(this.§5214235778235791123423632234§.length);
            while(_loc2_ < _loc3_)
            {
               _loc4_ = this.§5214235778235791123423632234§[_loc2_];
               _loc4_.checkTrigger(param1);
               _loc2_++;
            }
            this.§break catch function§ = false;
            this.a61a8128();
         }
      }
      
      public function add(param1:§5214234639234652123423632234§) : void
      {
         if(this.§break catch function§)
         {
            this.§const const continue§[§const const continue§.length] = new DeferredTriggerAddition(this,param1);
         }
         else if(this.§5214235778235791123423632234§.indexOf(param1) < 0)
         {
            this.§5214235778235791123423632234§[§5214235778235791123423632234§.length] = param1;
         }
      }
      
      public function remove(param1:§5214234639234652123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§break catch function§)
         {
            this.§const const continue§[§const const continue§.length] = new DeferredTriggerDeletion(this,param1);
         }
         else
         {
            _loc2_ = int(this.§5214235778235791123423632234§.length);
            if(_loc2_ > 0)
            {
               _loc3_ = this.§5214235778235791123423632234§.indexOf(param1);
               if(_loc3_ >= 0)
               {
                  this.§5214235778235791123423632234§[_loc3_] = this.§5214235778235791123423632234§[--_loc2_];
                  this.§5214235778235791123423632234§.length = _loc2_;
               }
            }
         }
      }
      
      private function a61a8128() : void
      {
         var _loc1_:§5214233428233441123423632234§ = null;
         while(true)
         {
            _loc1_ = this.§const const continue§.pop();
            if(_loc1_ == null)
            {
               break;
            }
            _loc1_.execute();
         }
      }
   }
}

