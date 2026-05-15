package §521423137092313722123423632234§
{
   import §5214231337231350123423632234§.§5214232012232025123423632234§;
   import §5214237637237650123423632234§.§521423131902313203123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import §if package true§.*;
   
   public class §5214232950232963123423632234§
   {
      
      private const §521423115652311578123423632234§:int = 16;
      
      private var §521423110552311068123423632234§:§521423131902313203123423632234§;
      
      private var §521423119502311963123423632234§:Matrix3 = new Matrix3();
      
      private var §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private var §521423127142312727123423632234§:Vector.<§52142316423177123423632234§> = new Vector.<§52142316423177123423632234§>();
      
      private var §5214232059232072123423632234§:§var const switch§ = new §var const switch§();
      
      public function §5214232950232963123423632234§(param1:§521423131902313203123423632234§)
      {
         super();
         this.§521423110552311068123423632234§ = param1;
      }
      
      public function §5214239986239999123423632234§(param1:§else const final§, param2:Vector.<§5214232012232025123423632234§>) : Vector.<§52142316423177123423632234§>
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = -Infinity;
         this.§521423127142312727123423632234§.length = 0;
         this.§5214232059232072123423632234§.§false set final§();
         for each(var _loc6_ in param2)
         {
            _loc3_ = _loc6_.§continue for extends§();
            while(!this.§5214232059232072123423632234§.§use catch get§() && _loc5_ < _loc3_)
            {
               _loc4_ = Math.min(this.§5214232059232072123423632234§.§try var package§(),_loc3_);
               this.§import for while§(param1,_loc5_,_loc4_);
               this.§5214232059232072123423632234§.§52142375623769123423632234§(_loc4_);
               _loc5_ = _loc4_;
            }
            _loc5_ = _loc3_;
            this.§5214232059232072123423632234§.§5214238820238833123423632234§(_loc6_);
         }
         while(!this.§5214232059232072123423632234§.§use catch get§())
         {
            _loc4_ = this.§5214232059232072123423632234§.§try var package§();
            this.§import for while§(param1,_loc5_,_loc4_);
            this.§5214232059232072123423632234§.§52142375623769123423632234§(_loc4_);
            _loc5_ = _loc4_;
         }
         return this.§521423127142312727123423632234§;
      }
      
      private function §import for while§(param1:§else const final§, param2:Number, param3:Number) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Vector3 = null;
         var _loc6_:Number = param3 - param2;
         var _loc5_:Number = _loc6_ / 16;
         var _loc7_:Number = param2 + _loc5_ * 0.5;
         var _loc4_:Vector.<§5214232012232025123423632234§> = this.§5214232059232072123423632234§.§521423110722311085123423632234§();
         this.§521423119502311963123423632234§.fromAxisAngle(param1.§const switch for§,_loc7_);
         this.§521423119502311963123423632234§.transformVector(param1.§5214239673239686123423632234§,this.§5214239673239686123423632234§);
         this.§521423119502311963123423632234§.fromAxisAngle(param1.§const switch for§,_loc5_);
         _loc8_ = 0;
         while(_loc8_ < 16)
         {
            this.§521423127142312727123423632234§[§521423127142312727123423632234§.length] = new §52142316423177123423632234§(this.§5214239673239686123423632234§,_loc7_,this.§521423110552311068123423632234§.§5214236071236084123423632234§(_loc7_,_loc4_));
            _loc9_ = BattleUtils.§switch for default§;
            _loc9_.copy(this.§5214239673239686123423632234§);
            this.§521423119502311963123423632234§.transformVector(_loc9_,this.§5214239673239686123423632234§);
            _loc7_ += _loc5_;
            _loc8_++;
         }
         if(param2 <= 0 && 0 <= param3)
         {
            this.§521423127142312727123423632234§[§521423127142312727123423632234§.length] = new §52142316423177123423632234§(param1.§5214239673239686123423632234§,0,this.§521423110552311068123423632234§.§5214236071236084123423632234§(0,_loc4_));
         }
      }
   }
}

