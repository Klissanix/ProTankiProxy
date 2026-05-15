package alternativa.tanks.service.settings.keybinding
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.utils.Dictionary;
   
   public class KeyCodesConverter
   {
      
      private static var §native set const§:Dictionary;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function KeyCodesConverter()
      {
         super();
         this.b335db2c();
      }
      
      private function b335db2c() : void
      {
         §native set const§ = new Dictionary();
         §native set const§[48] = "0";
         §native set const§[49] = "1";
         §native set const§[50] = "2";
         §native set const§[51] = "3";
         §native set const§[52] = "4";
         §native set const§[53] = "5";
         §native set const§[54] = "6";
         §native set const§[55] = "7";
         §native set const§[56] = "8";
         §native set const§[57] = "9";
         §native set const§[189] = "-";
         §native set const§[187] = "=";
         §native set const§[81] = "Q";
         §native set const§[87] = "W";
         §native set const§[69] = "E";
         §native set const§[82] = "R";
         §native set const§[84] = "T";
         §native set const§[89] = "Y";
         §native set const§[85] = "U";
         §native set const§[73] = "I";
         §native set const§[79] = "O";
         §native set const§[80] = "P";
         §native set const§[65] = "A";
         §native set const§[83] = "S";
         §native set const§[68] = "D";
         §native set const§[70] = "F";
         §native set const§[71] = "G";
         §native set const§[72] = "H";
         §native set const§[74] = "J";
         §native set const§[75] = "K";
         §native set const§[76] = "L";
         §native set const§[90] = "Z";
         §native set const§[88] = "X";
         §native set const§[67] = "C";
         §native set const§[86] = "V";
         §native set const§[66] = "B";
         §native set const§[78] = "N";
         §native set const§[77] = "M";
         §native set const§[37] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_LEFT");
         §native set const§[38] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_UP");
         §native set const§[39] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_RIGHT");
         §native set const§[40] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_DOWN");
         §native set const§[96] = "NumPad 0";
         §native set const§[97] = "NumPad 1";
         §native set const§[98] = "NumPad 2";
         §native set const§[99] = "NumPad 3";
         §native set const§[100] = "NumPad 4";
         §native set const§[101] = "NumPad 5";
         §native set const§[102] = "NumPad 6";
         §native set const§[103] = "NumPad 7";
         §native set const§[104] = "NumPad 8";
         §native set const§[105] = "NumPad 9";
         §native set const§[107] = "NumPad +";
         §native set const§[109] = "NumPad -";
         §native set const§[110] = "NumPad .";
         §native set const§[111] = "NumPad /";
         §native set const§[108] = "NumPad Enter";
         §native set const§[219] = "[";
         §native set const§[221] = "]";
         §native set const§[220] = "\\";
         §native set const§[186] = ";";
         §native set const§[222] = "\'";
         §native set const§[188] = ",";
         §native set const§[190] = ".";
         §native set const§[191] = "/";
         §native set const§[34] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_PG_DN");
         §native set const§[33] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_PG_UP");
         §native set const§[32] = §5214236363236376123423632234§.getText("KEYBOARD_KEY_SPACE");
         §native set const§[16] = "Shift";
         §native set const§[46] = "Delete";
         §native set const§[192] = "`";
      }
      
      public function keyCodeToString(param1:uint) : String
      {
         var _loc2_:String = §native set const§[param1 & ~1073741824];
         if(_loc2_ == null)
         {
            return "";
         }
         if((param1 & 0x40000000) != 0)
         {
            return "Ctrl " + _loc2_;
         }
         return _loc2_;
      }
   }
}

