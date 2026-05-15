package §break use function§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.NewsAlertWindow;
   import flash.events.MouseEvent;
   import §override finally set§.§5214235342235355123423632234§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §static const do§.§catch default§;
   import §static const do§.§import switch false§;
   
   public class NewsShowingModel extends §catch default§ implements §import switch false§, §5214235049235062123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §default finally§:IDialogsService;
      
      private var §package var set§:NewsAlertWindow;
      
      public function NewsShowingModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:Vector.<§5214235342235355123423632234§> = §switch var switch§().§else return§;
         if(_loc3_.length > 0)
         {
            _loc1_ = new Vector.<§5214235342235355123423632234§>();
            _loc2_ = 0;
            while(_loc2_ < _loc3_.length)
            {
               _loc1_.push(_loc3_[_loc2_]);
               _loc2_++;
            }
            this.d51948f3(_loc1_);
         }
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      private function c59713a4(param1:MouseEvent = null) : void
      {
         §default finally§.removeDialog(this.§package var set§);
         this.§package var set§.closeButton.removeEventListener("click",this.c59713a4);
         this.§package var set§ = null;
      }
      
      public function objectUnloaded() : void
      {
      }
      
      private function d51948f3(param1:Vector.<§5214235342235355123423632234§>) : void
      {
         this.§package var set§ = new NewsAlertWindow(param1);
         this.§package var set§.closeButton.addEventListener("click",this.c59713a4);
         §default finally§.addDialog(this.§package var set§);
      }
   }
}

