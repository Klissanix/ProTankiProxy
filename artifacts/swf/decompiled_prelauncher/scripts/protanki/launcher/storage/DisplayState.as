package protanki.launcher.storage
{
   public class DisplayState
   {
      
      public var x:int;
      
      public var y:int;
      
      public var width:int;
      
      public var height:int;
      
      public var fullscreen:Boolean;
      
      public function DisplayState(param1:int, param2:int, param3:int, param4:int, param5:Boolean)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.width = param3;
         this.height = param4;
         this.fullscreen = param5;
      }
   }
}

