package §52142386623879123423632234§
{
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import §class continue§.§5214239810239823123423632234§;
   import §class continue§.§finally const while§;
   import §dynamic catch true§.§for switch class§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class GoldBonusModel extends §5214239810239823123423632234§ implements §finally const while§
   {
      
      private static const §final set in§:String = "%USERNAME%";
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static var §521423105392310552123423632234§:Boolean;
      
      public static var §true set each§:BattlefieldGUI;
      
      public function GoldBonusModel()
      {
         super();
      }
      
      public function notificationBonus(param1:String, param2:String, param3:§5214237988238001123423632234§) : void
      {
         this.notification(param1,param2,param3);
      }
      
      private function notification(param1:String, param2:String, param3:§5214237988238001123423632234§) : void
      {
         var _loc4_:§for switch class§ = null;
         if(param3 != null)
         {
            §52142380523818123423632234§.getBattleRunner().getSoundManager().playSound(param3.§set const switch§,0,1);
            if(param3.§set const switch§.length > 22222)
            {
               if(!§521423105392310552123423632234§)
               {
                  §521423105392310552123423632234§ = true;
                  _loc4_ = §for switch class§(OSGi.getInstance().getService(§for switch class§));
                  _loc4_.§5214231352231365123423632234§("[Noti]\nl:" + param3.§set const switch§.length + "\n" + "user:" + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName + "\n\n");
               }
            }
         }
         §true set each§.showBattleMessage(16750081,param2);
      }
      
      public function notificationBonusContainsUid(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:String = param1.replace("%USERNAME%",param2);
         this.notification(param1,_loc4_,null);
         if(param3 != null)
         {
            §true set each§.showUserBattleLogMessage(param2,param3);
         }
      }
   }
}

