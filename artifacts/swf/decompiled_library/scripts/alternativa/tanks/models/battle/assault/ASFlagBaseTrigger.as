package alternativa.tanks.models.battle.assault
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import §each var null§.§const throw§;
   import §for catch for§.§5214234380234393123423632234§;
   
   public class ASFlagBaseTrigger implements §5214234639234652123423632234§
   {
      
      private static const §521423137432313756123423632234§:Number = 250;
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private var center:Vector3;
      
      private var §native switch switch§:§52142381823831123423632234§;
      
      private var §var package var§:Number;
      
      private var §5214232606232619123423632234§:Boolean;
      
      private var §const const null§:Number;
      
      private var §get const switch§:Boolean;
      
      private var §dynamic use switch§:§5214234380234393123423632234§;
      
      public function ASFlagBaseTrigger(param1:Vector3, param2:Number, param3:Number, param4:§52142381823831123423632234§, param5:§5214234380234393123423632234§)
      {
         super();
         this.§dynamic use switch§ = param5;
         this.center = param1.clone();
         this.§var package var§ = param2 * param2;
         this.§const const null§ = param3;
         this.§native switch switch§ = param4;
      }
      
      private function a25e7081(param1:Vector3) : void
      {
         var _loc2_:Number = param1.distanceToXYSquared(this.center);
         if(this.§5214232606232619123423632234§)
         {
            if(_loc2_ > this.§var package var§ || !this.b53566ee(param1))
            {
               this.§5214232606232619123423632234§ = false;
               this.§native switch switch§.onLeaveFlagBaseZone();
            }
         }
         else if(_loc2_ <= this.§var package var§ && this.b53566ee(param1))
         {
            this.§5214232606232619123423632234§ = true;
            this.§native switch switch§.onEnterFlagBaseZone();
         }
      }
      
      public function checkTrigger(param1:§const throw§) : void
      {
         var _loc2_:Vector3 = null;
         var _loc3_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         if(_loc3_.§do for final§.§include catch§ == §get catch§.§52142350323516123423632234§)
         {
            _loc2_ = param1.§implements catch catch§.§dynamic final§;
            this.b4546d65(_loc2_);
            this.a25e7081(_loc2_);
         }
         else
         {
            if(this.§get const switch§)
            {
               this.§get const switch§ = false;
               this.§native switch switch§.onLeavePointCapturingZone();
            }
            if(this.§5214232606232619123423632234§)
            {
               this.§5214232606232619123423632234§ = false;
               this.§native switch switch§.onLeaveFlagBaseZone();
            }
         }
      }
      
      private function b4546d65(param1:Vector3) : void
      {
         var _temp_1:* = param1;
         var _loc4_:Vector3 = this.center;
         var _loc3_:Vector3 = _temp_1;
         var _loc5_:Number = _loc3_.x - _loc4_.x;
         var _loc6_:Number = _loc3_.y - _loc4_.y;
         var _loc7_:Number = _loc3_.z - _loc4_.z;
         var _loc2_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
         if(this.§get const switch§)
         {
            if(_loc2_ > this.§const const null§ || !this.b2e41610(param1))
            {
               this.§get const switch§ = false;
               this.§native switch switch§.onLeavePointCapturingZone();
            }
         }
         else if(_loc2_ <= this.§const const null§ && this.b2e41610(param1))
         {
            this.§get const switch§ = true;
            this.§native switch switch§.onEnterPointCapturingZone();
         }
      }
      
      public function reset() : void
      {
         this.§get const switch§ = false;
         this.§5214232606232619123423632234§ = false;
      }
      
      private function b53566ee(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + 250);
         if(this.§dynamic use switch§.§set use for§(param1,Vector3.DOWN,16,10000000000,null,§5214235622235635123423632234§))
         {
            _loc2_ = §5214235622235635123423632234§.§dynamic final§;
            _loc2_.z += 0.1;
            _loc3_ = _loc2_.subtract(_loc4_);
            return !this.§dynamic use switch§.§set use for§(_loc4_,_loc3_,16,1,null,§5214235622235635123423632234§);
         }
         return false;
      }
      
      private function b2e41610(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + 250);
         var _loc3_:Vector3 = param1.clone().subtract(_loc2_);
         return !this.§dynamic use switch§.§set use for§(_loc2_,_loc3_,16,1,null,§5214235622235635123423632234§);
      }
   }
}

