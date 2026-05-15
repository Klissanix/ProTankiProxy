package §5214234562234575123423632234§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.tanks.service.clan.ClanFriendsService;
   import alternativa.tanks.service.clan.ClanMembersListEvent;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import §var for finally§.§5214234151234164123423632234§;
   import §var for finally§.§5214239425239438123423632234§;
   
   public class §521423108042310817123423632234§ extends §5214239425239438123423632234§ implements §5214234151234164123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §set set native§:ClanFriendsService;
      
      public function §521423108042310817123423632234§()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §set set native§.clanMembers = null;
      }
      
      public function §catch set var§(param1:Vector.<String>) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §set set native§.clanMembers = param1.concat();
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function §5214238544238557123423632234§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         var _loc2_:int = §set set native§.clanMembers.indexOf(param1);
         if(_loc2_ >= 0)
         {
            §set set native§.clanMembers.splice(_loc2_,1);
            §set set native§.dispatchEvent(new ClanMembersListEvent("ClanMembersListEvent.REMOVE_USER",param1));
         }
      }
      
      public function §false package final§(param1:String) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §set set native§.clanMembers.push(param1);
         §set set native§.dispatchEvent(new ClanMembersListEvent("ClanMembersListEvent.ACCEPTED_USER",param1));
      }
      
      public function objectLoaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         §set set native§.clanMembers = §switch var switch§().§else use while§.concat();
      }
   }
}

