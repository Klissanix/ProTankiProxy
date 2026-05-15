package §default while§
{
   public class InvalidCommandFormatError extends Error
   {
      
      public function InvalidCommandFormatError(param1:String)
      {
         super("Command invalid format: " + param1);
      }
   }
}

