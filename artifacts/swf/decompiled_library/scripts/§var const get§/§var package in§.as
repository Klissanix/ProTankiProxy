package §var const get§
{
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   import §var set var§.§5214238701238714123423632234§;
   import §var set var§.§in in§;
   
   public class §var package in§ implements §5214234182234195123423632234§
   {
      
      private var §if switch case§:Object;
      
      private var §class set class§:Dictionary;
      
      private var §5214238834238847123423632234§:§each const set§;
      
      public function §var package in§(param1:§each const set§)
      {
         super();
         this.§if switch case§ = new §in in§(10);
         this.§class set class§ = new Dictionary();
         this.§5214238834238847123423632234§ = param1;
         this.§each catch true§();
      }
      
      public function §set catch each§(param1:KeyboardEvent) : void
      {
      }
      
      private function saveCurrentPositionCameraToBookmark(param1:int) : void
      {
         this.§if switch case§.saveCurrentPositionCameraToBookmark(param1);
      }
      
      private function §const include§(param1:int) : void
      {
         var _loc2_:§5214238701238714123423632234§ = this.§if switch case§.getBookmark(param1);
         if(_loc2_ != null)
         {
            this.§5214238834238847123423632234§.§while const break§(_loc2_.§dynamic final§,_loc2_.§break switch override§);
         }
      }
      
      public function §5214233954233967123423632234§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = this.§class set class§[param1.keyCode];
         if(_loc2_ != null)
         {
            if(param1.ctrlKey)
            {
               this.saveCurrentPositionCameraToBookmark(_loc2_);
            }
            else
            {
               this.§const include§(_loc2_);
            }
         }
      }
      
      private function §each catch true§() : void
      {
         this.§class set class§[48] = 0;
         this.§class set class§[49] = 1;
         this.§class set class§[50] = 2;
         this.§class set class§[51] = 3;
         this.§class set class§[52] = 4;
         this.§class set class§[53] = 5;
         this.§class set class§[54] = 6;
         this.§class set class§[55] = 7;
         this.§class set class§[56] = 8;
         this.§class set class§[57] = 9;
      }
   }
}

