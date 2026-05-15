package §default while§
{
   import alternativa.osgi.service.command.§final use in§;
   
   public class FormattedOutputToString implements §final use in§
   {
      
      public var content:Vector.<String>;
      
      public function FormattedOutputToString()
      {
         super();
         this.content = new Vector.<String>();
      }
      
      public function addPrefixedText(param1:String, param2:String) : void
      {
         this.addText(param1 + " " + param2);
      }
      
      public function addText(param1:String) : void
      {
         this.content[content.length] = param1;
      }
      
      public function addPrefixedLines(param1:String, param2:Vector.<String>) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.addPrefixedText(param1,param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function addLines(param1:Vector.<String>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.addText(param1[_loc2_]);
            _loc2_++;
         }
      }
   }
}

