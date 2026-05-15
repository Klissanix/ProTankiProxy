package §default var native§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §false set native§.§super var catch§;
   import §native with§.§const var native§;
   import §native with§.§continue for true§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §var const in§ extends §continue for true§ implements §const var native§, §do set function§, §5214232092232105123423632234§
   {
      
      public static var §switch use var§:ClanUserService;
      
      private var §5214232347232360123423632234§:Vector.<Long>;
      
      public function §var const in§()
      {
         super();
      }
      
      public function §5214237660237673123423632234§() : Vector.<Long>
      {
         return this.§5214232347232360123423632234§;
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         this.§5214232347232360123423632234§.length = 0;
      }
      
      public function §super switch continue§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         var _loc2_:int = this.§5214232347232360123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§5214232347232360123423632234§.splice(_loc2_,1);
            §super var catch§.§true package static§().dispatchEvent(new §super var catch§("ClansListEvent.INCOMING" + "ClansListEvent.REMOVE",param1));
         }
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         this.§5214232347232360123423632234§ = §switch var switch§().§5214237990238003123423632234§.concat();
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function §include const final§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         this.§5214232347232360123423632234§[§5214232347232360123423632234§.length] = param1;
         ClanUserNotificationsManager.onIncomingNotification(param1);
         §super var catch§.§true package static§().dispatchEvent(new §super var catch§("ClansListEvent.INCOMING" + "ClansListEvent.ADD",param1));
      }
   }
}

