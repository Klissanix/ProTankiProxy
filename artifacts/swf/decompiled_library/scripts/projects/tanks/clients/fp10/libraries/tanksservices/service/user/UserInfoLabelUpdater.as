package projects.tanks.clients.fp10.libraries.tanksservices.service.user
{
   import flash.events.EventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.§521423128522312865123423632234§;
   import §throw package function§.BattleLinkData;
   
   public class UserInfoLabelUpdater extends EventDispatcher implements §5214239646239659123423632234§, §5214231456231469123423632234§, §521423128522312865123423632234§
   {
      
      private var §implements switch in§:int = 0;
      
      private var §5214232654232667123423632234§:String = null;
      
      private var §return switch include§:Boolean = false;
      
      private var §5214236573236586123423632234§:int;
      
      private var §521423140552314068123423632234§:BattleLinkData;
      
      private var §5214234396234409123423632234§:int;
      
      private var §52142345723470123423632234§:Number;
      
      private var §default var final§:Boolean;
      
      public function UserInfoLabelUpdater()
      {
         super();
      }
      
      public function get lastAccessTime() : Number
      {
         return this.§52142345723470123423632234§;
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
      
      public function incrementVisibleLabelsCounter() : void
      {
         ++this.§5214234396234409123423632234§;
      }
      
      public function hasData() : Boolean
      {
         return this.uid != null;
      }
      
      public function hasPremium() : Boolean
      {
         return this.§default var final§;
      }
      
      public function updateLastAccessTime() : void
      {
         this.§52142345723470123423632234§ = new Date().time;
      }
      
      public function get visibleLabelsCounter() : int
      {
         return this.§5214234396234409123423632234§;
      }
      
      public function decrementVisibleLabelsCounter() : void
      {
         --this.§5214234396234409123423632234§;
      }
      
      public function get online() : Boolean
      {
         return this.§return switch include§;
      }
      
      public function setRank(param1:int) : void
      {
         this.§implements switch in§ = param1;
         dispatchEvent(new UserInfoLabelUpdaterEvent("UserLabelUpdaterEvent.CHANGE_RANK"));
      }
      
      public function setUid(param1:String) : void
      {
         this.§5214232654232667123423632234§ = param1;
         dispatchEvent(new UserInfoLabelUpdaterEvent("UserLabelUpdaterEvent.CHANGE_UID"));
      }
      
      public function setBattleUrl(param1:BattleLinkData) : void
      {
         this.§521423140552314068123423632234§ = param1;
         dispatchEvent(new UserInfoLabelUpdaterEvent("UserLabelUpdaterEvent.CHANGE_BATTLE_LINK"));
      }
      
      public function get rank() : int
      {
         return this.§implements switch in§;
      }
      
      public function get battleLink() : BattleLinkData
      {
         return this.§521423140552314068123423632234§;
      }
      
      public function setPremium(param1:Boolean, param2:String = null) : void
      {
         this.§default var final§ = param1;
         dispatchEvent(new UserInfoLabelUpdaterEvent("UserLabelUpdaterEvent.CHANGE_PREMIUM_STATUS",false,false,false,param2));
      }
      
      public function setOnline(param1:Boolean, param2:int) : void
      {
         this.§return switch include§ = param1;
         this.§5214236573236586123423632234§ = param2;
         dispatchEvent(new UserInfoLabelUpdaterEvent("UserLabelUpdaterEvent.CHANGE_STATUS"));
      }
      
      public function hasBattleLink() : Boolean
      {
         return this.§521423140552314068123423632234§ != null;
      }
      
      public function get serverNumber() : int
      {
         return this.§5214236573236586123423632234§;
      }
   }
}

