package §throw catch in§
{
   import §5214231664231677123423632234§.ShortUserInfo;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §5214235964235977123423632234§ extends Sprite
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private var §super set continue§:§function catch var§ = new §function catch var§();
      
      public function §5214235964235977123423632234§()
      {
         super();
         addChild(this.§super set continue§);
         this.§super set continue§.tabEnabled = false;
         this.§super set continue§.tabChildren = false;
         addEventListener("addedToStage",this.§switch override§);
         addEventListener("removedFromStage",this.§continue use each§);
      }
      
      private function §switch override§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§521423104622310475123423632234§);
      }
      
      private function §class var break§() : void
      {
         this.§super set continue§.x = §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§;
         this.§super set continue§.y = 50;
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§521423104622310475123423632234§);
      }
      
      public function §521423104622310475123423632234§(param1:Event) : void
      {
         this.§class var break§();
      }
      
      public function §5214238882238895123423632234§(param1:ShortUserInfo, param2:String, param3:ShortUserInfo = null) : void
      {
         this.§super set continue§.§true const throw§(new §5214235926235939123423632234§(param1,param2,param3));
         this.§class var break§();
      }
   }
}

