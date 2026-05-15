package §5214234400234413123423632234§
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class ControlPointMessage
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var color:uint;
      
      private var §false var null§:String;
      
      public function ControlPointMessage(param1:uint, param2:String)
      {
         super();
         this.color = param1;
         this.§false var null§ = param2;
      }
      
      public function getMessage(param1:String) : String
      {
         return §5214236363236376123423632234§.getText(this.§false var null§).replace("{point}",param1);
      }
   }
}

