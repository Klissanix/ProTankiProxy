package §import for get§
{
   public class KeyFrameAnimation
   {
      
      private var track:AnimationTrack;
      
      private var §static var dynamic§:int;
      
      private var time:Number;
      
      private var §521423139682313981123423632234§:§5214231536231549123423632234§;
      
      public function KeyFrameAnimation(param1:AnimationTrack, param2:§5214231536231549123423632234§)
      {
         super();
         this.track = param1;
         this.§521423139682313981123423632234§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.isComplete())
         {
            this.time += param1;
            while(this.time > this.track.getFrameTime(this.§static var dynamic§ + 1))
            {
               ++this.§static var dynamic§;
               if(this.isComplete())
               {
                  this.time = this.track.getMaxTime();
                  break;
               }
            }
            this.§521423139682313981123423632234§.setAnimatedValue(this.getValue());
         }
      }
      
      public function start() : void
      {
         this.time = this.track.getMinTime();
         this.§static var dynamic§ = 0;
      }
      
      public function isComplete() : Boolean
      {
         return this.§static var dynamic§ == this.track.getNumFrames() - 1;
      }
      
      private function getValue() : Number
      {
         if(this.isComplete())
         {
            return this.track.getFrameTime(this.§static var dynamic§);
         }
         var _loc3_:Number = this.track.getFrameTime(this.§static var dynamic§);
         var _loc4_:Number = this.track.getFrameTime(this.§static var dynamic§ + 1);
         var _loc1_:Number = this.track.getFrameValue(this.§static var dynamic§);
         var _loc2_:Number = this.track.getFrameValue(this.§static var dynamic§ + 1);
         return _loc1_ + (_loc2_ - _loc1_) * (this.time - _loc3_) / (_loc4_ - _loc3_);
      }
   }
}

