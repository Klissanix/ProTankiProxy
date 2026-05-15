package §5214235535235548123423632234§
{
   import §5214232472232485123423632234§.§import switch package§;
   import alternativa.osgi.service.locale.ILocaleService;
   import assets.§if use implements§;
   import flash.display.Sprite;
   
   public class §function throw§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static var §finally do§:Boolean = false;
      
      private var §default use false§:§import switch package§ = new §import switch package§();
      
      private var §dynamic switch try§:§import switch package§ = new §import switch package§(false);
      
      private var §5214232015232028123423632234§:§import switch package§ = new §import switch package§();
      
      private var §521423116802311693123423632234§:§import switch package§ = new §import switch package§();
      
      private var §5214237663237676123423632234§:§if use implements§ = new §if use implements§();
      
      protected var §5214237851237864123423632234§:int = 800;
      
      public function §function throw§()
      {
         super();
         this.§default use false§.height = this.§5214232015232028123423632234§.height = this.§dynamic switch try§.height = this.§521423116802311693123423632234§.height = 18;
         this.§default use false§.label = §5214236363236376123423632234§.getText("PAYMENT_SMSNUMBERS_NUMBER_HEADER_LABEL_TEXT");
         this.§dynamic switch try§.label = §5214236363236376123423632234§.getText("PAYMENT_SMSNUMBERS_SMSTEXT_HEADER_LABEL_TEXT");
         this.§5214232015232028123423632234§.label = §5214236363236376123423632234§.getText("PAYMENT_SMSNUMBERS_COST_HEADER_LABEL_TEXT");
         addChild(this.§default use false§);
         addChild(this.§dynamic switch try§);
         this.§dynamic switch try§.visible = §finally do§;
         addChild(this.§5214232015232028123423632234§);
         addChild(this.§521423116802311693123423632234§);
         addChild(this.§5214237663237676123423632234§);
         this.§default use false§.width = 70;
         this.§5214232015232028123423632234§.x = 72;
         this.§5214237663237676123423632234§.y = 5;
         this.§5214233910233923123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      public function set §521423139312313944123423632234§(param1:Boolean) : void
      {
         §finally do§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      private function §5214233910233923123423632234§() : void
      {
         var _loc1_:int = int(§finally do§ ? 80 : int((this.§5214237851237864123423632234§ - 70) / 2));
         this.§dynamic switch try§.visible = §finally do§;
         this.§5214232015232028123423632234§.x = 72;
         if(§finally do§)
         {
            this.§dynamic switch try§.x = 72;
            this.§dynamic switch try§.width = this.§5214237851237864123423632234§ - 210;
            this.§5214232015232028123423632234§.x = 72 + this.§dynamic switch try§.width + 2;
         }
         this.§5214232015232028123423632234§.width = _loc1_;
         this.§521423116802311693123423632234§.x = this.§5214232015232028123423632234§.x + this.§5214232015232028123423632234§.width + 2;
         this.§521423116802311693123423632234§.width = int(this.§5214237851237864123423632234§ - this.§521423116802311693123423632234§.x - 3);
         this.§5214237663237676123423632234§.x = this.§521423116802311693123423632234§.x + this.§521423116802311693123423632234§.width - this.§5214237663237676123423632234§.width - 3;
      }
   }
}

