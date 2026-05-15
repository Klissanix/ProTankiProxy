package §5214235655235668123423632234§
{
   import alternativa.utils.Properties;
   import flash.display.LoaderInfo;
   
   public class LauncherParams implements §5214233634233647123423632234§
   {
      
      private var §class switch var§:String;
      
      private var §5214232553232566123423632234§:Properties;
      
      public function LauncherParams(param1:LoaderInfo = null)
      {
         super();
         if(param1)
         {
            this.§class switch var§ = param1.loaderURL;
            this.§5214232553232566123423632234§ = new Properties(param1.parameters);
         }
         else
         {
            this.§5214232553232566123423632234§ = new Properties();
         }
      }
      
      public function removeParameter(param1:String) : void
      {
         this.§5214232553232566123423632234§.removeProperty(param1);
      }
      
      public function setParameter(param1:String, param2:String) : void
      {
         this.§5214232553232566123423632234§.setProperty(param1,param2);
      }
      
      public function getParameter(param1:String, param2:String = null) : String
      {
         return this.§5214232553232566123423632234§.getProperty(param1) || param2;
      }
      
      public function isDisableValidationResource() : Boolean
      {
         return "false" == this.§5214232553232566123423632234§.getProperty("validationResource");
      }
      
      public function get urlLoader() : String
      {
         return this.§class switch var§;
      }
      
      public function get parameterNames() : Vector.<String>
      {
         return this.§5214232553232566123423632234§.propertyNames;
      }
      
      public function get isDebug() : Boolean
      {
         return "true" == this.§5214232553232566123423632234§.getProperty("debug");
      }
   }
}

