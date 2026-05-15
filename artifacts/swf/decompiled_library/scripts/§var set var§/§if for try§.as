package §var set var§
{
   import alternativa.math.Vector3;
   import §finally catch with§.§throw for continue§;
   
   public class §if for try§ extends §finally catch null§ implements §false switch class§
   {
      
      private static const §final package switch§:Number = 3000;
      
      private static const §5214239445239458123423632234§:Vector3 = new Vector3();
      
      private var §521423126222312635123423632234§:Vector3 = new Vector3();
      
      private var §native set include§:Vector3 = new Vector3();
      
      private var §521423106132310626123423632234§:Vector3 = new Vector3();
      
      private var §5214238488238501123423632234§:Vector3 = new Vector3();
      
      private var §return var dynamic§:Number;
      
      private var §extends catch function§:Number;
      
      private var §5214236613236626123423632234§:Number;
      
      private var §5214236311236324123423632234§:Number;
      
      private var §class catch continue§:§5214237383237396123423632234§ = new §5214237383237396123423632234§();
      
      private var §521423131202313133123423632234§:§5214237383237396123423632234§ = new §5214237383237396123423632234§();
      
      public var §dynamic for null§:int;
      
      public function §if for try§(param1:int)
      {
         super();
         this.§dynamic for null§ = param1;
      }
      
      public function init(param1:Vector3, param2:Vector3) : void
      {
         this.§521423126222312635123423632234§.copy(§import use break§());
         this.§native set include§.copy(this.§521423126222312635123423632234§);
         this.§5214238488238501123423632234§.copy(param1);
         this.§521423106132310626123423632234§.copy(this.§5214238488238501123423632234§);
         var _loc3_:Number = (this.§521423126222312635123423632234§.z > this.§5214238488238501123423632234§.z ? this.§521423126222312635123423632234§.z : this.§5214238488238501123423632234§.z) + 3000;
         this.§521423106132310626123423632234§.z = (this.§521423126222312635123423632234§.z > this.§5214238488238501123423632234§.z ? this.§521423126222312635123423632234§.z : this.§5214238488238501123423632234§.z) + 3000;
         this.§native set include§.z = _loc3_;
         var _loc4_:Number = 4000000 / (this.§dynamic for null§ * this.§dynamic for null§);
         this.§class catch continue§.init(§throw for continue§.§package use extends§(§5214236753236766123423632234§()),param2.x,_loc4_);
         this.§521423131202313133123423632234§.init(§throw for continue§.§package use extends§(§null const package§()),param2.z,_loc4_);
         var _loc5_:Vector3 = new Vector3();
         _loc5_.diff(this.§5214238488238501123423632234§,this.§521423126222312635123423632234§);
         this.§return var dynamic§ = _loc5_.length();
         this.§5214236613236626123423632234§ = this.§return var dynamic§ * _loc4_;
         this.§extends catch function§ = 0;
         this.§5214236311236324123423632234§ = 0;
      }
      
      override public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         if(this.§5214236311236324123423632234§ < 0)
         {
            return;
         }
         if(this.§extends catch function§ > 0.5 * this.§return var dynamic§ && this.§5214236613236626123423632234§ > 0)
         {
            this.§5214236613236626123423632234§ = -this.§5214236613236626123423632234§;
            this.§class catch continue§.§5214232173232186123423632234§();
            this.§521423131202313133123423632234§.§5214232173232186123423632234§();
         }
         var _loc3_:Number = 0.001 * param2;
         var _loc4_:Number = this.§5214236613236626123423632234§ * _loc3_;
         this.§extends catch function§ += (this.§5214236311236324123423632234§ + 0.5 * _loc4_) * _loc3_;
         this.§5214236311236324123423632234§ += _loc4_;
         if(this.§extends catch function§ > this.§return var dynamic§)
         {
            this.§extends catch function§ = this.§return var dynamic§;
         }
         this.§5214233361233374123423632234§(this.§extends catch function§ / this.§return var dynamic§,this.§521423126222312635123423632234§,this.§native set include§,this.§521423106132310626123423632234§,this.§5214238488238501123423632234§,§5214239445239458123423632234§);
         §5214233236233249123423632234§(§5214239445239458123423632234§);
         §5214232862232875123423632234§(this.§class catch continue§.§521423120402312053123423632234§(_loc3_),0,this.§521423131202313133123423632234§.§521423120402312053123423632234§(_loc3_));
      }
      
      private function §5214233361233374123423632234§(param1:Number, param2:Vector3, param3:Vector3, param4:Vector3, param5:Vector3, param6:Vector3) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:Number = 1 - param1;
         _loc10_ = _loc9_ * _loc9_;
         var _loc8_:Number = 3 * param1 * _loc10_;
         _loc10_ *= _loc9_;
         _loc11_ = param1 * param1;
         var _loc7_:Number = 3 * _loc11_ * _loc9_;
         _loc11_ *= param1;
         param6.x = _loc10_ * param2.x + _loc8_ * param3.x + _loc7_ * param4.x + _loc11_ * param5.x;
         param6.y = _loc10_ * param2.y + _loc8_ * param3.y + _loc7_ * param4.y + _loc11_ * param5.y;
         param6.z = _loc10_ * param2.z + _loc8_ * param3.z + _loc7_ * param4.z + _loc11_ * param5.z;
      }
   }
}

