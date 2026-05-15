package §false set native§
{
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import fl.controls.List;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import utils.ScrollStyleUtils;
   
   public class §do var try§ extends Sprite
   {
      
      public static var §switch use var§:ClanUserService;
      
      protected var §override const finally§:§override package static§;
      
      protected var §521423110602311073123423632234§:List;
      
      protected var §if switch dynamic§:Dictionary;
      
      protected var §5214237851237864123423632234§:Number;
      
      protected var §do finally set§:Number;
      
      private var §extends catch default§:§const set super§;
      
      public function §do var try§()
      {
         super();
         this.§if switch dynamic§ = new Dictionary();
         this.§extends catch default§ = new §const set super§();
         addChild(this.§extends catch default§);
         this.§521423110602311073123423632234§ = new List();
         this.§521423110602311073123423632234§.y = 20;
         this.§521423110602311073123423632234§.rowHeight = 20;
         this.§521423110602311073123423632234§.setStyle("cellRenderer",§521423101252310138123423632234§);
         this.§521423110602311073123423632234§.focusEnabled = true;
         this.§521423110602311073123423632234§.selectable = false;
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
         this.§override const finally§ = new §override package static§();
         this.§override const finally§.§5214233046233059123423632234§ = this.§521423102822310295123423632234§;
         this.§override const finally§.sortOn(["isNew","name"],[0x10 | 2,1]);
         this.§521423110602311073123423632234§.dataProvider = this.§override const finally§;
         addChild(this.§521423110602311073123423632234§);
         ScrollStyleUtils.setGreenStyle(this.§521423110602311073123423632234§);
      }
      
      public function §include package static§(param1:Long) : void
      {
         this.§override const finally§.§include package static§(param1);
         this.§override const finally§.§5214234287234300123423632234§();
         this.resize(this.§5214237851237864123423632234§,this.§do finally set§);
      }
      
      public function §521423999231012123423632234§(param1:Long, param2:String) : void
      {
         this.§override const finally§.§521423999231012123423632234§(param1,param2);
         this.resize(this.§5214237851237864123423632234§,this.§do finally set§);
      }
      
      protected function §5214234472234485123423632234§(param1:Object) : Boolean
      {
         return param1 in this.§if switch dynamic§;
      }
      
      public function §5214236671236684123423632234§() : void
      {
         for(var _loc1_ in this.§if switch dynamic§)
         {
            ClanUserNotificationsManager.removeIncomingNotification(_loc1_.id);
         }
      }
      
      public function §5214234287234300123423632234§() : void
      {
         this.§override const finally§.§5214234287234300123423632234§();
      }
      
      private function §521423102822310295123423632234§(param1:Object) : void
      {
         if(!this.§5214234472234485123423632234§(param1))
         {
            if(param1.type == "INCOMING")
            {
               ClanUserNotificationsManager.removeIncomingNotification(param1.id);
            }
            this.§5214233553233566123423632234§(param1);
         }
      }
      
      public function §521423115682311581123423632234§(param1:Vector.<Long>, param2:String) : void
      {
         this.§override const finally§.removeAll();
         this.§override const finally§.§else for class§(false);
         for each(var _loc3_ in param1)
         {
            this.§override const finally§.§521423999231012123423632234§(_loc3_,param2,false);
         }
         this.§override const finally§.§5214234287234300123423632234§();
         this.resize(this.§5214237851237864123423632234§,this.§do finally set§);
      }
      
      protected function §5214233553233566123423632234§(param1:Object) : void
      {
         this.§if switch dynamic§[param1] = true;
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§do finally set§ = param2;
         this.§extends catch default§.width = param1;
         this.§521423110602311073123423632234§.height = this.§do finally set§ - 20;
         var _loc3_:Boolean = this.§521423110602311073123423632234§.verticalScrollBar.visible;
         this.§521423110602311073123423632234§.width = _loc3_ ? this.§5214237851237864123423632234§ + 6 : this.§5214237851237864123423632234§;
      }
      
      public function §false package§(param1:String, param2:String) : void
      {
         this.§override const finally§.§521423116042311617123423632234§(param1,param2);
         this.resize(this.§5214237851237864123423632234§,this.§do finally set§);
      }
   }
}

