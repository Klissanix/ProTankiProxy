package §super use return§
{
   import §521423121922312205123423632234§.ClientOnlineNotifierData;
   import fl.data.DataProvider;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   import §throw package function§.BattleLinkData;
   
   public class §try catch finally§ extends DataProvider
   {
      
      public static const §try switch class§:String = "isNew";
      
      public static const §throw package finally§:String = "id";
      
      public static const §521423138552313868123423632234§:String = "online";
      
      public static const §catch use null§:String = "isBattle";
      
      public static const §finally catch do§:String = "uid";
      
      public static const §521423139022313915123423632234§:String = "availableInvite";
      
      public static const §5214238366238379123423632234§:String = "availableBattle";
      
      public static const §for switch in§:String = "rank";
      
      public static var §use in§:IFriendInfoService;
      
      public static var §while for package§:IUserInfoService;
      
      public static var §return set get§:IBattleInfoService;
      
      private static var §521423104032310416123423632234§:RegExp = /\-|\./;
      
      private static var §5214238082238095123423632234§:RegExp = /\*/g;
      
      private var §521423100972310110123423632234§:Function;
      
      private var §52142340423417123423632234§:Dictionary = new Dictionary();
      
      private var §521423119482311961123423632234§:String;
      
      private var §521423135212313534123423632234§:String = "";
      
      private var §catch finally const§:RegExp;
      
      private var §do class§:Object;
      
      private var §5214232751232764123423632234§:Object;
      
      public function §try catch finally§()
      {
         super();
      }
      
      private static function §52142392023933123423632234§(param1:String) : RegExp
      {
         param1 = param1.replace(§521423104032310416123423632234§,"\\$&").replace(§5214238082238095123423632234§,".*");
         param1 = "^" + param1;
         return new RegExp(param1,"i");
      }
      
      public function §super catch use§(param1:String, param2:Boolean = true) : void
      {
         var _loc5_:BattleLinkData = null;
         var _loc4_:§5214231456231469123423632234§ = §while for package§.getOrCreateUpdater(param1);
         var _loc3_:Object = {};
         _loc3_.id = param1;
         _loc3_.uid = param1;
         var _loc6_:int = _loc4_.rank;
         _loc3_.rank = _loc6_;
         _loc3_.online = _loc4_.online;
         _loc3_.isNew = §use in§.isNewFriend(param1);
         if(_loc6_ > 0)
         {
            _loc3_.availableInvite = §return set get§.availableRank(_loc6_);
         }
         else
         {
            _loc4_.addEventListener("UserLabelUpdaterEvent.CHANGE_RANK",§try const else§);
         }
         _loc3_.isBattle = false;
         _loc3_.availableBattle = false;
         if(_loc4_.hasBattleLink())
         {
            _loc5_ = _loc4_.battleLink;
            _loc3_.isBattle = _loc5_.isShowBattle();
            _loc3_.availableBattle = _loc5_.availableRank();
         }
         super.addItem(_loc3_);
         this.§52142340423417123423632234§[param1] = _loc3_;
         if(param2)
         {
            this.§5214234287234300123423632234§();
         }
      }
      
      public function §in var import§(param1:String, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§5214236980236993123423632234§(param1,"isNew",true);
         if(param2 && _loc3_ != -1)
         {
            this.§52142326023273123423632234§();
         }
         return _loc3_;
      }
      
      public function §5214236980236993123423632234§(param1:String, param2:String, param3:Object) : int
      {
         var _loc5_:Object = null;
         var _loc4_:int = this.§5214233729233742123423632234§("id",param1);
         if(_loc4_ != -1)
         {
            _loc5_ = super.getItemAt(_loc4_);
            _loc5_[param2] = param3;
            super.replaceItemAt(_loc5_,_loc4_);
            super.invalidateItemAt(_loc4_);
         }
         if(param1 in this.§52142340423417123423632234§)
         {
            this.§52142340423417123423632234§[param1][param2] = param3;
         }
         return _loc4_;
      }
      
      public function §case for do§(param1:ClientOnlineNotifierData, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§5214236980236993123423632234§(param1.userId,"online",param1.online);
         if(param2 && _loc3_ != -1)
         {
            this.§52142326023273123423632234§();
         }
         return _loc3_;
      }
      
      public function §static final§(param1:String, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§5214236980236993123423632234§(param1,"isBattle",false);
         if(_loc3_ != -1)
         {
            this.§5214236980236993123423632234§(param1,"availableBattle",false);
         }
         if(param2 && _loc3_ != -1)
         {
            this.§52142326023273123423632234§();
         }
         return _loc3_;
      }
      
      public function §5214238644238657123423632234§() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = int(this.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = super.getItemAt(_loc3_);
            _loc1_.availableInvite = §return set get§.availableRank(_loc1_.rank);
            super.replaceItemAt(_loc1_,_loc3_);
            super.invalidateItemAt(_loc3_);
            _loc3_++;
         }
      }
      
      override public function sortOn(param1:Object, param2:Object = null) : *
      {
         this.§do class§ = param1;
         this.§5214232751232764123423632234§ = param2;
         super.sortOn(this.§do class§,this.§5214232751232764123423632234§);
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423100972310110123423632234§ != null)
         {
            this.§521423100972310110123423632234§(_loc2_);
         }
         return _loc2_;
      }
      
      public function get §5214233046233059123423632234§() : Function
      {
         return this.§521423100972310110123423632234§;
      }
      
      public function set §5214233046233059123423632234§(param1:Function) : void
      {
         this.§521423100972310110123423632234§ = param1;
      }
      
      public function §5214233729233742123423632234§(param1:String, param2:*, param3:Boolean = false) : int
      {
         var _loc7_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:int = int(this.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc6_)
         {
            _loc7_ = super.getItemAt(_loc4_);
            if(_loc7_ && _loc7_.hasOwnProperty(param1) && _loc7_[param1] == param2)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         if(param3)
         {
            for(_loc5_ in this.§52142340423417123423632234§)
            {
               _loc7_ = this.§52142340423417123423632234§[_loc5_];
               if(_loc7_.hasOwnProperty(param1) && _loc7_[param1] == param2)
               {
                  return _loc4_;
               }
            }
         }
         return -1;
      }
      
      public function §if set each§(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = this.§5214236980236993123423632234§(param1,"availableInvite",false);
         if(_loc3_ != -1)
         {
            _loc2_ = super.getItemAt(_loc3_);
            _loc2_.availableInvite = §return set get§.availableRank(_loc2_.rank);
            super.replaceItemAt(_loc2_,_loc3_);
            super.invalidateItemAt(_loc3_);
         }
      }
      
      private function §try const else§(param1:UserInfoLabelUpdaterEvent) : void
      {
         var _loc2_:§5214231456231469123423632234§ = param1.target as §5214231456231469123423632234§;
         this.§5214236980236993123423632234§(_loc2_.uid,"rank",_loc2_.rank);
         this.§if set each§(_loc2_.uid);
         _loc2_.removeEventListener("UserLabelUpdaterEvent.CHANGE_RANK",§try const else§);
      }
      
      override public function removeAll() : void
      {
         this.§52142340423417123423632234§ = new Dictionary();
         super.removeAll();
      }
      
      private function §static package package§(param1:Object) : Boolean
      {
         return param1.hasOwnProperty(this.§521423119482311961123423632234§) && param1[this.§521423119482311961123423632234§].search(this.§catch finally const§) != -1;
      }
      
      public function §5214239699239712123423632234§() : void
      {
         var _loc1_:Object = null;
         if(this.§521423135212313534123423632234§ != "")
         {
            super.removeAll();
            for each(_loc1_ in this.§52142340423417123423632234§)
            {
               if(this.§static package package§(_loc1_))
               {
                  super.addItem(_loc1_);
               }
            }
         }
         this.§52142326023273123423632234§();
      }
      
      public function §5214234287234300123423632234§() : void
      {
         this.§5214239699239712123423632234§();
         this.§52142326023273123423632234§();
      }
      
      public function §521423116042311617123423632234§(param1:String, param2:String) : void
      {
         if(param2 == "" && this.§521423135212313534123423632234§ != "")
         {
            this.§else for class§();
            return;
         }
         this.§521423119482311961123423632234§ = param1;
         this.§521423135212313534123423632234§ = param2;
         this.§catch finally const§ = §52142392023933123423632234§(this.§521423135212313534123423632234§);
         this.§5214239699239712123423632234§();
      }
      
      public function §5214238505238518123423632234§(param1:BattleLinkData, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§5214236980236993123423632234§(param1.userId,"isBattle",param1.isShowBattle());
         if(_loc3_ != -1)
         {
            this.§5214236980236993123423632234§(param1.userId,"availableBattle",param1.availableRank());
         }
         if(param2 && _loc3_ != -1)
         {
            this.§52142326023273123423632234§();
         }
         return _loc3_;
      }
      
      public function §else for class§(param1:Boolean = true) : void
      {
         var _loc2_:Object = null;
         this.§521423135212313534123423632234§ = "";
         if(!param1)
         {
            return;
         }
         super.removeAll();
         for each(_loc2_ in this.§52142340423417123423632234§)
         {
            super.addItem(_loc2_);
         }
         this.§52142326023273123423632234§();
      }
      
      public function §default catch super§(param1:String) : void
      {
         var _loc2_:int = this.§5214233729233742123423632234§("id",param1);
         if(_loc2_ >= 0)
         {
            super.removeItemAt(_loc2_);
         }
         delete this.§52142340423417123423632234§[param1];
      }
      
      public function §52142326023273123423632234§() : void
      {
         super.sortOn(this.§do class§,this.§5214232751232764123423632234§);
      }
   }
}

