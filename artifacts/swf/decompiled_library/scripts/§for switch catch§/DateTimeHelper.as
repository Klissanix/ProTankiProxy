package §for switch catch§
{
   import §521423133592313372123423632234§.DateFormatter;
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class DateTimeHelper
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §with package static§:int = 1000;
      
      private static const §521423133372313350123423632234§:int = 86400000;
      
      public function DateTimeHelper()
      {
         super();
      }
      
      public static function convertSecondsToMilliseconds(param1:int) : Number
      {
         return param1 * 1000;
      }
      
      public static function formatDateTimeWithExpiredLabel(param1:Date) : String
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = " ";
         if(!isNaN(param1.date))
         {
            _loc2_ = param1.getTime() - new Date().getTime();
            if(_loc2_ < §521423133372313350123423632234§)
            {
               _loc3_ = §5214236363236376123423632234§.getText("PREMIUM_COMPLETION_IN") + DateFormatter.formatTime(param1);
            }
            else
            {
               _loc3_ = §5214236363236376123423632234§.getText("PREMIUM_COMPLETION") + " " + DateFormatter.formatDateToLocalized(param1);
            }
         }
         return _loc3_;
      }
   }
}

