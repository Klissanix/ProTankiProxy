package §5214237208237221123423632234§
{
   import §521423118762311889123423632234§.§5214231029231042123423632234§;
   import §521423118762311889123423632234§.§5214231591231604123423632234§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§521423117892311802123423632234§;
   import alternativa.tanks.battle.§5214235400235413123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§override for default§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.errors.IllegalOperationError;
   import §for catch for§.§5214234380234393123423632234§;
   import §for catch for§.§5214239739239752123423632234§;
   
   public class §5214234680234693123423632234§ extends §final switch return§ implements §521423117892311802123423632234§, §override for default§, §5214235400235413123423632234§, §5214239739239752123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      protected static const §function const include§:§native switch false§ = new §5214235507235520123423632234§(1000);
      
      protected static const §each var throw§:Matrix3 = new Matrix3();
      
      protected static const §get switch class§:§default catch native§ = new §default catch native§();
      
      protected static const §include for override§:Vector3 = new Vector3();
      
      private static const §else import§:Vector3 = new Vector3();
      
      private static const §5214237247237260123423632234§:Vector3 = new Vector3();
      
      private const §import for include§:Number = 2 * 3.141592653589793 / this.§include var function§();
      
      private var §catch case§:int;
      
      protected var §include true§:Boolean;
      
      protected var §dynamic switch§:Boolean;
      
      protected var §class final§:§const throw§;
      
      protected var §set use set§:Number = 0;
      
      protected var §521423109142310927123423632234§:Vector3 = new Vector3();
      
      protected var §52142372223735123423632234§:Vector3 = new Vector3();
      
      protected var §521423100282310041123423632234§:Vector3 = new Vector3();
      
      protected var §521423100222310035123423632234§:Vector3 = new Vector3();
      
      protected var §5214235411235424123423632234§:Vector3 = new Vector3();
      
      protected var §5214236205236218123423632234§:Vector.<Vector3>;
      
      protected var §super package catch§:§5214231029231042123423632234§;
      
      public function §5214234680234693123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214236205236218123423632234§ = new Vector.<Vector3>(this.§include var function§(),true);
         var _loc2_:int = 0;
         while(_loc2_ < this.§include var function§())
         {
            this.§5214236205236218123423632234§[_loc2_] = new Vector3();
            _loc2_++;
         }
      }
      
      private static function §dynamic use const§(param1:Vector3, param2:Vector3) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Number = 10000000000;
         var _loc3_:Number = param1.x < 0 ? -param1.x : param1.x;
         if(_loc3_ < _loc5_)
         {
            _loc5_ = _loc3_;
            _loc4_ = 0;
         }
         _loc3_ = param1.y < 0 ? -param1.y : param1.y;
         if(_loc3_ < _loc5_)
         {
            _loc5_ = _loc3_;
            _loc4_ = 1;
         }
         _loc3_ = param1.z < 0 ? -param1.z : param1.z;
         if(_loc3_ < _loc5_)
         {
            _loc4_ = 2;
         }
         if(_loc4_ == 0)
         {
            param2.reset(0,param1.z,-param1.y);
         }
         else if(_loc4_ == 1)
         {
            param2.reset(-param1.z,0,param1.x);
         }
         else if(_loc4_ == 2)
         {
            param2.reset(param1.y,-param1.x,0);
         }
      }
      
      protected function §52142380923822123423632234§() : §5214231029231042123423632234§
      {
         if(this.§include true§)
         {
            return §5214231591231604123423632234§.§var use null§;
         }
         return §5214231029231042123423632234§(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§5214231029231042123423632234§));
      }
      
      protected function §52142383123844123423632234§() : §throw var§
      {
         return §52142380523818123423632234§.getObjectPool();
      }
      
      public function render(param1:int, param2:int) : void
      {
         throw new IllegalOperationError();
      }
      
      protected function §5214233948233961123423632234§(param1:§const throw§, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         this.§521423133212313334123423632234§(param1,param2,param3,this.§set use set§ + §get switch class§.§5214232932232945123423632234§,this.§5214239265239278123423632234§(param4));
      }
      
      protected function destroy() : void
      {
         §52142380523818123423632234§.getBattleRunner().removePhysicsController(this);
         §52142380523818123423632234§.getBattleRunner().removePhysicsInterpolator(this);
         §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this,0);
         this.§super package catch§.destroy();
         §521423117092311722123423632234§();
      }
      
      public function §5214233952233965123423632234§() : int
      {
         return this.§catch case§;
      }
      
      protected function §5214239838239851123423632234§() : Number
      {
         throw new IllegalOperationError();
      }
      
      protected function §false package dynamic§(param1:Vector3, param2:Vector3) : void
      {
         §dynamic use const§(param2,§else import§);
         §else import§.normalize().scale(this.§5214239838239851123423632234§());
         §each var throw§.fromAxisAngle(param2,this.§import for include§);
         this.§5214236205236218123423632234§[0].sum(param1,§else import§);
         var _loc3_:int = 1;
         while(_loc3_ < this.§include var function§())
         {
            §else import§.transform3(§each var throw§);
            this.§5214236205236218123423632234§[_loc3_].sum(param1,§else import§);
            _loc3_++;
         }
      }
      
      protected function §include const include§() : Boolean
      {
         var _loc1_:§const throw§ = null;
         var _loc2_:Vector3 = null;
         var _loc4_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         §5214237247237260123423632234§.diff(this.§52142372223735123423632234§,this.§521423100222310035123423632234§);
         var _loc5_:Number = §5214237247237260123423632234§.length();
         §5214237247237260123423632234§.normalize();
         if(_loc4_.§5214239358239371123423632234§(this.§521423100222310035123423632234§,§5214237247237260123423632234§,8,_loc5_,this,§get switch class§))
         {
            _loc1_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
            if(_loc1_.§521423122212312234123423632234§ == null)
            {
               §get switch class§.§dynamic final§.subtract(§5214237247237260123423632234§);
            }
            this.§5214233948233961123423632234§(_loc1_,§get switch class§.§dynamic final§,§5214237247237260123423632234§,_loc5_);
            return true;
         }
         this.§false package dynamic§(this.§521423100222310035123423632234§,§5214237247237260123423632234§);
         var _loc3_:int = 0;
         while(_loc3_ < this.§include var function§())
         {
            _loc2_ = this.§5214236205236218123423632234§[_loc3_];
            if(_loc4_.§5214239358239371123423632234§(_loc2_,§5214237247237260123423632234§,8,_loc5_,this,§get switch class§))
            {
               _loc1_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
               if(BattleUtils.isTankBody(_loc1_))
               {
                  §include for override§.copy(this.§521423100222310035123423632234§).addScaled(§get switch class§.§5214232932232945123423632234§,§5214237247237260123423632234§);
                  this.§5214233948233961123423632234§(_loc1_,§include for override§,§5214237247237260123423632234§,_loc5_);
                  return true;
               }
            }
            _loc3_++;
         }
         return false;
      }
      
      protected function §521423133212313334123423632234§(param1:§const throw§, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         throw new IllegalOperationError();
      }
      
      public function §5214237205237218123423632234§(param1:§else const final§, param2:Vector3, param3:§const throw§, param4:int = -1) : void
      {
         this.§set use set§ = 0;
         this.§dynamic switch§ = true;
         this.§catch case§ = param4;
         this.§include true§ = param4 == -1;
         this.§521423100222310035123423632234§.copy(param1.§521423100222310035123423632234§);
         this.§52142372223735123423632234§.copy(param1.§if var switch§);
         this.§521423100282310041123423632234§.copy(param1.§if var switch§);
         this.§521423109142310927123423632234§.copy(param2);
         this.§class final§ = param3;
         §52142380523818123423632234§.getBattleRunner().addPhysicsController(this);
         §52142380523818123423632234§.getBattleRunner().addPhysicsInterpolator(this);
         §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this,0);
         this.§super package catch§ = this.§52142380923822123423632234§();
         this.§super package catch§.§native var include§(this.§52142372223735123423632234§,param2);
      }
      
      protected function §set switch override§() : §5214235140235153123423632234§
      {
         return §52142380523818123423632234§.getBattleScene3D();
      }
      
      protected function §5214239265239278123423632234§(param1:Number) : int
      {
         return Math.round(§get switch class§.§5214232932232945123423632234§ / param1 * 33);
      }
      
      public function considerBody(param1:§const throw§) : Boolean
      {
         return this.§class final§ != param1;
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§5214235411235424123423632234§.interpolate(param1,this.§521423100282310041123423632234§,this.§52142372223735123423632234§);
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         if(this.§dynamic switch§)
         {
            this.§dynamic switch§ = false;
            this.§try set true§(param1);
         }
         else
         {
            this.§521423120402312053123423632234§(param1);
         }
      }
      
      protected function §include var function§() : int
      {
         return 8;
      }
      
      private function §try set true§(param1:Number) : void
      {
         if(!this.§include const include§())
         {
            this.§false package dynamic§(this.§52142372223735123423632234§,this.§521423109142310927123423632234§);
            this.§521423120402312053123423632234§(param1);
         }
      }
      
      protected function §521423120402312053123423632234§(param1:Number) : void
      {
         throw new IllegalOperationError();
      }
   }
}

