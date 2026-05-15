package §import for get§
{
   public class AnimationTrack
   {
      
      private var §5214236526236539123423632234§:Vector.<Number>;
      
      private var values:Vector.<Number>;
      
      private var numFrames:int;
      
      private var §dynamic false§:Number;
      
      private var §case var import§:Number;
      
      public function AnimationTrack(param1:Vector.<Number>, param2:Vector.<Number>)
      {
         super();
         this.§5214236526236539123423632234§ = param1;
         this.values = param2;
         this.numFrames = param1.length;
         this.§dynamic false§ = param1[0];
         this.§case var import§ = param1[this.numFrames - 1];
      }
      
      public function getFrameValue(param1:int) : Number
      {
         return this.values[param1];
      }
      
      public function getMinTime() : Number
      {
         return this.§dynamic false§;
      }
      
      public function getFrameTime(param1:int) : Number
      {
         return this.§5214236526236539123423632234§[param1];
      }
      
      public function getNumFrames() : int
      {
         return this.numFrames;
      }
      
      public function getMaxTime() : Number
      {
         return this.§case var import§;
      }
   }
}

