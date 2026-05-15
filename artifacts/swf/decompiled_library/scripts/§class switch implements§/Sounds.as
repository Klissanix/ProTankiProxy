package §class switch implements§
{
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import §5214235774235787123423632234§.§final switch throw§;
   import §dynamic const static§.§521423107902310803123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.media.Sound;
   import §include set return§.§521423137722313785123423632234§;
   
   public class Sounds
   {
      
      private var soundManager:§521423107902310803123423632234§;
      
      private var §5214235405235418123423632234§:§521423137722313785123423632234§;
      
      public function Sounds(param1:§521423107902310803123423632234§, param2:§521423137722313785123423632234§)
      {
         super();
         this.soundManager = param1;
         this.§5214235405235418123423632234§ = param2;
      }
      
      private static function c12891bf(param1:§5214237988238001123423632234§) : Sound
      {
         if(param1 == null)
         {
            return null;
         }
         return param1.§set const switch§;
      }
      
      public function playCaptureStopSound(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §final switch throw§.§5214238124238137123423632234§)
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§throw use while§);
         }
         else
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§5214236159236172123423632234§);
         }
         this.soundManager.playSound(_loc2_);
      }
      
      public function playCaptureStartSound(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §final switch throw§.§5214238124238137123423632234§)
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§5214238738238751123423632234§);
         }
         else
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§5214234672234685123423632234§);
         }
         this.soundManager.playSound(_loc2_);
      }
      
      public function playNeutralizedSound(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §final switch throw§.§5214238124238137123423632234§)
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§521423127132312726123423632234§);
         }
         else
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§get package in§);
         }
         this.soundManager.playSound(_loc2_);
      }
      
      public function playCapturingSound(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §final switch throw§.§5214238124238137123423632234§)
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§package const get§);
         }
         else
         {
            _loc2_ = c12891bf(this.§5214235405235418123423632234§.§5214239007239020123423632234§);
         }
         this.soundManager.playSound(_loc2_);
      }
   }
}

