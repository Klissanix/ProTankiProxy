package §521423133592313372123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.globalization.DateTimeFormatter;
   
   public class DateFormatter
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static var §default switch set§:DateTimeFormatter;
      
      private static var §5214238806238819123423632234§:DateTimeFormatter;
      
      private static var §5214234568234581123423632234§:DateTimeFormatter;
      
      public function DateFormatter()
      {
         super();
      }
      
      public static function formatDateToLocalized(param1:Date) : String
      {
         if(§default switch set§ == null)
         {
            §default switch set§ = new DateTimeFormatter("");
            §default switch set§.setDateTimePattern(§5214236363236376123423632234§.getText("DATE_FORMAT"));
         }
         return §default switch set§.format(param1);
      }
      
      public static function formatTimeForChatToLocalized(param1:Date) : String
      {
         if(§5214234568234581123423632234§ == null)
         {
            §5214234568234581123423632234§ = new DateTimeFormatter("");
            §5214234568234581123423632234§.setDateTimePattern("HH:mm");
         }
         return §5214234568234581123423632234§.format(param1);
      }
      
      public static function formatTime(param1:Date) : String
      {
         if(§5214238806238819123423632234§ == null)
         {
            §5214238806238819123423632234§ = new DateTimeFormatter("");
            §5214238806238819123423632234§.setDateTimePattern("HH:mm");
         }
         return §5214238806238819123423632234§.format(param1);
      }
   }
}

