package org.swiftsuspenders.injectionpoints
{
   import flash.system.ApplicationDomain;
   import org.swiftsuspenders.§521423139362313949123423632234§;
   import org.swiftsuspenders.§5214237680237693123423632234§;
   import org.swiftsuspenders.Injector;
   
   public class PropertyInjectionPoint extends §5214232367232380123423632234§
   {
      
      private var §5214234723234736123423632234§:String;
      
      private var §override const for§:String;
      
      private var §5214238254238267123423632234§:String;
      
      public function PropertyInjectionPoint(param1:XML, param2:Injector = null)
      {
         super(param1,null);
      }
      
      override protected function initializeInjection(param1:XML) : void
      {
         this.§override const for§ = param1.parent().@type.toString();
         this.§5214234723234736123423632234§ = param1.parent().@name.toString();
         this.§5214238254238267123423632234§ = param1.arg.attribute("value").toString();
      }
      
      override public function applyInjection(param1:Object, param2:Injector) : Object
      {
         var _loc4_:Object = null;
         var _loc3_:§521423139362313949123423632234§ = null;
         try
         {
            _loc3_ = param2.§else set try§(Class(param2.§with const switch§().getDefinition(this.§override const for§)),this.§5214238254238267123423632234§);
         }
         catch(e:Error)
         {
            try
            {
               _loc3_ = param2.§else set try§(Class(ApplicationDomain.currentDomain.getDefinition(this.§override const for§)),this.§5214238254238267123423632234§);
            }
            catch(e:Error)
            {
            }
         }
         _loc4_ = _loc3_.§in package throw§(param2);
         if(_loc4_ == null)
         {
            throw new §5214237680237693123423632234§("Injector is missing a rule to handle injection into property \"" + this.§5214234723234736123423632234§ + "\" of object \"" + param1 + "\". Target dependency: \"" + this.§override const for§ + "\", named \"" + this.§5214238254238267123423632234§ + "\"");
         }
         param1[this.§5214234723234736123423632234§] = _loc4_;
         return param1;
      }
   }
}

