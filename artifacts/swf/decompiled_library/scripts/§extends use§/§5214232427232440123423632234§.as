package §extends use§
{
   import §5214233785233798123423632234§.§case for super§;
   import §const use implements§.§dynamic include§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §function catch if§.§5214233965233978123423632234§;
   
   public class §5214232427232440123423632234§ extends Sprite
   {
      
      private const §switch for static§:int = 400;
      
      private var §521423127832312796123423632234§:Array;
      
      private var §5214238069238082123423632234§:§case for super§;
      
      private var §521423133682313381123423632234§:§5214233965233978123423632234§;
      
      private var §5214235072235085123423632234§:Vector.<String>;
      
      private var §521423112052311218123423632234§:Vector.<String>;
      
      private var §5214235501235514123423632234§:Number = 0;
      
      private var §52142387023883123423632234§:Number = 0;
      
      public function §5214232427232440123423632234§(param1:Vector.<String>, param2:Vector.<String>, param3:§5214233965233978123423632234§)
      {
         super();
         this.§521423133682313381123423632234§ = param3;
         this.§5214235072235085123423632234§ = param1;
         this.§521423112052311218123423632234§ = param2;
         this.init();
      }
      
      protected function init() : void
      {
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§case for super§ = null;
         var _loc3_:§case for super§ = null;
         this.§5214235501235514123423632234§ = param1;
         this.§52142387023883123423632234§ = param2;
         if(this.§521423127832312796123423632234§ != null)
         {
            _loc6_ = int(this.§521423127832312796123423632234§.length);
            _loc7_ = (param1 - (_loc6_ - 1) * 4 + 1) / _loc6_;
            _loc4_ = 0;
            while(_loc4_ < this.§521423127832312796123423632234§.length)
            {
               _loc5_ = this.§521423127832312796123423632234§[_loc4_].button;
               _loc5_.width = _loc7_;
               if(_loc4_ != 0)
               {
                  _loc3_ = this.§521423127832312796123423632234§[_loc4_ - 1].button;
                  _loc5_.x = _loc3_.x + _loc3_.width + 4;
               }
               _loc4_++;
            }
            this.§throw finally dynamic§();
         }
      }
      
      public function §in package else§() : §dynamic include§
      {
         return §dynamic include§(this.§5214238069238082123423632234§.data);
      }
      
      private function §throw finally dynamic§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = this.§5214235501235514123423632234§ > 400;
         var _loc3_:int = 0;
         while(_loc3_ < this.§521423127832312796123423632234§.length)
         {
            _loc1_ = int(this.§521423127832312796123423632234§[_loc3_].id);
            §case for super§(this.§521423127832312796123423632234§[_loc3_]["button"]).label = _loc2_ ? this.§5214235072235085123423632234§[_loc1_] : this.§521423112052311218123423632234§[_loc1_];
            _loc3_++;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         if(this.§521423127832312796123423632234§ != null)
         {
            this.removeEvents();
            _loc1_ = 0;
            while(_loc1_ < this.§521423127832312796123423632234§.length)
            {
               removeChild(this.§521423127832312796123423632234§[_loc1_].button);
               this.§521423127832312796123423632234§[_loc1_] = null;
               _loc1_++;
            }
         }
         this.§521423127832312796123423632234§ = null;
      }
      
      public function setEvents() : void
      {
         var _loc1_:§case for super§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§521423127832312796123423632234§.length)
         {
            _loc1_ = this.§521423127832312796123423632234§[_loc2_].button;
            _loc1_.addEventListener("click",this.§5214236857236870123423632234§);
            _loc2_++;
         }
      }
      
      public function §do default§(param1:Vector.<§dynamic include§>) : void
      {
         var _loc2_:§case for super§ = null;
         var _loc3_:Object = null;
         this.destroy();
         this.§521423127832312796123423632234§ = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_ = new §case for super§();
            _loc2_.data = param1[_loc4_];
            _loc2_.label = this.§5214235072235085123423632234§[param1[_loc4_].value];
            addChild(_loc2_);
            _loc3_ = {};
            _loc3_.id = param1[_loc4_].value;
            _loc3_.button = _loc2_;
            this.§521423127832312796123423632234§[_loc4_] = _loc3_;
            _loc4_++;
         }
         this.§521423127832312796123423632234§.sortOn(["id"],[16]);
         this.setEvents();
         this.resize(this.§5214235501235514123423632234§,this.§52142387023883123423632234§);
      }
      
      public function §set set static§(param1:§dynamic include§) : void
      {
         var _loc2_:§case for super§ = null;
         if(this.§5214238069238082123423632234§ != null)
         {
            this.§5214238069238082123423632234§.enabled = true;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§521423127832312796123423632234§.length)
         {
            _loc2_ = this.§521423127832312796123423632234§[_loc3_].button;
            if(param1 == §dynamic include§(_loc2_.data))
            {
               this.§5214238069238082123423632234§ = _loc2_;
               this.§5214238069238082123423632234§.enabled = false;
            }
            _loc3_++;
         }
      }
      
      public function removeEvents() : void
      {
         var _loc1_:§case for super§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§521423127832312796123423632234§.length)
         {
            _loc1_ = this.§521423127832312796123423632234§[_loc2_].button;
            _loc1_.removeEventListener("click",this.§5214236857236870123423632234§);
            _loc2_++;
         }
      }
      
      public function §521423105782310591123423632234§() : Number
      {
         return this.§521423127832312796123423632234§ != null ? Number(this.§521423127832312796123423632234§[0].button.height) : 10;
      }
      
      private function §5214236857236870123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§dynamic include§ = §dynamic include§((param1.currentTarget as §case for super§).data);
         this.§521423133682313381123423632234§.onClickTypeBattleButton(_loc2_);
      }
   }
}

