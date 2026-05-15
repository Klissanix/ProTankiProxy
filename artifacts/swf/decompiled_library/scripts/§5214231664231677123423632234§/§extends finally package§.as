package §5214231664231677123423632234§
{
   import §extends var import§.§5214231658231671123423632234§;
   import flash.utils.Dictionary;
   import §package finally switch§.§521423138562313869123423632234§;
   import §package finally switch§.§get switch super§;
   import §package finally switch§.§import var with§;
   
   public class §extends finally package§
   {
      
      public function §extends finally package§()
      {
         super();
      }
      
      public static function createUsersStat(param1:Dictionary, param2:Vector.<§521423138562313869123423632234§>) : Vector.<ClientUserStat>
      {
         var _loc7_:int = 0;
         var _loc4_:§521423138562313869123423632234§ = null;
         var _loc3_:ClientUserStat = null;
         var _loc5_:int = int(param2.length);
         var _loc6_:Vector.<ClientUserStat> = new Vector.<ClientUserStat>(_loc5_);
         while(_loc7_ < _loc5_)
         {
            _loc4_ = param2[_loc7_];
            _loc3_ = new ClientUserStat();
            _loc3_.initUserInfo(_loc4_,param1[_loc4_.§const const finally§]);
            _loc6_[_loc7_] = _loc3_;
            _loc7_++;
         }
         return _loc6_;
      }
      
      public static function getUserInfo(param1:String, param2:Vector.<§521423138562313869123423632234§>) : §521423138562313869123423632234§
      {
         var _loc5_:int = 0;
         var _loc3_:§521423138562313869123423632234§ = null;
         var _loc4_:int = int(param2.length);
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param2[_loc5_];
            if(param1 == _loc3_.§const const finally§)
            {
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function getRewardById(param1:String, param2:Vector.<§get switch super§>) : int
      {
         var _loc5_:int = 0;
         var _loc4_:§get switch super§ = null;
         var _loc3_:int = int(param2.length);
         while(_loc5_ < _loc3_)
         {
            _loc4_ = param2[_loc5_];
            if(param1 == _loc4_.§each use get§)
            {
               return _loc4_.reward;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function deleteUserStat(param1:Vector.<ClientUserStat>, param2:String) : Vector.<ClientUserStat>
      {
         var _loc6_:int = 0;
         var _loc3_:ClientUserStat = null;
         var _loc5_:Vector.<ClientUserStat> = new Vector.<ClientUserStat>();
         var _loc4_:int = int(param1.length);
         while(_loc6_ < _loc4_)
         {
            _loc3_ = param1[_loc6_];
            if(_loc3_.userId != param2)
            {
               _loc5_[_loc5_.length] = _loc3_;
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function createClientUserInfo(param1:§521423138562313869123423632234§, param2:§5214231658231671123423632234§) : ClientUserInfo
      {
         return new ClientUserInfo(param1.§const const finally§,param1.uid,param1.§5214237240237253123423632234§,false,false,param2,param1.§521423123012312314123423632234§);
      }
      
      public static function getClientUserStat(param1:Vector.<ClientUserStat>, param2:String) : ClientUserStat
      {
         var _loc5_:int = 0;
         var _loc3_:ClientUserStat = null;
         var _loc4_:int = int(param1.length);
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2)
            {
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function calculateBonusReward(param1:int, param2:int) : int
      {
         return Math.ceil(param1 * param2 / 100);
      }
      
      public static function changeUserStat(param1:Vector.<ClientUserStat>, param2:§import var with§) : ClientUserStat
      {
         var _loc5_:int = 0;
         var _loc3_:ClientUserStat = null;
         var _loc4_:int = int(param1.length);
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2.§const const finally§)
            {
               _loc3_.updateUserStat(param2);
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function updateReward(param1:Vector.<ClientUserStat>, param2:Vector.<§get switch super§>, param3:int) : void
      {
         var _loc7_:int = 0;
         var _loc6_:§get switch super§ = null;
         var _loc4_:ClientUserStat = null;
         var _loc5_:int = int(param2.length);
         while(_loc7_ < _loc5_)
         {
            _loc6_ = param2[_loc7_];
            _loc4_ = getClientUserStat(param1,_loc6_.§each use get§);
            if(_loc4_ != null)
            {
               _loc4_.reward = _loc6_.reward;
               _loc4_.premiumBonusReward = _loc6_.premiumBonusReward;
               _loc4_.newbiesAbonementBonusReward = _loc6_.newbiesAbonementBonusReward;
               if(_loc4_.premiumBonusReward <= 0)
               {
                  _loc4_.premiumBonusReward = Math.ceil(_loc6_.reward * param3 / 100);
               }
            }
            _loc7_++;
         }
      }
      
      public static function getUserPosition(param1:Vector.<ClientUserStat>, param2:String) : int
      {
         var _loc5_:int = 0;
         var _loc3_:ClientUserStat = null;
         var _loc4_:int = int(param1.length);
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2)
            {
               return _loc5_;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function refreshUsersStat(param1:Dictionary, param2:Vector.<§import var with§>) : Vector.<ClientUserStat>
      {
         var _loc7_:int = 0;
         var _loc4_:§import var with§ = null;
         var _loc3_:ClientUserStat = null;
         var _loc5_:int = int(param2.length);
         var _loc6_:Vector.<ClientUserStat> = new Vector.<ClientUserStat>(_loc5_);
         while(_loc7_ < _loc5_)
         {
            _loc4_ = param2[_loc7_];
            _loc3_ = new ClientUserStat();
            _loc3_.initUserStat(_loc4_,param1[_loc4_.§const const finally§]);
            _loc6_[_loc7_] = _loc3_;
            _loc7_++;
         }
         return _loc6_;
      }
   }
}

