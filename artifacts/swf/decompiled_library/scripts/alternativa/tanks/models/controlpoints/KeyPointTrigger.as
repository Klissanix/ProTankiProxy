package alternativa.tanks.models.controlpoints
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import §each var null§.§const throw§;
   import §package package false§.§static set true§;
   
   public class KeyPointTrigger implements §5214234639234652123423632234§
   {
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private var center:Vector3;
      
      private var §class catch set§:§dynamic catch while§;
      
      private var §const const null§:Number;
      
      private var §get const switch§:Boolean;
      
      private var §var package var§:Number;
      
      private var §5214232606232619123423632234§:Boolean;
      
      private var §5214231153231166123423632234§:int;
      
      private var §include set for§:Number;
      
      private var §dynamic use switch§:§static set true§;
      
      public function KeyPointTrigger(param1:Vector3, param2:Number, param3:Number, param4:int, param5:§dynamic catch while§, param6:§static set true§, param7:Number)
      {
         super();
         this.center = param1;
         this.§const const null§ = param2;
         this.§5214231153231166123423632234§ = param4;
         this.§class catch set§ = param5;
         this.§var package var§ = param3;
         this.§dynamic use switch§ = param6;
         this.§include set for§ = param7;
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
               this.§class catch set§.onLeavePointCapturingZone(this.§5214231153231166123423632234§);
            }
         }
         else if(_loc2_ <= this.§const const null§ && this.b2e41610(param1))
         {
            this.§get const switch§ = true;
            this.§class catch set§.onEnterPointCapturingZone(this.§5214231153231166123423632234§);
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
               this.§class catch set§.onLeavePointCapturingZone(this.§5214231153231166123423632234§);
            }
            if(this.§5214232606232619123423632234§)
            {
               this.§5214232606232619123423632234§ = false;
               this.§class catch set§.onLeaveMineRestrictionZone(this.§5214231153231166123423632234§);
            }
         }
      }
      
      public function reset() : void
      {
         this.§get const switch§ = false;
         this.§5214232606232619123423632234§ = false;
      }
      
      private function b2e41610(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + this.§include set for§);
         var _loc3_:Vector3 = param1.clone().subtract(_loc2_);
         return !this.§dynamic use switch§.§set use for§(_loc2_,_loc3_,16,1,null,§5214235622235635123423632234§);
      }
      
      private function b53566ee(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = null;
         _loc2_ = new Vector3(this.center.x,this.center.y,this.center.z + this.§include set for§);
         if(this.§dynamic use switch§.§set use for§(param1,Vector3.DOWN,16,10000000000,null,§5214235622235635123423632234§))
         {
            _loc3_ = §5214235622235635123423632234§.§dynamic final§;
            _loc3_.z += 0.1;
            _loc4_ = _loc3_.subtract(_loc2_);
            return !this.§dynamic use switch§.§set use for§(_loc2_,_loc4_,16,1,null,§5214235622235635123423632234§);
         }
         return false;
      }
      
      private function a25e7081(param1:Vector3) : void
      {
         var _loc2_:Number = param1.distanceToXY(this.center);
         if(this.§5214232606232619123423632234§)
         {
            if(_loc2_ > this.§var package var§ || !this.b53566ee(param1))
            {
               this.§5214232606232619123423632234§ = false;
               this.§class catch set§.onLeaveMineRestrictionZone(this.§5214231153231166123423632234§);
            }
         }
         else if(_loc2_ <= this.§var package var§ && this.b53566ee(param1))
         {
            this.§5214232606232619123423632234§ = true;
            this.§class catch set§.onEnterMineRestrictionZone(this.§5214231153231166123423632234§);
         }
      }
   }
}

