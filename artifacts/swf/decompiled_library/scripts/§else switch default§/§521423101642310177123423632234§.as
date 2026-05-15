package §else switch default§
{
   import alternativa.tanks.battle.*;
   
   public class §521423101642310177123423632234§
   {
      
      private var §function catch for§:Vector.<§override for default§> = new Vector.<§override for default§>();
      
      private var §521423102842310297123423632234§:int;
      
      private var §5214234636234649123423632234§:Boolean;
      
      private const §const const continue§:Vector.<§5214233428233441123423632234§> = new Vector.<§5214233428233441123423632234§>();
      
      public function §521423101642310177123423632234§()
      {
         super();
      }
      
      public function §521423129322312945123423632234§(param1:§override for default§) : void
      {
         var _loc2_:int = 0;
         if(this.§5214234636234649123423632234§)
         {
            this.§const const continue§[§const const continue§.length] = new §5214238384238397123423632234§(this,param1);
         }
         else
         {
            _loc2_ = this.§function catch for§.indexOf(param1);
            if(_loc2_ >= 0)
            {
               this.§function catch for§[_loc2_] = this.§function catch for§[--this.§521423102842310297123423632234§];
               this.§function catch for§[this.§521423102842310297123423632234§] = null;
            }
         }
      }
      
      public function §5214231991232004123423632234§(param1:§override for default§) : void
      {
         if(this.§5214234636234649123423632234§)
         {
            this.§const const continue§[§const const continue§.length] = new §super package function§(this,param1);
         }
         else if(this.§function catch for§.indexOf(param1) < 0)
         {
            this.§function catch for§[this.§521423102842310297123423632234§++] = param1;
         }
      }
      
      private function §catch for extends§() : void
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
      
      public function render(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§override for default§ = null;
         this.§5214234636234649123423632234§ = true;
         while(_loc4_ < this.§521423102842310297123423632234§)
         {
            _loc3_ = this.§function catch for§[_loc4_];
            _loc3_.render(param1,param2);
            _loc4_++;
         }
         this.§5214234636234649123423632234§ = false;
         this.§catch for extends§();
      }
   }
}

