package §class set do§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   
   public class FallController implements §5214231415231428123423632234§
   {
      
      private static const §521423120202312033123423632234§:Number = 0.1;
      
      private static const §521423105052310518123423632234§:Number = 1;
      
      private static const §try switch else§:Matrix3 = new Matrix3();
      
      private static const v:Vector3 = new Vector3();
      
      private const §each const catch§:Matrix3 = new Matrix3();
      
      private const §5214238463238476123423632234§:Vector3 = new Vector3();
      
      private const §null use get§:BattleBonusState = new BattleBonusState();
      
      private const §static set if§:BattleBonusState = new BattleBonusState();
      
      private const §5214232865232878123423632234§:BattleBonusState = new BattleBonusState();
      
      private var §for use with§:BattleBonus;
      
      private var §52142379523808123423632234§:Number;
      
      private var time:Number;
      
      private var §5214236882236895123423632234§:Number;
      
      private var §5214232364232377123423632234§:Number;
      
      private var x:Number = 0;
      
      private var y:Number = 0;
      
      public function FallController(param1:BattleBonus)
      {
         super();
         this.§for use with§ = param1;
      }
      
      public function init(param1:Vector3, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.x = param1.x;
         this.y = param1.y;
         this.§static set if§.§5214237151237164123423632234§ = param1.z + 450 - param2 * param5;
         this.§static set if§.§do for set§ = param6 + 0.1 * param5;
         this.§5214236882236895123423632234§ = param2;
         this.§52142379523808123423632234§ = param3;
         this.§5214232364232377123423632234§ = param4;
         this.time = param5;
      }
      
      public function start() : void
      {
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§5214232865232878123423632234§.interpolate(this.§null use get§,this.§static set if§,param1);
         this.§each const catch§.setRotationMatrix(this.§5214232865232878123423632234§.§52142317323186123423632234§,0,this.§5214232865232878123423632234§.§do for set§);
         this.§each const catch§.transformVector(Vector3.DOWN,this.§5214238463238476123423632234§);
      }
      
      public function render() : void
      {
         this.setObjectTransform(this.§for use with§.getParachute(),50,this.§5214238463238476123423632234§);
         this.setObjectTransform(this.§for use with§.getBonusMesh(),450,this.§5214238463238476123423632234§);
         this.§for use with§.getCords().updateVertices();
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         this.§null use get§.copy(this.§static set if§);
         this.time += param1;
         this.§static set if§.§5214237151237164123423632234§ -= this.§5214236882236895123423632234§ * param1;
         this.§static set if§.§52142317323186123423632234§ = 0.1 * Math.sin(1 * (this.§5214232364232377123423632234§ + this.time));
         this.§static set if§.§do for set§ += 0.1 * param1;
         if(this.§static set if§.§5214237151237164123423632234§ <= this.§52142379523808123423632234§)
         {
            this.§static set if§.§5214237151237164123423632234§ = this.§52142379523808123423632234§;
            this.§static set if§.§52142317323186123423632234§ = 0;
            this.interpolatePhysicsState(1);
            this.render();
            this.§for use with§.onTouchGround();
         }
         this.c4b2fd1b();
      }
      
      private function c4b2fd1b() : void
      {
         §try switch else§.setRotationMatrix(this.§static set if§.§52142317323186123423632234§,0,this.§static set if§.§do for set§);
         §try switch else§.transformVector(Vector3.DOWN,v);
         v.scale(450);
         var _loc1_:BonusTrigger = this.§for use with§.getTrigger();
         _loc1_.updateByComponents(this.x + v.x,this.y + v.y,this.§static set if§.§5214237151237164123423632234§ + v.z,this.§static set if§.§52142317323186123423632234§,0,this.§static set if§.§do for set§);
      }
      
      private function setObjectTransform(param1:§5214233710233723123423632234§, param2:Number, param3:Vector3) : void
      {
         param1.setRotationComponents(this.§5214232865232878123423632234§.§52142317323186123423632234§,0,this.§5214232865232878123423632234§.§do for set§);
         param1.setPositionComponents(this.x + param2 * param3.x,this.y + param2 * param3.y,this.§5214232865232878123423632234§.§5214237151237164123423632234§ + param2 * param3.z);
      }
   }
}

