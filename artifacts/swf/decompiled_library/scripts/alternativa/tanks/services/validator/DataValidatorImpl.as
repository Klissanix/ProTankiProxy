package alternativa.tanks.services.validator
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   
   public class DataValidatorImpl implements DataValidator
   {
      
      private static const §return switch extends§:§native switch false§ = new §5214235507235520123423632234§();
      
      private static const §get for var§:§native switch false§ = new §5214235507235520123423632234§(5);
      
      private var §import catch override§:int;
      
      private var §with set include§:BattleEventDispatcher;
      
      private var §52142352823541123423632234§:Vector.<§5214232026232039123423632234§> = new Vector.<§5214232026232039123423632234§>();
      
      public function DataValidatorImpl(param1:OSGi)
      {
         super();
         this.§with set include§ = BattleEventDispatcher(param1.getService(BattleEventDispatcher));
      }
      
      public function tick() : void
      {
         var _loc2_:int = 0;
         var _loc1_:§5214232026232039123423632234§ = null;
         if(this.§52142352823541123423632234§.length > §return switch extends§.§521423128592312872123423632234§())
         {
            _loc2_ = §return switch extends§.§521423128592312872123423632234§();
            while(_loc2_ < §get for var§.§521423128592312872123423632234§())
            {
               _loc1_ = this.d74a32e9();
               if(_loc1_.hasIncorrectData())
               {
                  this.§with set include§.dispatchEvent(new DataValidationErrorEvent(_loc1_.getType()));
                  break;
               }
               _loc2_++;
            }
         }
      }
      
      public function addValidator(param1:§5214232026232039123423632234§) : void
      {
         if(this.§52142352823541123423632234§.indexOf(param1) < §return switch extends§.§521423128592312872123423632234§())
         {
            this.§52142352823541123423632234§[§52142352823541123423632234§.length] = param1;
         }
      }
      
      public function removeValidator(param1:§5214232026232039123423632234§) : void
      {
         var _loc2_:int = this.§52142352823541123423632234§.indexOf(param1);
         if(_loc2_ >= §return switch extends§.§521423128592312872123423632234§())
         {
            this.§52142352823541123423632234§.removeAt(_loc2_);
         }
      }
      
      private function d74a32e9() : §5214232026232039123423632234§
      {
         §import catch override§ = §import catch override§ + 1;
         if(§import catch override§ >= this.§52142352823541123423632234§.length)
         {
            §import catch override§ = 0;
         }
         return this.§52142352823541123423632234§[§import catch override§];
      }
      
      public function removeAllValidators() : void
      {
         this.§52142352823541123423632234§.length = §return switch extends§.§521423128592312872123423632234§();
      }
   }
}

