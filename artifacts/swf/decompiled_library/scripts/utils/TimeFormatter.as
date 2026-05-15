package utils
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class TimeFormatter
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §false finally§:int = 60;
      
      private static const §5214236341236354123423632234§:int = 3600;
      
      private static const §final finally set§:int = 86400;
      
      public function TimeFormatter()
      {
         super();
      }
      
      private static function add(param1:int, param2:String, param3:String) : String
      {
         if(param1 > 0)
         {
            if(param3.length > 0)
            {
               param3 += " ";
            }
            param3 += param1 + §5214236363236376123423632234§.getText(param2);
         }
         return param3;
      }
      
      public static function formatDHMS(param1:int, param2:int, param3:int, param4:int) : String
      {
         var _loc5_:String = "";
         var _loc6_:Boolean = §5214236363236376123423632234§.language == "cn";
         if(param1 > 0)
         {
            _loc5_ = add(param1,"TIME_LABEL_DAY",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = add(param2,"TIME_LABEL_HOUR",_loc5_);
            }
         }
         else if(param2 > 0)
         {
            _loc5_ = add(param2,"TIME_LABEL_HOUR",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = add(param3,"TIME_LABEL_MINUTE",_loc5_);
            }
         }
         else if(param3 > 0)
         {
            _loc5_ = add(param3,"TIME_LABEL_MINUTE",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = add(param4,"TIME_LABEL_SECOND",_loc5_);
            }
         }
         else
         {
            _loc5_ = add(param4,"TIME_LABEL_SECOND",_loc5_);
         }
         return _loc5_;
      }
      
      public static function format(param1:int) : String
      {
         var _loc4_:int = param1 / §final finally set§;
         param1 %= §final finally set§;
         var _loc2_:int = param1 / 3600;
         param1 %= 3600;
         var _loc3_:int = param1 / 60;
         param1 %= 60;
         return formatDHMS(_loc4_,_loc2_,_loc3_,param1);
      }
   }
}

