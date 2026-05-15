package §5214233785233798123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class §5214235531235544123423632234§
   {
      
      public static var §case for null§:Array;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function §5214235531235544123423632234§()
      {
         super();
      }
      
      public static function §extends set case§(param1:int) : String
      {
         var _loc2_:String = null;
         if(§case for null§ == null)
         {
            _loc2_ = §5214236363236376123423632234§.getText("RANK_NAMES");
            §case for null§ = _loc2_.split(",");
         }
         return §case for null§[param1 - 1];
      }
   }
}

