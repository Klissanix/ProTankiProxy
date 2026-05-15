package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.lights.TubeLight;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class TubeLightEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §5214234697234710123423632234§:Number = 1.5;
      
      private static const position:Vector3 = new Vector3();
      
      private static const §for catch class§:Vector3 = new Vector3();
      
      private var light:TubeLight;
      
      private var §if set in§:§class use return§;
      
      private var §5214239085239098123423632234§:§class use return§;
      
      private var §5214234755234768123423632234§:LightAnimation;
      
      private var currentTime:int;
      
      private var §521423104962310509123423632234§:int;
      
      private var §52142356623579123423632234§:Boolean;
      
      private var alive:Boolean;
      
      private var target:Object3D;
      
      private var container:§switch var final§;
      
      public function TubeLightEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.light = new TubeLight(0,0,0,0,0);
         this.target = new Object3D();
      }
      
      public function initFromTime(param1:§class use return§, param2:§class use return§, param3:int, param4:LightAnimation, param5:Boolean = false) : void
      {
         this.§if set in§ = param1;
         this.§5214239085239098123423632234§ = param2;
         this.§521423104962310509123423632234§ = param3;
         this.currentTime = 0;
         this.§5214234755234768123423632234§ = param4;
         this.§52142356623579123423632234§ = param5;
         this.alive = true;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.alive)
         {
            this.§5214234755234768123423632234§.updateByTime(this.light,this.currentTime,this.§521423104962310509123423632234§);
            this.§if set in§.updateObjectPosition(this.light,param2,param1);
            this.§5214239085239098123423632234§.updateObjectPosition(this.target,param2,param1);
            this.currentTime += param1;
            position.x = this.light.x;
            position.y = this.light.y;
            position.z = this.light.z;
            §for catch class§.x = this.target.x;
            §for catch class§.y = this.target.y;
            §for catch class§.z = this.target.z;
            var _temp_2:* = position;
            var _loc6_:Vector3 = §for catch class§;
            var _loc5_:Vector3 = _temp_2;
            var _loc7_:Number = _loc5_.x - _loc6_.x;
            var _loc8_:Number = _loc5_.y - _loc6_.y;
            var _loc9_:Number = _loc5_.z - _loc6_.z;
            _loc3_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_ + _loc9_ * _loc9_);
            _loc4_ = param2.farClipping / 1.5;
            _loc3_ = _loc3_ > _loc4_ ? _loc4_ : _loc3_;
            this.light.length = _loc3_;
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
            this.light.lookAt(this.target.x,this.target.y,this.target.z);
            this.light.falloff = this.light.attenuationEnd - this.light.attenuationBegin;
            return this.alive;
         }
         return false;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.light);
         this.container.§5214231752231765123423632234§(this.target);
         this.container = null;
         this.§5214234755234768123423632234§ = null;
         this.§if set in§ = null;
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.light);
         param1.§5214237128237141123423632234§(this.target);
      }
      
      public function init(param1:§class use return§, param2:§class use return§, param3:LightAnimation, param4:Boolean = false) : void
      {
         this.initFromTime(param1,param2,param3.getLiveTime(),param3,param4);
      }
   }
}

