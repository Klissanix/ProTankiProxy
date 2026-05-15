package org.swiftsuspenders
{
   import §521423131932313206123423632234§.§break switch case§;
   import flash.utils.getQualifiedClassName;
   
   public class §521423139362313949123423632234§
   {
      
      public var §5214234235234248123423632234§:Class;
      
      public var injectionName:String;
      
      private var §521423116672311680123423632234§:Injector;
      
      private var §const set var§:§break switch case§;
      
      public function §521423139362313949123423632234§(param1:Class, param2:String)
      {
         super();
         this.§5214234235234248123423632234§ = param1;
         this.injectionName = param2;
      }
      
      public function §in package throw§(param1:Injector) : Object
      {
         if(this.§const set var§)
         {
            return this.§const set var§.§in package throw§(this.§521423116672311680123423632234§ || param1);
         }
         var _loc2_:§521423139362313949123423632234§ = (this.§521423116672311680123423632234§ || param1).§default const throw§(this.§5214234235234248123423632234§,this.injectionName);
         if(_loc2_)
         {
            return _loc2_.§in package throw§(param1);
         }
         return null;
      }
      
      public function §while catch class§(param1:Injector) : Boolean
      {
         if(this.§const set var§)
         {
            return true;
         }
         var _loc2_:§521423139362313949123423632234§ = (this.§521423116672311680123423632234§ || param1).§default const throw§(this.§5214234235234248123423632234§,this.injectionName);
         return _loc2_ != null;
      }
      
      public function §native var in§() : Boolean
      {
         return this.§const set var§ != null;
      }
      
      public function setResult(param1:§break switch case§) : void
      {
         if(this.§const set var§ != null && param1 != null)
         {
            trace("Warning: Injector already has a rule for type \"" + getQualifiedClassName(this.§5214234235234248123423632234§) + "\", named \"" + this.injectionName + "\".\n " + "If you have overwritten this mapping intentionally you can use " + "\"injector.unmap()\" prior to your replacement mapping in order to " + "avoid seeing this message.");
         }
         this.§const set var§ = param1;
      }
      
      public function §const package default§(param1:Injector) : void
      {
         this.§521423116672311680123423632234§ = param1;
      }
   }
}

