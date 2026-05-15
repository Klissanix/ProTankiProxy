package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public final class AnimatedLightEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static const §521423115592311572123423632234§:Number = 99999;
      
      private var light:OmniLight;
      
      private var §if set in§:§class use return§;
      
      private var §5214234755234768123423632234§:LightAnimation;
      
      private var currentTime:int;
      
      private var §521423104962310509123423632234§:int;
      
      private var §52142356623579123423632234§:Boolean;
      
      private var alive:Boolean;
      
      private var maxDistance:Number;
      
      private var §with break§:Number;
      
      private var position:Vector3 = new Vector3();
      
      private var container:§switch var final§;
      
      public function AnimatedLightEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.light = new OmniLight(0,0,0);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.alive)
         {
            this.§5214234755234768123423632234§.updateByTime(this.light,this.currentTime,this.§521423104962310509123423632234§);
            this.§if set in§.updateObjectPosition(this.light,param2,param1);
            this.currentTime += param1;
            if(this.currentTime > this.§521423104962310509123423632234§)
            {
               if(this.§52142356623579123423632234§)
               {
                  this.currentTime %= this.§521423104962310509123423632234§;
               }
               else
               {
                  this.alive = false;
               }
            }
            this.position.x = this.light.x;
            this.position.y = this.light.y;
            this.position.z = this.light.z;
            var _temp_3:* = this.position;
            var _loc6_:Vector3 = param2.§dynamic final§;
            var _loc5_:Vector3 = _temp_3;
            var _loc7_:Number = _loc5_.x - _loc6_.x;
            var _loc8_:Number = _loc5_.y - _loc6_.y;
            var _loc9_:Number = _loc5_.z - _loc6_.z;
            _loc3_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_ + _loc9_ * _loc9_);
            if(_loc3_ > this.§with break§)
            {
               _loc4_ = 1 - (_loc3_ - this.§with break§) / (this.maxDistance - this.§with break§);
               this.light.intensity *= _loc4_;
               this.light.visible = _loc3_ < this.maxDistance;
            }
            return this.alive;
         }
         return false;
      }
      
      public function init(param1:§class use return§, param2:LightAnimation, param3:Number = 99999, param4:Boolean = false) : void
      {
         this.initFromTime(param1,param2.getLiveTime(),param2,param3,param4);
      }
      
      public function initFromTime(param1:§class use return§, param2:int, param3:LightAnimation, param4:Number = 99999, param5:Boolean = false) : void
      {
         this.§if set in§ = param1;
         this.§521423104962310509123423632234§ = param2;
         this.currentTime = 0;
         this.§5214234755234768123423632234§ = param3;
         this.§52142356623579123423632234§ = param5;
         this.alive = true;
         this.maxDistance = param4;
         this.§with break§ = param4 / 4 * 3;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.light);
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.light);
         this.container = null;
         this.§5214234755234768123423632234§ = null;
         this.§if set in§.destroy();
         this.§if set in§ = null;
         §521423117092311722123423632234§();
      }
   }
}

