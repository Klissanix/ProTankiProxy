package §throw with§
{
   import §5214233396233409123423632234§.§521423126092312622123423632234§;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import §false set native§.§super var catch§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import §try package extends§.§521423105962310609123423632234§;
   import §try package extends§.§5214232200232213123423632234§;
   
   public class §else use use§ extends §5214232200232213123423632234§ implements §521423105962310609123423632234§, §do set function§, §throw catch var§, §native catch continue§
   {
      
      public static var §switch use var§:ClanUserService;
      
      private var §5214232347232360123423632234§:Vector.<Long>;
      
      public function §else use use§()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         this.§5214232347232360123423632234§.length = 0;
      }
      
      private function §dynamic set class§() : Boolean
      {
         var _loc1_:§521423126092312622123423632234§ = §521423126092312622123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423126092312622123423632234§));
         return _loc1_.§case var const§();
      }
      
      public function §try finally package§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         var _loc2_:int = this.§5214232347232360123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§5214232347232360123423632234§.splice(_loc2_,1);
            §super var catch§.§true package static§().dispatchEvent(new §super var catch§("ClansListEvent.OUTGOING" + "ClansListEvent.REMOVE",param1));
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
      
      public function §5214235875235888123423632234§() : Vector.<Long>
      {
         return this.§5214232347232360123423632234§;
      }
      
      public function §final switch§(param1:Long) : void
      {
         if(!this.§dynamic set class§())
         {
            return;
         }
         this.§5214232347232360123423632234§[§5214232347232360123423632234§.length] = param1;
         §super var catch§.§true package static§().dispatchEvent(new §super var catch§("ClansListEvent.OUTGOING" + "ClansListEvent.ADD",param1));
      }
   }
}

