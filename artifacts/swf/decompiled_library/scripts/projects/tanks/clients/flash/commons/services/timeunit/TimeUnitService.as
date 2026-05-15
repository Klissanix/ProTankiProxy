package projects.tanks.clients.flash.commons.services.timeunit
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class TimeUnitService implements ITimeUnitService
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function TimeUnitService()
      {
         super();
      }
      
      private static function c4839aa3(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.§521423136672313680123423632234§ = "dia";
         }
         else
         {
            _loc4_.§521423136672313680123423632234§ = "dias";
         }
         if(param2 == 1)
         {
            _loc4_.§52142335523368123423632234§ = "hora";
         }
         else
         {
            _loc4_.§52142335523368123423632234§ = "horas";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.§5214239191239204123423632234§ = "minuto";
         }
         else
         {
            _loc4_.§5214239191239204123423632234§ = "minutos";
         }
         return _loc4_;
      }
      
      private static function b18a8dbc() : TimeUnitNames
      {
         var _loc1_:TimeUnitNames = new TimeUnitNames();
         _loc1_.§521423136672313680123423632234§ = "天";
         _loc1_.§52142335523368123423632234§ = "小时";
         _loc1_.§5214239191239204123423632234§ = "分鐘";
         return _loc1_;
      }
      
      private static function b1d36ccf(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         param3 %= 100;
         if(param3 >= 11 && param3 <= 19)
         {
            _loc4_.§521423136672313680123423632234§ = "днів";
         }
         else
         {
            param3 %= 10;
            if(param3 == 1)
            {
               _loc4_.§521423136672313680123423632234§ = "день";
            }
            else if(param3 >= 2 && param3 <= 4)
            {
               _loc4_.§521423136672313680123423632234§ = "дня";
            }
            else
            {
               _loc4_.§521423136672313680123423632234§ = "днів";
            }
         }
         if(param2 == 1 || param2 == 21)
         {
            _loc4_.§52142335523368123423632234§ = "година";
         }
         else if(param2 >= 2 && param2 <= 4 || param2 >= 22 && param2 <= 24)
         {
            _loc4_.§52142335523368123423632234§ = "години";
         }
         else if(param2 >= 5 && param2 <= 20)
         {
            _loc4_.§52142335523368123423632234§ = "годин";
         }
         if(param1 == 0 || param1 == 1 || param1 == 21 || param1 == 31 || param1 == 41 || param1 == 51)
         {
            _loc4_.§5214239191239204123423632234§ = "хвилину";
         }
         else if(param1 >= 2 && param1 <= 4 || param1 >= 22 && param1 <= 24 || param1 >= 32 && param1 <= 34 || param1 >= 42 && param1 <= 44 || param1 >= 52 && param1 <= 54)
         {
            _loc4_.§5214239191239204123423632234§ = "хвилини";
         }
         else if(param1 >= 5 && param1 <= 20 || param1 >= 25 && param1 <= 30 || param1 >= 35 && param1 <= 40 || param1 >= 45 && param1 <= 50 || param1 >= 55 && param1 <= 60)
         {
            _loc4_.§5214239191239204123423632234§ = "хвилин";
         }
         return _loc4_;
      }
      
      private static function c29666b3(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.§521423136672313680123423632234§ = "día";
         }
         else
         {
            _loc4_.§521423136672313680123423632234§ = "días";
         }
         if(param2 == 1)
         {
            _loc4_.§52142335523368123423632234§ = "hora";
         }
         else
         {
            _loc4_.§52142335523368123423632234§ = "horas";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.§5214239191239204123423632234§ = "minuto";
         }
         else
         {
            _loc4_.§5214239191239204123423632234§ = "minutos";
         }
         return _loc4_;
      }
      
      private static function c81b3ae(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         param3 %= 100;
         if(param3 >= 11 && param3 <= 19)
         {
            _loc4_.§521423136672313680123423632234§ = "дней";
         }
         else
         {
            param3 %= 10;
            if(param3 == 1)
            {
               _loc4_.§521423136672313680123423632234§ = "день";
            }
            else if(param3 >= 2 && param3 <= 4)
            {
               _loc4_.§521423136672313680123423632234§ = "дня";
            }
            else
            {
               _loc4_.§521423136672313680123423632234§ = "дней";
            }
         }
         if(param2 == 1 || param2 == 21)
         {
            _loc4_.§52142335523368123423632234§ = "час";
         }
         else if(param2 >= 2 && param2 <= 4 || param2 >= 22 && param2 <= 24)
         {
            _loc4_.§52142335523368123423632234§ = "часа";
         }
         else if(param2 >= 5 && param2 <= 20)
         {
            _loc4_.§52142335523368123423632234§ = "часов";
         }
         if(param1 == 0 || param1 == 1 || param1 == 21 || param1 == 31 || param1 == 41 || param1 == 51)
         {
            _loc4_.§5214239191239204123423632234§ = "минуту";
         }
         else if(param1 >= 2 && param1 <= 4 || param1 >= 22 && param1 <= 24 || param1 >= 32 && param1 <= 34 || param1 >= 42 && param1 <= 44 || param1 >= 52 && param1 <= 54)
         {
            _loc4_.§5214239191239204123423632234§ = "минуты";
         }
         else if(param1 >= 5 && param1 <= 20 || param1 >= 25 && param1 <= 30 || param1 >= 35 && param1 <= 40 || param1 >= 45 && param1 <= 50 || param1 >= 55 && param1 <= 60)
         {
            _loc4_.§5214239191239204123423632234§ = "минут";
         }
         return _loc4_;
      }
      
      private static function f5bfef1(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.§521423136672313680123423632234§ = "dzień";
         }
         else
         {
            _loc4_.§521423136672313680123423632234§ = "dni";
         }
         if(param2 == 1)
         {
            _loc4_.§52142335523368123423632234§ = "godzina";
         }
         else
         {
            _loc4_.§52142335523368123423632234§ = "godzin";
         }
         if(param1 == 0)
         {
            _loc4_.§5214239191239204123423632234§ = "minut";
         }
         else if(param1 == 1)
         {
            _loc4_.§5214239191239204123423632234§ = "minuta";
         }
         else if(param1 >= 2 && param1 <= 4 || param1 >= 22 && param1 <= 24 || param1 >= 32 && param1 <= 34 || param1 >= 42 && param1 <= 44 || param1 >= 52 && param1 <= 54)
         {
            _loc4_.§5214239191239204123423632234§ = "minuty";
         }
         else
         {
            _loc4_.§5214239191239204123423632234§ = "minut";
         }
         return _loc4_;
      }
      
      private static function d5dc58d2(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.§521423136672313680123423632234§ = "day";
         }
         else
         {
            _loc4_.§521423136672313680123423632234§ = "days";
         }
         if(param2 == 1)
         {
            _loc4_.§52142335523368123423632234§ = "hour";
         }
         else
         {
            _loc4_.§52142335523368123423632234§ = "hours";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.§5214239191239204123423632234§ = "minute";
         }
         else
         {
            _loc4_.§5214239191239204123423632234§ = "minutes";
         }
         return _loc4_;
      }
      
      private static function b42fdace(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.§521423136672313680123423632234§ = "Tag";
         }
         else
         {
            _loc4_.§521423136672313680123423632234§ = "Tage";
         }
         if(param2 == 1)
         {
            _loc4_.§52142335523368123423632234§ = "Stunde";
         }
         else
         {
            _loc4_.§52142335523368123423632234§ = "Stunden";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.§5214239191239204123423632234§ = "Minute";
         }
         else
         {
            _loc4_.§5214239191239204123423632234§ = "Minuten";
         }
         return _loc4_;
      }
      
      public function method_1983(param1:int) : String
      {
         return this.method_270(0,0,param1).§521423136672313680123423632234§;
      }
      
      public function method_597(param1:int) : String
      {
         return param1 + " " + this.method_1983(param1);
      }
      
      public function method_795(param1:int, param2:int, param3:int) : String
      {
         var _loc5_:String = "";
         var _loc4_:TimeUnitNames = this.method_270(param1,param2,param3);
         if(param3 == 0 && param2 == 0 && param1 == 0)
         {
            return "1 " + _loc4_.§5214239191239204123423632234§;
         }
         if(param3 != 0)
         {
            _loc5_ = param3 + " " + _loc4_.§521423136672313680123423632234§;
         }
         if(param2 != 0)
         {
            _loc5_ = _loc5_ + " " + param2 + " " + _loc4_.§52142335523368123423632234§;
         }
         if(param1 != 0)
         {
            _loc5_ = _loc5_ + " " + param1 + " " + _loc4_.§5214239191239204123423632234§;
         }
         return _loc5_;
      }
      
      public function method_270(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         switch(§5214236363236376123423632234§.language)
         {
            case "ru":
               return c81b3ae(param1,param2,param3);
            case "de":
               return b42fdace(param1,param2,param3);
            case "pt_BR":
               return c4839aa3(param1,param2,param3);
            case "pl":
               return f5bfef1(param1,param2,param3);
            case "es":
               return c29666b3(param1,param2,param3);
            case "cn":
               return b18a8dbc();
            case "ua":
               return b1d36ccf(param1,param2,param3);
            case "en":
         }
         return d5dc58d2(param1,param2,param3);
      }
   }
}

