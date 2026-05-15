package alternativa.tanks.loader
{
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   
   public interface ILoaderWindowService extends IEventDispatcher
   {
      
      function anyTipLoaded() : Boolean;
      
      function showTip(param1:DisplayObject) : void;
      
      function lockLoaderWindow() : void;
      
      function isInProgress() : Boolean;
      
      function unlockLoaderWindow() : void;
      
      function showLoaderWindow() : void;
      
      function hideLoaderWindow() : void;
   }
}

