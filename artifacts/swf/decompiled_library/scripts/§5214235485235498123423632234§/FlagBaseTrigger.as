package §5214235485235498123423632234§
{
   import §5214231366231379123423632234§.§default catch native§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import §each var null§.§const throw§;
   import §for catch for§.§5214234380234393123423632234§;
   
   public class FlagBaseTrigger implements §5214234639234652123423632234§
   {
      
      private static const §5214238467238480123423632234§:Number = 250;
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private var center:Vector3;
      
      private var §while finally dynamic§:Number;
      
      private var §5214232064232077123423632234§:§true var finally§;
      
      private var §521423135532313566123423632234§:Boolean;
      
      private var §dynamic use switch§:§5214234380234393123423632234§;
      
      public function FlagBaseTrigger(param1:Vector3, param2:Number, param3:§true var finally§, param4:§5214234380234393123423632234§)
      {
         super();
         this.§dynamic use switch§ = param4;
         this.center = param1.clone();
         this.§while finally dynamic§ = param2 * param2;
         this.§5214232064232077123423632234§ = param3;
      }
      
      private function d1d9c30(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = null;
         var _loc4_:Vector3 = null;
         var _loc3_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + 250);
         if(this.§dynamic use switch§.§set use for§(param1,Vector3.DOWN,16,10000000000,null,§5214235622235635123423632234§))
         {
            _loc2_ = §5214235622235635123423632234§.§dynamic final§;
            _loc2_.z += 0.1;
            _loc4_ = _loc2_.subtract(_loc3_);
            return !this.§dynamic use switch§.§set use for§(_loc3_,_loc4_,16,1,null,§5214235622235635123423632234§);
         }
         return false;
      }
      
      public function checkTrigger(param1:§const throw§) : void
      {
         var _loc6_:Vector3 = param1.§implements catch catch§.§dynamic final§;
         this.b7cc481(_loc6_);
         var _loc2_:Number = _loc6_.x - this.center.x;
         var _loc4_:Number = _loc6_.y - this.center.y;
         var _loc5_:Number = _loc6_.z - this.center.z;
         var _loc3_:Number = _loc2_ * _loc2_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
         if(this.§521423135532313566123423632234§)
         {
            if(_loc3_ > this.§while finally dynamic§)
            {
               this.§521423135532313566123423632234§ = false;
               this.§5214232064232077123423632234§.onLeaveFlagBaseZone();
            }
         }
         else if(_loc3_ <= this.§while finally dynamic§)
         {
            this.§521423135532313566123423632234§ = true;
            this.§5214232064232077123423632234§.onEnterFlagBaseZone();
         }
      }
      
      public function reset() : void
      {
         this.§521423135532313566123423632234§ = false;
      }
      
      private function b7cc481(param1:Vector3) : void
      {
         var _loc2_:Number = param1.distanceToXYSquared(this.center);
         if(this.§521423135532313566123423632234§)
         {
            if(_loc2_ > this.§while finally dynamic§ || !this.d1d9c30(param1))
            {
               this.§521423135532313566123423632234§ = false;
               this.§5214232064232077123423632234§.onLeaveFlagBaseZone();
            }
         }
         else if(_loc2_ <= this.§while finally dynamic§ && this.d1d9c30(param1))
         {
            this.§521423135532313566123423632234§ = true;
            this.§5214232064232077123423632234§.onEnterFlagBaseZone();
         }
      }
   }
}

