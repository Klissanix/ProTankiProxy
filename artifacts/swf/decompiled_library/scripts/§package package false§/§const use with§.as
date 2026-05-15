package §package package false§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.services.validator.DataValidationErrorEvent;
   import alternativa.tanks.services.validator.Vector3Validator;
   import §each var null§.§const throw§;
   import §each var null§.§if var in§;
   import §for catch for§.§521423136582313671123423632234§;
   
   public class §const use with§
   {
      
      private static const §package catch try§:Number = 200;
      
      private var §5214235707235720123423632234§:Vector3Validator;
      
      private var §5214234570234583123423632234§:§if var in§;
      
      private var §dynamic use switch§:§static set true§;
      
      private var §with set include§:BattleEventDispatcher;
      
      public function §const use with§(param1:int, param2:Number, param3:BattleEventDispatcher)
      {
         super();
         this.§with set include§ = param3;
         this.§5214234570234583123423632234§ = new §if var in§();
         this.§5214234570234583123423632234§.§break catch else§.reset(0,0,-param2);
         this.§5214235707235720123423632234§ = new Vector3Validator(this.§5214234570234583123423632234§.§break catch else§);
         this.§dynamic use switch§ = new §static set true§();
         this.§5214234570234583123423632234§.§dynamic use switch§ = this.§dynamic use switch§;
         this.§5214234570234583123423632234§.§dynamic finally var§ = param1;
      }
      
      public function §521423138622313875123423632234§(param1:§default set override§) : void
      {
         this.§5214234570234583123423632234§.§521423138622313875123423632234§(param1.§5214232783232796123423632234§);
         this.§dynamic use switch§.§5214239388239401123423632234§(param1);
      }
      
      public function §521423120402312053123423632234§(param1:int) : void
      {
         if(this.§5214235707235720123423632234§.isValid())
         {
            this.§5214234570234583123423632234§.§521423120402312053123423632234§(param1);
            this.§5214231466231479123423632234§();
         }
         else
         {
            this.§5214234570234583123423632234§.§dynamic finally var§ = 2147483647;
            this.§with set include§.dispatchEventOnce(new DataValidationErrorEvent(9));
         }
      }
      
      public function §var package extends§() : Number
      {
         return this.§5214234570234583123423632234§.§break catch else§.z;
      }
      
      public function §null const continue§(param1:Vector.<§521423136582313671123423632234§>) : void
      {
         this.§dynamic use switch§.§52142394723960123423632234§(param1);
      }
      
      final private function §5214231466231479123423632234§() : void
      {
         var _loc6_:int = 0;
         var _loc2_:§default set override§ = null;
         var _loc10_:§const throw§ = null;
         var _loc9_:Vector3 = null;
         var _loc11_:Vector3 = null;
         var _loc7_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Vector.<§default set override§> = this.§dynamic use switch§.§5214235797235810123423632234§();
         var _loc4_:int = int(_loc5_.length);
         while(_loc6_ < _loc4_)
         {
            _loc2_ = _loc5_[_loc6_];
            _loc10_ = _loc2_.§5214232783232796123423632234§;
            _loc9_ = _loc10_.§implements catch catch§.§native use function§;
            _loc11_ = BattleUtils.§switch for default§;
            _loc10_.§implements catch catch§.§try switch true§.getZAxis(_loc11_);
            _loc7_ = _loc9_.x * _loc11_.x + _loc9_.y * _loc11_.y + _loc9_.z * _loc11_.z;
            if(_loc11_.z < -0.1 || _loc11_.z < 0.1 && _loc7_ < 0)
            {
               _loc7_ = -_loc7_;
               _loc11_.reverse();
            }
            _loc2_.§break var default§();
            if(_loc2_.§521423124902312503123423632234§ || _loc2_.§521423137312313744123423632234§ || _loc2_.§521423109462310959123423632234§() || !_loc2_.§5214232602232615123423632234§())
            {
               _loc12_ = 200;
               if(!_loc2_.§521423124902312503123423632234§ && _loc2_.§5214232602232615123423632234§() && _loc2_.§521423130942313107123423632234§ > _loc12_)
               {
                  _loc12_ = _loc2_.§521423130942313107123423632234§;
               }
               _loc8_ = _loc2_.§5214237100237113123423632234§.dot(_loc11_);
               _loc1_ = _loc8_ * _loc2_.§5214232783232796123423632234§.§5214239314239327123423632234§ * 33 / 1000;
               if(_loc1_ < 200)
               {
                  _loc1_ = 0;
               }
               _loc12_ = _loc1_ > _loc12_ ? _loc1_ : _loc12_;
               if(_loc7_ > _loc12_)
               {
                  _loc3_ = _loc7_ - _loc12_;
                  _loc9_.x -= _loc3_ * _loc11_.x;
                  _loc9_.y -= _loc3_ * _loc11_.y;
                  _loc9_.z -= _loc3_ * _loc11_.z;
                  _loc7_ = _loc12_;
               }
            }
            _loc2_.§521423130942313107123423632234§ = _loc7_;
            _loc2_.§5214237100237113123423632234§.reset();
            _loc6_++;
         }
      }
      
      public function §5214232596232609123423632234§() : §static set true§
      {
         return this.§dynamic use switch§;
      }
      
      public function §final switch package§(param1:§default set override§) : void
      {
         this.§5214234570234583123423632234§.§final switch package§(param1.§5214232783232796123423632234§);
         this.§dynamic use switch§.§521423114102311423123423632234§(param1);
      }
      
      public function §5214238155238168123423632234§() : int
      {
         return this.§5214234570234583123423632234§.§dynamic finally var§;
      }
      
      public function destroy() : void
      {
         this.§dynamic use switch§.destroy();
      }
   }
}

