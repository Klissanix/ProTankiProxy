package §extends set continue§
{
   import §5214232446232459123423632234§.§52142351023523123423632234§;
   import §5214232446232459123423632234§.§final switch static§;
   import §5214232446232459123423632234§.§if for switch§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.targeting.§521423108262310839123423632234§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import §finally catch with§.§throw for continue§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §use package false§ implements §52142351023523123423632234§, §521423108262310839123423632234§, §final switch static§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §dynamic set static§:Boolean = false;
      
      private var §finally continue§:§if for switch§;
      
      private var §break const false§:Number;
      
      private var §5214236311236324123423632234§:Number;
      
      private var §5214237778237791123423632234§:Vector3;
      
      private var §null catch each§:Number;
      
      private var §switch use extends§:Matrix3;
      
      private var §5214239291239304123423632234§:§521423132492313262123423632234§;
      
      public function §use package false§(param1:§if for switch§, param2:Number)
      {
         super();
         this.§5214237778237791123423632234§ = new Vector3();
         this.§switch use extends§ = new Matrix3();
         this.§finally continue§ = param1;
         this.§break const false§ = param2;
         this.§5214236311236324123423632234§ = this.§break const false§;
         this.§5214239291239304123423632234§ = §52142380523818123423632234§.getBattleScene3D().§while set for§();
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         this.§dynamic set static§ = param1;
         return true;
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function §each package null§(param1:Vector3) : void
      {
         param1.copy(this.§5214237778237791123423632234§);
      }
      
      public function §else if§() : void
      {
         §5214234884234897123423632234§.addListener(this);
         this.§null catch each§ = 0;
         this.§dynamic set static§ = false;
         this.§class catch super§();
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function §5214232185232198123423632234§(param1:Number) : void
      {
         var _loc4_:§super var dynamic§ = null;
         var _loc5_:Object3D = null;
         var _loc6_:Vector3 = null;
         var _loc3_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§dynamic set static§)
         {
            this.§finally continue§.§521423127992312812123423632234§(0);
         }
         else
         {
            _loc4_ = §5214237923237936123423632234§ as §super var dynamic§;
            _loc5_ = _loc4_.§static set catch§();
            this.§switch use extends§ = BattleUtils.§catch set else§;
            this.§switch use extends§.setRotationMatrixForObject3D(_loc5_);
            _loc6_ = BattleUtils.§switch for default§;
            this.§switch use extends§.transformVectorInverse(this.§5214239291239304123423632234§.§true package dynamic§,_loc6_);
            _loc3_ = Math.atan2(-_loc6_.x,_loc6_.y) + this.§finally continue§.§final use throw§();
            this.§finally continue§.§in switch use§(_loc3_);
            _loc7_ = Math.atan2(_loc6_.z,_loc6_.y);
            if(Math.abs(_loc7_ - this.§null catch each§) > 0.0001)
            {
               _loc2_ = this.§5214236311236324123423632234§ * param1;
               this.§null catch each§ = §throw for continue§.§52142393423947123423632234§(_loc7_,this.§null catch each§ - _loc2_,this.§null catch each§ + _loc2_);
            }
            this.§class catch super§();
         }
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      private function §class catch super§() : void
      {
         var _loc1_:Vector3 = BattleUtils.§switch for default§;
         _loc1_.reset(0,Math.cos(this.§null catch each§),Math.sin(this.§null catch each§));
         this.§switch use extends§.transformVector(_loc1_,this.§5214237778237791123423632234§);
      }
      
      public function §use use null§() : void
      {
         §5214234884234897123423632234§.removeListener(this);
         this.§null catch each§ = -1.5707963267948966;
         this.§5214237778237791123423632234§.x = 0;
         this.§5214237778237791123423632234§.y = 0;
         this.§5214237778237791123423632234§.z = -1;
      }
      
      public function §5214237977237990123423632234§(param1:Number) : void
      {
         this.§5214236311236324123423632234§ = this.§break const false§ * param1;
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
      }
   }
}

