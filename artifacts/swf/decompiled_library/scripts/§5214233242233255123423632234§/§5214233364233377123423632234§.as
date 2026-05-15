package §5214233242233255123423632234§
{
   import flash.events.MouseEvent;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §5214233364233377123423632234§ extends §5214237085237098123423632234§
   {
      
      private static const §var for import§:int = 26;
      
      private static const §class package case§:Class = §b463a1_png$b73edfd710fb26e17ba7ad9cdf6298f4-1255040066§;
      
      private static const §super while§:Class = a6c10fd_png$b5f0f72c8145a958d286cdf335275d441714155106;
      
      private static const §while set include§:Class = Sdg448_png$7540a512697432dc55f62d2e008e2a08236022169;
      
      private static const §in for while§:Class = §e6e44d6_png$343f2efb8783e4bfb09725cefcb1c4c9-447357915§;
      
      private static const §in set with§:Class = b34f825_png$bb333cc800cb43aa176261691a34c644958774487;
      
      private static const §521423109492310962123423632234§:Class = c2h9gg2_png$4c8842c83314b27619045079c4d3e46f1297997529;
      
      private static const §return finally set§:Class = D4gde4c_png$7af779e6f24ea6068449c5bc0be7358e1273763366;
      
      private static const §5214239556239569123423632234§:Class = §e4520e_png$7fbe53343b1424402f037583eae3d3f4-1504846152§;
      
      private static const §throw switch class§:Class = §S3b892f_png$a0482f2b4a0e02c985564761bd6325b1-1590846698§;
      
      public function §5214233364233377123423632234§()
      {
         super();
         this.init();
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:int = Math.ceil(§521423139392313952123423632234§.textWidth) + 26;
         if(_loc2_ > param1)
         {
            super.width = _loc2_;
         }
         else
         {
            super.width = param1;
         }
      }
      
      private function init() : void
      {
         §each throw§.§class package while§ = new §super while§().bitmapData;
         §each throw§.§true const break§ = new §class package case§().bitmapData;
         §each throw§.§5214234027234040123423632234§ = new §while set include§().bitmapData;
         §native const class§.§class package while§ = new §in set with§().bitmapData;
         §native const class§.§true const break§ = new §in for while§().bitmapData;
         §native const class§.§5214234027234040123423632234§ = new §521423109492310962123423632234§().bitmapData;
         §switch set do§.§class package while§ = new §5214239556239569123423632234§().bitmapData;
         §switch set do§.§true const break§ = new §return finally set§().bitmapData;
         §switch set do§.§5214234027234040123423632234§ = new §throw switch class§().bitmapData;
         §521423110842311097123423632234§.§class package while§ = new §5214239556239569123423632234§().bitmapData;
         §521423110842311097123423632234§.§true const break§ = new §return finally set§().bitmapData;
         §521423110842311097123423632234§.§5214234027234040123423632234§ = new §throw switch class§().bitmapData;
      }
      
      override protected function setState(param1:int = 0) : void
      {
         switch(param1)
         {
            case 0:
               §521423110842311097123423632234§.alpha = 1;
               §each throw§.alpha = 0;
               §native const class§.alpha = 0;
               §switch set do§.alpha = 0;
               §521423139392313952123423632234§.y = 7;
               break;
            case 1:
               §521423110842311097123423632234§.alpha = 0;
               §each throw§.alpha = 1;
               §native const class§.alpha = 0;
               §switch set do§.alpha = 0;
               §521423139392313952123423632234§.y = 6;
               break;
            case 2:
               §521423110842311097123423632234§.alpha = 0;
               §each throw§.alpha = 0;
               §native const class§.alpha = 1;
               §switch set do§.alpha = 0;
               §521423139392313952123423632234§.y = 6;
               break;
            case 3:
               §521423110842311097123423632234§.alpha = 0;
               §each throw§.alpha = 0;
               §native const class§.alpha = 0;
               §switch set do§.alpha = 1;
               §521423139392313952123423632234§.y = 7;
         }
      }
      
      override public function get width() : Number
      {
         return §5214237851237864123423632234§ + 26 + 11;
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(enable)
         {
            switch(param1.type)
            {
               case "mouseOver":
                  this.setState(2);
                  break;
               case "mouseOut":
                  this.setState(1);
                  break;
               case "mouseDown":
                  this.setState(3);
                  break;
               case "mouseUp":
                  this.setState(1);
            }
         }
      }
   }
}

