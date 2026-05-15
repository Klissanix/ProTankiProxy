package §continue catch default§
{
   public class §get use return§
   {
      
      public var §5214237114237127123423632234§:Vector.<Number>;
      
      private var §else const in§:Number;
      
      private var §5214232241232254123423632234§:Number;
      
      private var §521423125592312572123423632234§:Vector.<int>;
      
      private var dynamic:Vector.<Number>;
      
      private var §set for dynamic§:int;
      
      private var §implements for final§:Vector.<Number>;
      
      private var §5214233298233311123423632234§:Vector.<int>;
      
      private var §package use while§:Number;
      
      private var §native const case§:int = 0;
      
      public function §get use return§(param1:Number, param2:Number, param3:Vector.<int>, param4:Vector.<Number>)
      {
         super();
         this.§5214232241232254123423632234§ = param1;
         this.§else const in§ = param2;
         this.§521423125592312572123423632234§ = param3;
         this.dynamic = param4;
         this.§package use while§ = param2 - param1;
         this.§set for dynamic§ = param3.length;
         this.§implements for final§ = new Vector.<Number>(this.§set for dynamic§);
         this.§5214233298233311123423632234§ = new Vector.<int>(this.§set for dynamic§);
         this.§5214237114237127123423632234§ = new Vector.<Number>(this.§set for dynamic§);
      }
      
      public function §521423129602312973123423632234§() : void
      {
         --this.§native const case§;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         if(this.§native const case§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§set for dynamic§)
         {
            var _loc4_:* = _loc3_;
            var _loc5_:* = this.§5214237114237127123423632234§[_loc4_] + this.§implements for final§[_loc3_] * param2;
            this.§5214237114237127123423632234§[_loc4_] = _loc5_;
            if(this.§5214237114237127123423632234§[_loc3_] > this.§else const in§)
            {
               this.§5214237114237127123423632234§[_loc3_] = this.§else const in§;
            }
            if(this.§5214237114237127123423632234§[_loc3_] < this.§5214232241232254123423632234§)
            {
               this.§5214237114237127123423632234§[_loc3_] = this.§5214232241232254123423632234§;
            }
            if(param1 >= this.§5214233298233311123423632234§[_loc3_])
            {
               _loc5_ = _loc3_;
               _loc4_ = this.§5214233298233311123423632234§[_loc5_] + this.§521423125592312572123423632234§[_loc3_];
               this.§5214233298233311123423632234§[_loc5_] = _loc4_;
               if(this.§implements for final§[_loc3_] < 0)
               {
                  this.§implements for final§[_loc3_] = this.§continue catch function§(1,this.dynamic[_loc3_],this.§521423125592312572123423632234§[_loc3_]);
               }
               else
               {
                  this.§implements for final§[_loc3_] = this.§continue catch function§(-1,this.dynamic[_loc3_],this.§521423125592312572123423632234§[_loc3_]);
               }
            }
            _loc3_++;
         }
      }
      
      private function init(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§set for dynamic§)
         {
            this.§implements for final§[_loc2_] = this.§continue catch function§(-1,this.dynamic[_loc2_],this.§521423125592312572123423632234§[_loc2_]);
            this.§5214237114237127123423632234§[_loc2_] = this.§else const in§;
            this.§5214233298233311123423632234§[_loc2_] = param1 + this.§521423125592312572123423632234§[_loc2_];
            _loc2_++;
         }
      }
      
      public function §native var include§(param1:int) : void
      {
         if(this.§native const case§ == 0)
         {
            this.init(param1);
         }
         ++this.§native const case§;
      }
      
      private function §continue catch function§(param1:Number, param2:Number, param3:int) : Number
      {
         return param1 * param2 * this.§package use while§ / param3;
      }
   }
}

