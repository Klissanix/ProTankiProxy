package projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties
{
   import flash.events.EventDispatcher;
   
   public class UserPropertiesService extends EventDispatcher implements IUserPropertiesService
   {
      
      private var §5214234339234352123423632234§:String;
      
      private var §var finally dynamic§:String;
      
      private var §break use in§:int;
      
      private var §implements switch in§:int;
      
      private var §do set if§:String;
      
      private var §5214236573236586123423632234§:int;
      
      private var §5214239488239501123423632234§:String;
      
      public function UserPropertiesService()
      {
         super();
      }
      
      public function get rank() : int
      {
         return this.§implements switch in§;
      }
      
      public function get userName() : String
      {
         return this.§var finally dynamic§;
      }
      
      public function get serverNumber() : int
      {
         return this.§5214236573236586123423632234§;
      }
      
      public function get userId() : String
      {
         return this.§5214234339234352123423632234§;
      }
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:String, param7:String) : void
      {
         this.§5214234339234352123423632234§ = param1;
         this.§var finally dynamic§ = param2;
         this.§break use in§ = param3;
         this.§implements switch in§ = param4;
         this.§5214236573236586123423632234§ = param5;
         this.§5214239488239501123423632234§ = param6;
         this.§do set if§ = param7;
      }
      
      public function get gameHost() : String
      {
         return this.§5214239488239501123423632234§;
      }
      
      public function updateScore(param1:int) : void
      {
         this.§break use in§ = param1;
         dispatchEvent(new UserPropertiesServiceEvent("UserPropertiesServiceEvent.UPDATE_SCORE",new UserProperties(this.§5214234339234352123423632234§,this.§var finally dynamic§,this.§break use in§,this.§implements switch in§)));
      }
      
      public function updateRank(param1:int) : void
      {
         this.§implements switch in§ = param1;
         dispatchEvent(new UserPropertiesServiceEvent("UserPropertiesServiceEvent.UPDATE_RANK",new UserProperties(this.§5214234339234352123423632234§,this.§var finally dynamic§,this.§break use in§,this.§implements switch in§)));
      }
      
      public function getUserProfileUrl(param1:String) : String
      {
         return this.§do set if§ + param1;
      }
      
      public function get score() : int
      {
         return this.§break use in§;
      }
   }
}

