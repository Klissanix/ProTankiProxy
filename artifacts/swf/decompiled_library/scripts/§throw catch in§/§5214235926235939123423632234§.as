package §throw catch in§
{
   import §5214231664231677123423632234§.ShortUserInfo;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214235485235498123423632234§.MessageColor;
   import §const var try§.MessageLine;
   import §else const import§.BattleActionUserLabel;
   import §else const import§.BattleChatUserLabel;
   import §static const throw§.ChatOutputLineEvent;
   import §try const default§.§5214234998235011123423632234§;
   
   public class §5214235926235939123423632234§ extends MessageLine
   {
      
      private var §52142365023663123423632234§:BattleChatUserLabel;
      
      private var label:§5214238529238542123423632234§;
      
      public function §5214235926235939123423632234§(param1:ShortUserInfo, param2:String, param3:ShortUserInfo = null)
      {
         super();
         if(param1 != null)
         {
            this.§5214233788233801123423632234§(param1);
         }
         this.§5214237345237358123423632234§(param2);
         if(param3 != null)
         {
            this.§5214233788233801123423632234§(param3);
         }
      }
      
      private function §5214233788233801123423632234§(param1:ShortUserInfo) : void
      {
         this.§52142365023663123423632234§ = new BattleActionUserLabel(param1.userId);
         this.§52142365023663123423632234§.addEventListener("ChatUpdateEvent.UPDATE",this.§5214235966235979123423632234§);
         this.§52142365023663123423632234§.§5214234846234859123423632234§(MessageColor.getUserNameColor(param1.teamType,false),true);
         this.§52142365023663123423632234§.x = width + 4;
         addChild(this.§52142365023663123423632234§);
      }
      
      private function §5214235966235979123423632234§(param1:§5214234998235011123423632234§) : void
      {
         this.§52142365023663123423632234§.x = 4;
         this.label.x = this.§52142365023663123423632234§.width + 4;
         dispatchEvent(new ChatOutputLineEvent("updateUid",this));
      }
      
      private function §5214237345237358123423632234§(param1:String) : void
      {
         this.label = new §5214238529238542123423632234§();
         this.label.text = param1;
         this.label.x = width + 4;
         §dynamic package true§.addChild(this.label);
      }
   }
}

