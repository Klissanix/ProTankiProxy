package §521423103332310346123423632234§
{
   import §521423107142310727123423632234§.§5214231669231682123423632234§;
   import §5214233242233255123423632234§.§continue package switch§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import alternativa.tanks.models.service.ClanNotificationsManager;
   
   public class ClanIncomingRequestsButton extends ClanButtonActionListener implements §521423138122313825123423632234§
   {
      
      private static const §5214236332236345123423632234§:int = 11;
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private var §final const final§:ClanButtonActionListener;
      
      private var §5214234013234026123423632234§:§continue package switch§;
      
      private var §5214238723100123423632234§:§5214231669231682123423632234§ = new §5214231669231682123423632234§();
      
      public function ClanIncomingRequestsButton(param1:ClanButtonActionListener, param2:§continue package switch§)
      {
         super(§5214238194238207123423632234§.§52142378523798123423632234§);
         this.§final const final§ = param1;
         this.§5214234013234026123423632234§ = param2;
         addChild(this.§5214238723100123423632234§);
         this.§5214238723100123423632234§.y = -6;
      }
      
      override public function updateActions() : void
      {
         super.updateActions();
         this.§final const final§.x = (visible ? x : this.§5214234013234026123423632234§.width - 11) - 7 - this.§final const final§.width;
      }
      
      public function updateNotifications() : void
      {
         var _loc1_:int = ClanNotificationsManager.incomingNotificationsCount();
         this.§5214238723100123423632234§.§while set return§ = _loc1_;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.§5214238723100123423632234§.x = width + 3;
      }
   }
}

