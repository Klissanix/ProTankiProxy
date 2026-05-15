package §521423139282313941123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.console.§5214235900235913123423632234§;
   
   public class ConsoleVar
   {
      
      protected var §finally catch final§:String;
      
      protected var §function package final§:Function;
      
      public function ConsoleVar(param1:String, param2:Function = null)
      {
         super();
         this.§finally catch final§ = param1;
         this.§function package final§ = param2;
         var _loc3_:§5214235900235913123423632234§ = §5214235900235913123423632234§(OSGi.getInstance().getService(§5214235900235913123423632234§));
         if(_loc3_ != null)
         {
            _loc3_.addVariable(this);
         }
      }
      
      public function toString() : String
      {
         return "Not implemented";
      }
      
      public function destroy() : void
      {
         var _loc1_:§5214235900235913123423632234§ = §5214235900235913123423632234§(OSGi.getInstance().getService(§5214235900235913123423632234§));
         if(_loc1_ != null)
         {
            _loc1_.removeVariable(this.§finally catch final§);
         }
         this.§function package final§ = null;
      }
      
      public function acceptInput(param1:String) : String
      {
         return "Not implemented";
      }
      
      public function getName() : String
      {
         return this.§finally catch final§;
      }
   }
}

