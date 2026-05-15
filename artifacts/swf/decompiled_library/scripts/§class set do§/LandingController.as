package §class set do§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   
   public class LandingController implements §5214231415231428123423632234§
   {
      
      private static const §package finally function§:Number = 2.5;
      
      private static const §static catch finally§:Vector3 = new Vector3();
      
      private static const §try switch else§:Matrix3 = new Matrix3();
      
      private var bonus:BattleBonus;
      
      private var normal:Vector3;
      
      private var §import catch finally§:Vector3;
      
      private var §with var false§:Vector3;
      
      private var angle:Number;
      
      private var §try use each§:Vector3;
      
      private var §5214238590238603123423632234§:LandingState;
      
      private var §static set if§:LandingState;
      
      private var §default in§:LandingState;
      
      public function LandingController(param1:BattleBonus)
      {
         super();
         this.normal = new Vector3();
         this.§import catch finally§ = new Vector3();
         this.§with var false§ = new Vector3();
         this.§try use each§ = new Vector3();
         this.§5214238590238603123423632234§ = new LandingState();
         this.§static set if§ = new LandingState();
         this.§default in§ = new LandingState();
         this.bonus = param1;
      }
      
      private function c4b2fd1b() : void
      {
         this.§static set if§.orientation.toMatrix3(§try switch else§);
         this.bonus.getTrigger().setTransform(this.§static set if§.position,§try switch else§);
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§default in§.interpolate(this.§5214238590238603123423632234§,this.§static set if§,param1);
      }
      
      public function init(param1:Vector3, param2:Vector3) : void
      {
         this.§import catch finally§.copy(param1);
         this.normal.copy(param2);
      }
      
      public function render() : void
      {
         var _loc1_:BonusMesh = this.bonus.getBonusMesh();
         _loc1_.setPosition(this.§default in§.position);
         this.§default in§.orientation.getEulerAngles(§static catch finally§);
         _loc1_.setRotation(§static catch finally§);
      }
      
      public function start() : void
      {
         var _loc1_:BonusMesh = this.bonus.getBonusMesh();
         _loc1_.readPosition(this.§with var false§);
         this.§with var false§.subtract(this.§import catch finally§);
         this.§try use each§.copy(Vector3.§521423109692310982123423632234§);
         this.§try use each§.cross(this.normal);
         this.§try use each§.normalize();
         this.angle = Math.acos(this.normal.z);
         _loc1_.readPosition(this.§static set if§.position);
         _loc1_.readRotation(§static catch finally§);
         this.§static set if§.orientation.setFromEulerAngles(§static catch finally§);
         this.§5214238590238603123423632234§.copy(this.§static set if§);
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         this.§5214238590238603123423632234§.copy(this.§static set if§);
         var _loc2_:Number = 2.5 * param1;
         if(_loc2_ > this.angle)
         {
            _loc2_ = this.angle;
            this.angle = 0;
         }
         else
         {
            this.angle -= _loc2_;
         }
         §try switch else§.fromAxisAngle(this.§try use each§,_loc2_);
         this.§with var false§.transform3(§try switch else§);
         this.§static set if§.position.copy(this.§import catch finally§).add(this.§with var false§);
         this.§static set if§.orientation.addScaledVector(this.§try use each§,_loc2_);
         this.c4b2fd1b();
         if(this.angle == 0)
         {
            this.interpolatePhysicsState(1);
            this.render();
            this.bonus.onLandingComplete();
         }
      }
   }
}

