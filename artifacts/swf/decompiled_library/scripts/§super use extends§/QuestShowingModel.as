package §super use extends§
{
   import §521423113042311317123423632234§.§521423106692310682123423632234§;
   import §521423113042311317123423632234§.§5214231399231412123423632234§;
   import §521423113042311317123423632234§.§throw set while§;
   import alternativa.tanks.service.panel.IPanelView;
   import §default const null§.§5214234857234870123423632234§;
   import §include else§.§package switch set§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§import use const§;
   import §set use return§.§5214236652236665123423632234§;
   import §set use return§.§final const super§;
   import §set use return§.§use use class§;
   import §while switch true§.§5214239798239811123423632234§;
   
   public class QuestShowingModel extends §throw set while§ implements §521423106692310682123423632234§, §5214234168234181123423632234§, §import use const§
   {
      
      public static var §import use with§:IPanelView;
      
      private var §set set switch§:§5214234857234870123423632234§;
      
      private var §5214238026238039123423632234§:Boolean;
      
      public function QuestShowingModel()
      {
         super();
      }
      
      private function f9b7d67(param1:§5214236652236665123423632234§) : void
      {
         this.§set set switch§.removeEventListener("DailyQuestChange",this.a3edac6b);
         this.§set set switch§.removeEventListener("DailyQuestGetPrize",this.b23cb0ea);
         this.§set set switch§.removeEventListener("DailyQuestWindowClose",this.f9b7d67);
         this.§5214238026238039123423632234§ = false;
      }
      
      public function showQuestWindowWithoutDailyQuests(param1:§5214239798239811123423632234§) : void
      {
         if(!this.§5214238026238039123423632234§)
         {
            this.§set set switch§ = new §5214234857234870123423632234§();
            this.§set set switch§.addEventListener("DailyQuestWindowClose",this.f9b7d67);
            this.§set set switch§.§const catch for§(param1);
            this.§set set switch§.§with use class§();
            this.§set set switch§.show();
            this.§5214238026238039123423632234§ = true;
         }
      }
      
      public function showQuestWindow(param1:Vector.<§5214231399231412123423632234§>, param2:§5214239798239811123423632234§) : void
      {
         if(!this.§5214238026238039123423632234§)
         {
            this.§set set switch§ = new §5214234857234870123423632234§();
            this.§set set switch§.addEventListener("DailyQuestChange",this.a3edac6b);
            this.§set set switch§.addEventListener("DailyQuestGetPrize",this.b23cb0ea);
            this.§set set switch§.addEventListener("DailyQuestWindowClose",this.f9b7d67);
            this.§5214238026238039123423632234§ = true;
            this.§set set switch§.init(param1);
            this.§set set switch§.§const catch for§(param2);
            this.§set set switch§.show();
         }
      }
      
      public function skipDailyQuest(param1:Long, param2:§5214231399231412123423632234§) : void
      {
         if(this.§5214238026238039123423632234§)
         {
            this.§set set switch§.§521423114572311470123423632234§(param1,param2);
         }
      }
      
      public function takeDailyQuestPrize(param1:Long) : void
      {
         if(this.§5214238026238039123423632234§)
         {
            this.§set set switch§.§super switch finally§(param1);
         }
      }
      
      public function objectUnloadedPost() : void
      {
         §import use with§.getPanel().§521423117142311727123423632234§.removeEventListener("Close",this.d17c908c);
      }
      
      private function d17c908c(param1:§package switch set§) : void
      {
         if(param1.§5214236155236168123423632234§ == "DailyQuests")
         {
            §521423120492312062123423632234§.§521423126212312634123423632234§();
         }
      }
      
      private function a3edac6b(param1:§final const super§) : void
      {
         §52142368023693123423632234§(modelRegistry.getModel(Long.getLong(-309606050,-1620234202))).skipDailyQuest(param1.§5214235824235837123423632234§);
      }
      
      public function objectLoadedPost() : void
      {
         §import use with§.getPanel().§521423117142311727123423632234§.addEventListener("Close",this.d17c908c);
      }
      
      private function b23cb0ea(param1:§use use class§) : void
      {
         §52142368023693123423632234§(modelRegistry.getModel(Long.getLong(-309606050,-1620234202))).takePrize(param1.§5214235824235837123423632234§);
      }
   }
}

