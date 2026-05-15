package alternativa.osgi.service.console
{
   import §521423139282313941123423632234§.ConsoleVar;
   import alternativa.osgi.service.command.§final use in§;
   
   public interface §5214235900235913123423632234§ extends §final use in§
   {
      
      function get vericalAlignment() : int;
      
      function hide() : void;
      
      function set width(param1:int) : void;
      
      function set alpha(param1:Number) : void;
      
      function set horizontalAlignment(param1:int) : void;
      
      function get horizontalAlignment() : int;
      
      function setSize(param1:int, param2:int) : void;
      
      function removeVariable(param1:String) : void;
      
      function removeCommandHandler(param1:String) : void;
      
      function addVariable(param1:ConsoleVar) : void;
      
      function set height(param1:int) : void;
      
      function get width() : int;
      
      function executeCommand(param1:String) : void;
      
      function isVisible() : Boolean;
      
      function set vericalAlignment(param1:int) : void;
      
      function show() : void;
      
      function get height() : int;
      
      function get alpha() : Number;
      
      function setCommandHandler(param1:String, param2:Function) : void;
   }
}

