package §5214235524235537123423632234§
{
   import §5214232472232485123423632234§.§with package true§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   
   public class §5214232141232154123423632234§ extends §with package true§
   {
      
      private static const §5214231846231859123423632234§:int = 18;
      
      private static const §5214231864231877123423632234§:int = 3;
      
      private var label:§5214238529238542123423632234§;
      
      public function §5214232141232154123423632234§(param1:String)
      {
         super();
         this.label = new §5214238529238542123423632234§();
         this.label.§521423102842310297123423632234§ = 18;
         this.label.text = param1;
         addChild(this.label);
         this.label.y = 3;
         height = 2 * 3 + this.label.height;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         this.label.x = int(width - this.label.width) >> 1;
      }
   }
}

