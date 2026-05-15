package §throw package function§
{
   import §5214236853236866123423632234§.§super catch override§;
   import §class catch dynamic§.§with switch if§;
   import §const use implements§.§var use native§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class BattleLinkData
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private var §5214234339234352123423632234§:String;
      
      private var §5214234521234534123423632234§:§super catch override§;
      
      private var §521423104692310482123423632234§:String;
      
      public function BattleLinkData(param1:String, param2:§with switch if§)
      {
         super();
         this.§5214234339234352123423632234§ = param1;
         this.§5214234521234534123423632234§ = param2.§5214234521234534123423632234§;
         this.§521423104692310482123423632234§ = this.§5214234521234534123423632234§.§return package for§ + " " + this.§5214234521234534123423632234§.§try catch else§.§extends set case§;
      }
      
      public function availableRank() : Boolean
      {
         var _loc1_:int = §52142329523308123423632234§.rank;
         return this.isShowBattle() && (_loc1_ >= this.§5214234521234534123423632234§.§false catch continue§.§5214239002239015123423632234§ && _loc1_ <= this.§5214234521234534123423632234§.§false catch continue§.§5214232042232055123423632234§);
      }
      
      public function get serverNumber() : int
      {
         return this.§5214234521234534123423632234§.§5214235402235415123423632234§;
      }
      
      public function get range() : §var use native§
      {
         return this.§5214234521234534123423632234§.§false catch continue§;
      }
      
      public function get mapName() : String
      {
         return this.§521423104692310482123423632234§;
      }
      
      public function isShowBattle() : Boolean
      {
         var _loc1_:Boolean = true;
         if(this.§5214234521234534123423632234§.§52142386923882123423632234§)
         {
            _loc1_ = this.isSelfBattle();
         }
         return _loc1_;
      }
      
      public function getBattleData() : §super catch override§
      {
         return this.§5214234521234534123423632234§;
      }
      
      public function get userId() : String
      {
         return this.§5214234339234352123423632234§;
      }
      
      public function isClickable() : Boolean
      {
         return !this.isSelfBattle() && this.isShowBattle();
      }
      
      public function isSelfBattle() : Boolean
      {
         var _loc1_:String = §while for package§.getCurrentUserId();
         var _loc2_:§5214231456231469123423632234§ = §while for package§.getOrCreateUpdater(_loc1_);
         if(_loc2_.battleLink != null)
         {
            return _loc2_.battleLink.battleId == this.battleId;
         }
         return false;
      }
      
      public function get proBattle() : Boolean
      {
         return this.§5214234521234534123423632234§.§521423134322313445123423632234§;
      }
      
      public function get battleId() : String
      {
         return this.§5214234521234534123423632234§.§521423122262312239123423632234§;
      }
   }
}

