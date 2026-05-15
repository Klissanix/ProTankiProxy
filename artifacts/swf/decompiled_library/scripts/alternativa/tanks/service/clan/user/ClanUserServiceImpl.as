package alternativa.tanks.service.clan.user
{
   import §5214238576238589123423632234§.§521423128552312868123423632234§;
   import §default var native§.§5214232092232105123423632234§;
   import flash.events.EventDispatcher;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import §throw with§.§native catch continue§;
   
   public class ClanUserServiceImpl extends EventDispatcher implements ClanUserService
   {
      
      private var §5214232530232543123423632234§:§521423120252312038123423632234§;
      
      private var §do package native§:Boolean;
      
      private var §5214233851233864123423632234§:§521423120252312038123423632234§;
      
      private var §5214234603234616123423632234§:Boolean;
      
      private var §521423101682310181123423632234§:Boolean;
      
      public function ClanUserServiceImpl()
      {
         super();
      }
      
      public function get hasClanLicense() : Boolean
      {
         return this.§do package native§;
      }
      
      public function set licenseGarageObject(param1:§521423120252312038123423632234§) : void
      {
         this.§5214233851233864123423632234§ = param1;
      }
      
      public function get otherClan() : Boolean
      {
         return this.§5214234603234616123423632234§;
      }
      
      public function hideNotInClanPanel() : void
      {
         dispatchEvent(new ClanUserServiceEvent("ClanUserServiceEvent.HIDE_CLAN_WINDOW"));
      }
      
      public function get userObject() : §521423120252312038123423632234§
      {
         return this.§5214232530232543123423632234§;
      }
      
      public function set userObject(param1:§521423120252312038123423632234§) : void
      {
         this.§5214232530232543123423632234§ = param1;
      }
      
      public function get showBuyLicenseButton() : Boolean
      {
         return this.§521423101682310181123423632234§;
      }
      
      public function containsClanInOutgoing(param1:String) : Boolean
      {
         var _loc2_:§native catch continue§ = §native catch continue§(this.§5214232530232543123423632234§.adapt(§native catch continue§));
         var _loc3_:Vector.<Long> = _loc2_.§5214235875235888123423632234§();
         return this.b1e62c9c(_loc3_,param1);
      }
      
      public function getIncomingClanNames(param1:String) : Boolean
      {
         var _loc3_:§5214232092232105123423632234§ = §5214232092232105123423632234§(this.§5214232530232543123423632234§.adapt(§5214232092232105123423632234§));
         var _loc2_:Vector.<Long> = _loc3_.§5214237660237673123423632234§();
         return this.b1e62c9c(_loc2_,param1);
      }
      
      public function set hasClanLicense(param1:Boolean) : void
      {
         this.§do package native§ = param1;
      }
      
      public function get licenseGarageObject() : §521423120252312038123423632234§
      {
         return this.§5214233851233864123423632234§;
      }
      
      public function getObjectById(param1:Long) : §521423120252312038123423632234§
      {
         return this.userObject.space.getObject(param1);
      }
      
      private function b1e62c9c(param1:Vector.<Long>, param2:String) : Boolean
      {
         var _loc4_:§521423128552312868123423632234§ = null;
         var _loc3_:String = null;
         var _loc6_:§52142376523778123423632234§ = this.§5214232530232543123423632234§.space;
         for each(var _loc5_ in param1)
         {
            _loc4_ = §521423128552312868123423632234§(_loc6_.getObject(_loc5_).adapt(§521423128552312868123423632234§));
            _loc3_ = _loc4_.§in switch set§();
            if(param2 == _loc3_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set otherClan(param1:Boolean) : void
      {
         this.§5214234603234616123423632234§ = param1;
      }
      
      public function set showBuyLicenseButton(param1:Boolean) : void
      {
         this.§521423101682310181123423632234§ = param1;
      }
   }
}

