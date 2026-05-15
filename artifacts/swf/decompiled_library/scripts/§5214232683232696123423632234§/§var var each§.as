package §5214232683232696123423632234§
{
   import §const var try§.MessageContainer;
   import §const var try§.MessageLine;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §static const throw§.ChatOutputLineEvent;
   import §try const default§.§5214234998235011123423632234§;
   
   public class §var var each§ extends MessageContainer
   {
      
      private static const §5214233879233892123423632234§:int = 300;
      
      private static const §catch package set§:int = 100;
      
      private static const §5214238445238458123423632234§:int = 5;
      
      private var §521423101662310179123423632234§:Vector.<MessageLine> = new Vector.<MessageLine>();
      
      private var §default for function§:Boolean = true;
      
      private var §521423106522310665123423632234§:uint = 0;
      
      public function §var var each§()
      {
         super();
      }
      
      public function §5214235379235392123423632234§() : void
      {
         var _loc3_:int = 0;
         var _loc2_:MessageLine = null;
         this.§default for function§ = true;
         var _loc1_:int = container.numChildren - 5;
         _loc3_ = 0;
         while(_loc3_ < _loc1_)
         {
            this.removeFirstMessage();
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < container.numChildren)
         {
            _loc2_ = MessageLine(container.getChildAt(_loc3_));
            if(!_loc2_.alive)
            {
               this.removeFirstMessage();
               _loc3_--;
            }
            else
            {
               _loc2_.killStart();
            }
            _loc3_++;
         }
      }
      
      private function §5214235974235987123423632234§() : void
      {
         if(this.§default for function§ && container.numChildren > 5 || !this.§default for function§ && container.numChildren >= 100)
         {
            this.removeFirstMessage();
         }
      }
      
      override public function removeFirstMessage(param1:Boolean = false) : MessageLine
      {
         var _loc2_:MessageLine = super.removeFirstMessage();
         this.y += shift;
         if(param1)
         {
            this.§521423101662310179123423632234§.shift();
         }
         return _loc2_;
      }
      
      private function §5214235966235979123423632234§(param1:§5214234998235011123423632234§) : void
      {
         if(this.§521423106522310665123423632234§ != 0)
         {
            clearTimeout(this.§521423106522310665123423632234§);
         }
         this.§521423106522310665123423632234§ = setTimeout(this.§with switch throw§,100);
      }
      
      public function §static var super§() : void
      {
         var _loc3_:int = 0;
         var _loc2_:MessageLine = null;
         this.§default for function§ = false;
         var _loc1_:int = this.§521423101662310179123423632234§.length - container.numChildren;
         _loc3_ = 0;
         while(_loc3_ < container.numChildren)
         {
            _loc2_ = MessageLine(container.getChildAt(_loc3_));
            _loc2_.killStop();
            _loc3_++;
         }
         _loc3_ = _loc1_ - 1;
         while(_loc3_ >= 0)
         {
            try
            {
               pushFront(this.§521423101662310179123423632234§[_loc3_]);
            }
            catch(err:Error)
            {
            }
            _loc3_--;
         }
      }
      
      public function §while var var§(param1:String) : void
      {
         this.§5214235974235987123423632234§();
         var _loc2_:§else finally var§ = new §else finally var§(300,param1);
         _loc2_.addEventListener("KillMe",this.§5214235547235560123423632234§);
         this.§switch catch get§(_loc2_);
         pushBack(_loc2_);
      }
      
      public function §true const throw§(param1:String, param2:§5214231658231671123423632234§, param3:String, param4:Boolean, param5:Boolean) : void
      {
         this.§5214235974235987123423632234§();
         var _loc6_:§var for false§ = new §var for false§(param1,param2,param3,param4,param5);
         _loc6_.addEventListener("KillMe",this.§5214235547235560123423632234§);
         this.§switch catch get§(_loc6_);
         pushBack(_loc6_);
         container.addEventListener("ChatUpdateEvent.UPDATE",this.§5214235966235979123423632234§);
      }
      
      private function §with switch throw§() : void
      {
         this.§521423106522310665123423632234§ = 0;
         for each(var _loc1_ in this.§521423101662310179123423632234§)
         {
            if(_loc1_ is §var for false§)
            {
               §var for false§(_loc1_).alignChatUserLabel();
            }
         }
      }
      
      private function §5214235547235560123423632234§(param1:ChatOutputLineEvent) : void
      {
         if(this.§default for function§ && container.contains(param1.line))
         {
            this.removeFirstMessage();
         }
         param1.line.removeEventListener("KillMe",this.§5214235547235560123423632234§);
      }
      
      private function §switch catch get§(param1:MessageLine) : void
      {
         var _loc2_:int = int(§521423101662310179123423632234§.length);
         this.§521423101662310179123423632234§[_loc2_] = param1;
         if(_loc2_ + 1 > 100)
         {
            this.§521423101662310179123423632234§.shift();
         }
      }
      
      public function §false set final§() : void
      {
         this.§521423101662310179123423632234§.length = 0;
         var _loc1_:int = container.numChildren - 1;
         while(_loc1_ >= 0)
         {
            container.removeChildAt(_loc1_);
            _loc1_--;
         }
      }
   }
}

