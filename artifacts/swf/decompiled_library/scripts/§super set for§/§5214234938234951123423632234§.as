package §super set for§
{
   import alternativa.tanks.battle.BattleService;
   import flash.utils.Dictionary;
   
   public class §5214234938234951123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var §switch package null§:Dictionary;
      
      private var §package true§:Class;
      
      private var §5214233928233941123423632234§:Boolean;
      
      private var §52142327123284123423632234§:Number = 0;
      
      private var §dynamic finally var§:Number = 0;
      
      private var §5214237362237375123423632234§:int;
      
      private var §import continue§:int;
      
      public function §5214234938234951123423632234§(param1:Class, param2:Number, param3:int)
      {
         super();
         this.§switch package null§ = new Dictionary();
         this.§package true§ = param1;
         this.§52142327123284123423632234§ = param2;
         this.§import continue§ = param3;
      }
      
      protected function §521423110642311077123423632234§(param1:§static switch if§) : void
      {
      }
      
      private function §521423109232310936123423632234§(param1:§static switch if§) : void
      {
         this.§521423128772312890123423632234§(param1);
         delete this.§switch package null§[param1];
         param1.§521423117092311722123423632234§();
         --this.§5214237362237375123423632234§;
      }
      
      public function §native var include§() : void
      {
         this.§5214233928233941123423632234§ = true;
      }
      
      protected function §override var get§(param1:§static switch if§, param2:Number) : void
      {
      }
      
      private function §5214234971234984123423632234§() : void
      {
         var _loc1_:§static switch if§ = §static switch if§(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(this.§package true§));
         _loc1_.alive = true;
         this.§521423110642311077123423632234§(_loc1_);
         this.§switch package null§[_loc1_] = true;
         ++this.§5214237362237375123423632234§;
      }
      
      protected function §521423128772312890123423632234§(param1:§static switch if§) : void
      {
      }
      
      public function §false set final§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = null;
         for(_loc2_ in this.§switch package null§)
         {
            this.§521423109232310936123423632234§(_loc2_);
         }
         this.§521423129602312973123423632234§();
      }
      
      public function §521423120402312053123423632234§(param1:Number) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc3_:* = null;
         if(this.§5214233928233941123423632234§)
         {
            this.§dynamic finally var§ += param1;
            if(this.§dynamic finally var§ >= this.§52142327123284123423632234§)
            {
               this.§dynamic finally var§ = 0;
               if(this.§5214237362237375123423632234§ < this.§import continue§)
               {
                  this.§5214234971234984123423632234§();
               }
            }
         }
         for(_loc3_ in this.§switch package null§)
         {
            this.§override var get§(_loc3_,param1);
            if(!_loc3_.alive)
            {
               this.§521423109232310936123423632234§(_loc3_);
            }
         }
         return this.§5214233928233941123423632234§ || this.§5214237362237375123423632234§ > 0;
      }
      
      public function §521423129602312973123423632234§() : void
      {
         this.§5214233928233941123423632234§ = false;
      }
   }
}

