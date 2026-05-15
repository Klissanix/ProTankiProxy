package §package catch true§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   import §var set var§.§5214235669235682123423632234§;
   import §var set var§.§false switch class§;
   
   public class §for for for§ extends §5214235669235682123423632234§ implements §false switch class§
   {
      
      private static const §5214233343233356123423632234§:Matrix3 = new Matrix3();
      
      private static const §in use try§:Matrix3 = new Matrix3();
      
      private static const §521423128092312822123423632234§:Vector3 = new Vector3();
      
      private var §5214235321235334123423632234§:Object3D;
      
      private var §5214232261232274123423632234§:Number = 0;
      
      private var §in set finally§:Vector3 = new Vector3();
      
      private var §5214235582235595123423632234§:Number;
      
      private var §521423119492311962123423632234§:Number;
      
      private var §set set false§:int;
      
      private var §static catch each§:Number = 1;
      
      private var §function const dynamic§:Number = 1;
      
      private var §import const return§:Number = 0;
      
      private var §521423140712314084123423632234§:Number = 5;
      
      public function §for for for§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§5214235582235595123423632234§ = param1;
         this.§521423119492311962123423632234§ = param2;
         this.§static catch each§ = param3;
         this.§521423140712314084123423632234§ = param4;
      }
      
      public function set §521423101122310125123423632234§(param1:int) : void
      {
         if(this.§set set false§ != param1)
         {
            this.§set set false§ = param1;
            this.§import const return§ = 0;
         }
      }
      
      public function §5214231652231665123423632234§(param1:Object3D) : void
      {
         this.§5214235321235334123423632234§ = param1;
      }
      
      public function get §include switch throw§() : Number
      {
         return this.§5214232261232274123423632234§;
      }
      
      public function §case else§() : Boolean
      {
         return this.§5214232261232274123423632234§ == this.§5214235582235595123423632234§ || this.§5214232261232274123423632234§ == this.§521423119492311962123423632234§;
      }
      
      public function §extends set function§(param1:Vector3) : void
      {
         var _loc2_:§521423132492313262123423632234§ = null;
         _loc2_ = §while set for§();
         param1.x = _loc2_.x;
         param1.y = _loc2_.y;
         param1.z = _loc2_.z;
      }
      
      public function §if var if§(param1:Number) : void
      {
         §while set for§().fov = param1;
      }
      
      public function §5214233976233989123423632234§(param1:Vector3) : void
      {
         this.§in set finally§.copy(param1);
      }
      
      public function §521423113602311373123423632234§(param1:Vector3) : void
      {
         var _loc2_:§521423132492313262123423632234§ = §while set for§();
         var _loc3_:Vector3 = _loc2_.§true package dynamic§;
         param1.copy(_loc3_);
      }
      
      public function §521423118782311891123423632234§(param1:Number) : void
      {
         this.§function const dynamic§ = param1;
      }
      
      public function set §include switch throw§(param1:Number) : void
      {
         if(param1 > this.§5214235582235595123423632234§)
         {
            this.§5214232261232274123423632234§ = this.§5214235582235595123423632234§;
         }
         else if(param1 < this.§521423119492311962123423632234§)
         {
            this.§5214232261232274123423632234§ = this.§521423119492311962123423632234§;
         }
         else
         {
            this.§5214232261232274123423632234§ = param1;
         }
      }
      
      override public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:§521423132492313262123423632234§ = null;
         var _loc5_:Number = param2 / 1000;
         if(this.§set set false§ != 0)
         {
            this.§import const return§ += this.§521423140712314084123423632234§ * _loc5_;
            _loc4_ = this.§static catch each§ * this.§function const dynamic§;
            if(this.§import const return§ > _loc4_)
            {
               this.§import const return§ = _loc4_;
            }
            this.§5214232261232274123423632234§ += this.§set set false§ * this.§import const return§ * _loc5_;
            if(this.§5214232261232274123423632234§ > this.§5214235582235595123423632234§)
            {
               this.§5214232261232274123423632234§ = this.§5214235582235595123423632234§;
            }
            else if(this.§5214232261232274123423632234§ < this.§521423119492311962123423632234§)
            {
               this.§5214232261232274123423632234§ = this.§521423119492311962123423632234§;
            }
         }
         §5214233343233356123423632234§.setRotationMatrix(this.§5214235321235334123423632234§.rotationX,this.§5214235321235334123423632234§.rotationY,this.§5214235321235334123423632234§.rotationZ);
         §in use try§.fromAxisAngle(Vector3.§const const package§,this.§5214232261232274123423632234§ - 3.141592653589793 / 2);
         §in use try§.append(§5214233343233356123423632234§);
         §in use try§.getEulerAngles(§521423128092312822123423632234§);
         _loc3_ = §while set for§();
         _loc3_.rotationX = §521423128092312822123423632234§.x;
         _loc3_.rotationY = §521423128092312822123423632234§.y;
         _loc3_.rotationZ = §521423128092312822123423632234§.z;
         §5214233343233356123423632234§.transformVector(this.§in set finally§,§521423128092312822123423632234§);
         _loc3_.x = §521423128092312822123423632234§.x + this.§5214235321235334123423632234§.x;
         _loc3_.y = §521423128092312822123423632234§.y + this.§5214235321235334123423632234§.y;
         _loc3_.z = §521423128092312822123423632234§.z + this.§5214235321235334123423632234§.z;
      }
   }
}

