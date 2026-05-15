package §throw catch in§
{
   import §const var try§.MessageContainer;
   import §const var try§.MessageLine;
   import §static const throw§.ChatOutputLineEvent;
   
   public class §function catch var§ extends MessageContainer
   {
      
      public var §5214237108237121123423632234§:int = 10;
      
      public function §function catch var§()
      {
         super();
         §for switch const§ = 6;
      }
      
      public function §true const throw§(param1:§5214235926235939123423632234§) : void
      {
         var _loc2_:§5214235926235939123423632234§ = null;
         pushBack(param1);
         if(container.numChildren > this.§5214237108237121123423632234§)
         {
            _loc2_ = removeFirstMessage() as §5214235926235939123423632234§;
            if(_loc2_ != null)
            {
               _loc2_.removeEventListener("KillMe",this.§5214235547235560123423632234§);
               _loc2_.removeEventListener("updateUid",this.§while package each§);
            }
         }
         param1.addEventListener("KillMe",this.§5214235547235560123423632234§);
         param1.addEventListener("updateUid",this.§while package each§);
         param1.x = -param1.width - 10;
      }
      
      private function §while package each§(param1:ChatOutputLineEvent) : void
      {
         var _loc2_:MessageLine = param1.line;
         _loc2_.x = -_loc2_.width - 10;
         _loc2_.removeEventListener("updateUid",this.§5214235547235560123423632234§);
      }
      
      private function §5214235547235560123423632234§(param1:ChatOutputLineEvent) : void
      {
         if(container.contains(param1.line))
         {
            removeFirstMessage();
         }
         param1.line.removeEventListener("KillMe",this.§5214235547235560123423632234§);
      }
   }
}

