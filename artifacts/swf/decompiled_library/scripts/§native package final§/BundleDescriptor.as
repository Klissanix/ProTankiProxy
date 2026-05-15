package §native package final§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.utils.Properties;
   import flash.system.ApplicationDomain;
   
   public class BundleDescriptor implements §5214238689238702123423632234§
   {
      
      private static var §finally catch false§:String = "osgi";
      
      private static var §5214234621234634123423632234§:LogService = LogService(OSGi.getInstance().getService(LogService));
      
      private var §5214231331231344123423632234§:String;
      
      private var §5214237347237360123423632234§:Vector.<§throw var static§>;
      
      private var §521423127732312786123423632234§:Properties;
      
      public function BundleDescriptor(param1:Properties)
      {
         var _loc4_:Boolean = false;
         var _loc2_:Class = null;
         super();
         this.§521423127732312786123423632234§ = param1 || new Properties();
         this.§5214231331231344123423632234§ = param1.getProperty("Bundle-Name");
         var _loc5_:Vector.<String> = new <String>[param1.getProperty("Bundle-Activator")];
         if(this.§5214231331231344123423632234§)
         {
            _loc5_[_loc5_.length] = this.§5214231331231344123423632234§.toLowerCase() + ".Activator";
         }
         this.§5214237347237360123423632234§ = new Vector.<§throw var static§>();
         for each(var _loc3_ in _loc5_)
         {
            _loc4_ = ApplicationDomain.currentDomain.hasDefinition(_loc3_);
            if(_loc4_)
            {
               _loc2_ = Class(ApplicationDomain.currentDomain.getDefinition(_loc3_));
               this.§5214237347237360123423632234§[§5214237347237360123423632234§.length] = §throw var static§(new _loc2_());
            }
         }
      }
      
      public function get name() : String
      {
         return this.§5214231331231344123423632234§;
      }
      
      public function get properties() : Properties
      {
         return this.§521423127732312786123423632234§;
      }
      
      public function get activators() : Vector.<§throw var static§>
      {
         return this.§5214237347237360123423632234§;
      }
   }
}

