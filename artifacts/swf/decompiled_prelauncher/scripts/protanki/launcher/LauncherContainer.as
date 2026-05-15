package protanki.launcher
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class LauncherContainer extends Sprite
   {
      
      private var prelauncher:Prelauncher;
      
      public function LauncherContainer(param1:DisplayObject, param2:Prelauncher)
      {
         super();
         this.prelauncher = param2;
         addChild(param1);
      }
      
      public function closeLauncher() : void
      {
         this.prelauncher.closeLauncher();
      }
   }
}

