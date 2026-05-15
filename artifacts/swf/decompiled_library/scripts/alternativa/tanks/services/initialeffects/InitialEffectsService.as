package alternativa.tanks.services.initialeffects
{
   import flash.utils.getTimer;
   
   public class InitialEffectsService implements IInitialEffectsService
   {
      
      private var §false switch with§:Vector.<ClientBattleEffect>;
      
      public function InitialEffectsService()
      {
         super();
      }
      
      public function addInitialEffect(param1:String, param2:int, param3:int, param4:int) : void
      {
         if(this.§false switch with§ == null)
         {
            this.§false switch with§ = new Vector.<ClientBattleEffect>();
         }
         this.§false switch with§[§false switch with§.length] = new ClientBattleEffect(getTimer(),param1,param2,param3,param4);
      }
      
      public function takeInitialEffects(param1:String) : Vector.<ClientBattleEffect>
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:ClientBattleEffect = null;
         var _loc2_:Vector.<ClientBattleEffect> = null;
         if(this.§false switch with§ != null)
         {
            _loc3_ = int(this.§false switch with§.length);
            while(_loc5_ < _loc3_)
            {
               _loc4_ = this.§false switch with§[_loc5_];
               if(_loc4_.userId == param1)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Vector.<ClientBattleEffect>();
                  }
                  _loc2_[_loc2_.length] = _loc4_;
                  this.§false switch with§[_loc5_--] = this.§false switch with§[--_loc3_];
                  this.§false switch with§.length = _loc3_;
               }
               _loc5_++;
            }
            if(_loc3_ == 0)
            {
               this.§false switch with§ = null;
            }
         }
         return _loc2_;
      }
      
      public function removeInitialEffect(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = this.a73be50f(param1,param2);
         if(_loc4_ >= 0)
         {
            _loc3_ = int(this.§false switch with§.length);
            this.§false switch with§[_loc4_] = this.§false switch with§[--_loc3_];
            this.§false switch with§.length = _loc3_;
         }
      }
      
      private function a73be50f(param1:String, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:ClientBattleEffect = null;
         if(this.§false switch with§ != null)
         {
            _loc3_ = int(this.§false switch with§.length);
            while(_loc5_ < _loc3_)
            {
               _loc4_ = this.§false switch with§[_loc5_];
               if(_loc4_.userId == param1 && _loc4_.effectId == param2)
               {
                  return _loc5_;
               }
               _loc5_++;
            }
         }
         return -1;
      }
   }
}

