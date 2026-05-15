package §continue const finally§
{
   import §5214233785233798123423632234§.§do set break§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.utils.getTimer;
   
   public class InventoryItem
   {
      
      private var id:int;
      
      private var §catch const break§:§native switch false§;
      
      private var §52142370823721123423632234§:String;
      
      private var icon:§do set break§;
      
      private var §default package switch§:int = -1;
      
      private var §521423119462311959123423632234§:int;
      
      public function InventoryItem(param1:String, param2:int, param3:int, param4:int)
      {
         super();
         this.§52142370823721123423632234§ = param1;
         this.id = param2;
         this.icon = new §do set break§(param2);
         this.§catch const break§ = new §5214235507235520123423632234§(param3);
         this.§521423119462311959123423632234§ = param4;
      }
      
      public function getItemID() : String
      {
         return this.§52142370823721123423632234§;
      }
      
      public function getCooldownStatus(param1:int) : Number
      {
         if(this.§default package switch§ == -1)
         {
            return 1;
         }
         var _loc2_:Number = (param1 - this.§default package switch§) / this.§521423119462311959123423632234§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
            this.clearCooldown();
         }
         return _loc2_;
      }
      
      public function startCooldown(param1:int) : void
      {
         this.§521423119462311959123423632234§ = param1;
         this.§default package switch§ = getTimer();
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function clearCooldown() : void
      {
         this.§default package switch§ = -1;
      }
      
      public function set count(param1:int) : void
      {
         this.§catch const break§.§5214231491231504123423632234§(param1);
      }
      
      public function canActivate() : Boolean
      {
         return this.§default package switch§ < 0 && (this.§catch const break§.§521423128592312872123423632234§() > 0 || this.§catch const break§.§521423128592312872123423632234§() == -1);
      }
      
      public function get count() : int
      {
         return this.§catch const break§.§521423128592312872123423632234§();
      }
      
      public function getCooldownTime() : int
      {
         return this.§521423119462311959123423632234§;
      }
      
      public function getIcon() : §do set break§
      {
         return this.icon;
      }
   }
}

