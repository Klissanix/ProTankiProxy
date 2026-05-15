package §finally catch with§
{
   import alternativa.osgi.service.clientlog.IClientLog;
   
   public class §5214233055233068123423632234§
   {
      
      public static var §try set return§:IClientLog;
      
      private static const §final switch if§:String = "chat";
      
      private static var §521423109662310979123423632234§:Vector.<String>;
      
      private static var §for for const§:int;
      
      private static var §try catch each§:int;
      
      private static var §5214236586236599123423632234§:int;
      
      private static const §if var final§:RegExp = /[^bpfvбпфвcgjkqsxzсцзкгхdtдтlлйmnмнrржшщч]/g;
      
      private static const §5214234281234294123423632234§:RegExp = /[bpfvбпфв]+/g;
      
      private static const §static package null§:RegExp = /[cgjkqsxzсцзкгх]+/g;
      
      private static const §static var implements§:RegExp = /[dtдт]+/g;
      
      private static const §5214233240233253123423632234§:RegExp = /[lлй]+/g;
      
      private static const §set switch native§:RegExp = /[mnмн]+/g;
      
      private static const §finally use case§:RegExp = /[rр]+/g;
      
      private static const §5214239575239588123423632234§:RegExp = /[жшщч]+/g;
      
      private static var §native import§:Vector.<Array> = new Vector.<Array>(0);
      
      public function §5214233055233068123423632234§()
      {
         super();
      }
      
      private static function §set var in§(param1:Array, param2:Array) : Number
      {
         var _loc5_:Number = 0;
         var _loc6_:int = param1.indexOf(param2[0]);
         if(param1.length > 1 && _loc6_ > -1 && _loc6_ < param1.length / 2)
         {
            param1 = param1.slice(_loc6_);
         }
         var _loc3_:int = Math.min(param1.length,param2.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_] == param2[_loc4_])
            {
               _loc5_ += 1;
            }
            else if(_loc4_ > 0 && param1[_loc4_] == param2[_loc4_ - 1])
            {
               _loc5_ += 0.5;
            }
            else if(_loc4_ < _loc3_ - 1 && param1[_loc4_] == param2[_loc4_ + 1])
            {
               _loc5_ += 0.5;
            }
            _loc4_++;
         }
         return _loc5_ / _loc3_;
      }
      
      private static function §521423116022311615123423632234§(param1:Array) : Number
      {
         var _loc2_:* = null;
         if(param1.length < 1)
         {
            return 1;
         }
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            if(_loc3_.indexOf(_loc2_) < 0)
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_.length / param1.length;
      }
      
      public static function §override package final§(param1:String) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Array = null;
         var _loc3_:Array = §in use native§(param1);
         if(param1.length < §for for const§ && _loc3_.length < §try catch each§)
         {
            return true;
         }
         if(§5214233055233068123423632234§.§if switch if§(param1) < 0.3 || §5214233055233068123423632234§.§521423116022311615123423632234§(_loc3_) < 0.59)
         {
            return false;
         }
         for each(_loc2_ in §native import§)
         {
            _loc4_ = Math.max(_loc3_.length,_loc2_.length) / Math.min(_loc3_.length,_loc2_.length);
            if(_loc4_ < 1.5)
            {
               _loc5_ = §set var in§(_loc3_,_loc2_);
               if(_loc5_ > 0.7)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function init(param1:Vector.<String>, param2:int, param3:int, param4:int) : void
      {
         §5214233055233068123423632234§.§521423109662310979123423632234§ = param1;
         §5214233055233068123423632234§.§for for const§ = param2;
         §5214233055233068123423632234§.§try catch each§ = param3;
         §5214233055233068123423632234§.§5214236586236599123423632234§ = param4;
         §try set return§.log("chat","init: minChars = %1  minWords = %2 bufferSize = %3",§5214233055233068123423632234§.§for for const§,§5214233055233068123423632234§.§try catch each§,§5214233055233068123423632234§.§5214236586236599123423632234§);
      }
      
      private static function §var super§(param1:String) : String
      {
         var _loc2_:* = null;
         var _loc3_:String = null;
         for each(_loc2_ in §521423109662310979123423632234§)
         {
            _loc3_ = "(http://|https://)?(www\\.)?" + _loc2_ + "[-a-zA-Z0-9./#%_]+";
            param1 = param1.replace(new RegExp(_loc3_,"gi")," ");
         }
         return param1.replace(/[\s_!@#$%^&*()"'\{\}_=+~,.;:\-\/?\[\]\/]+/g," ");
      }
      
      public static function §in use native§(param1:String, param2:Boolean = false) : Array
      {
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc4_:* = null;
         param1 = §var super§(param1);
         var _loc5_:Array = param1.split(" ");
         var _loc3_:Array = [];
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_ != "")
            {
               _loc3_.push(_loc6_);
            }
         }
         _loc7_ = [];
         for each(_loc4_ in _loc3_)
         {
            _loc7_.push(§5214233055233068123423632234§.§5214232550232563123423632234§(_loc4_));
         }
         if(param2 && _loc7_.length > 0 && (_loc3_.length >= §try catch each§ || param1.length >= §for for const§))
         {
            §native import§.push(_loc7_);
            if(§native import§.length > §5214236586236599123423632234§)
            {
               §native import§.shift();
            }
         }
         return _loc7_;
      }
      
      private static function §5214232550232563123423632234§(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = param1.substr(0,1).toUpperCase();
         param1 = param1.substr(1).toLowerCase().replace(§if var final§,"");
         param1 = param1.replace(§5214234281234294123423632234§,"1").replace(§static package null§,"2").replace(§static var implements§,"3").replace(§5214233240233253123423632234§,"4").replace(§set switch native§,"5").replace(§finally use case§,"6").replace(§5214239575239588123423632234§,"7");
         var _loc4_:int = 0;
         while(_loc4_ < 10)
         {
            _loc2_ = _loc4_.toString();
            param1 = param1.replace(RegExp(_loc2_ + "{2,}"),_loc2_);
            _loc4_++;
         }
         if(param1.length > 4)
         {
            param1 = param1.substr(0,4);
         }
         else
         {
            param1 += (0).toFixed(4 - param1.length).substr(2);
         }
         return _loc3_ + param1;
      }
      
      public static function §if switch if§(param1:String) : Number
      {
         var _loc2_:String = param1.replace(/[\s_!@#$%^&*()"'\{\}_=+~,.;:\-\/?\[\]\/]+/g,"");
         return _loc2_.length / param1.length;
      }
   }
}

