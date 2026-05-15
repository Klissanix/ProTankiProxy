package projects.tanks.clients.fp10.libraries.tanksservices.service.blur
{
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   
   public interface IBlurService extends IEventDispatcher
   {
      
      function unblurComponent(param1:DisplayObject) : void;
      
      function unblurAllContent() : void;
      
      function unblurAllComponents() : void;
      
      function unblurDialogContent() : void;
      
      function blurBattleContent() : void;
      
      function unblurBattleContent() : void;
      
      function blurGameContent() : void;
      
      function blurComponent(param1:DisplayObject) : void;
      
      function blurAllContent() : void;
      
      function blurDialogContent() : void;
      
      function unblurGameContent() : void;
   }
}

