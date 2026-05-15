package projects.tanks.clients.fp10.libraries.tanksservices.utils
{
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   
   public class AlertUtils
   {
      
      public static var §521423422355123423632234§:FullscreenStateService;
      
      public function AlertUtils()
      {
         super();
      }
      
      public static function isCancelKey(param1:uint) : Boolean
      {
         return param1 == 27 && !§521423422355123423632234§.isFullscreen();
      }
      
      public static function isConfirmationKey(param1:uint) : Boolean
      {
         return param1 == 13;
      }
   }
}

