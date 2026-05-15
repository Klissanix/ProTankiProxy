package §5214233242233255123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import fl.containers.ScrollPane;
   import flash.display.Sprite;
   import utils.ScrollStyleUtils;
   
   public class §throw package import§ extends DiscreteSprite
   {
      
      private static const §521423110342311047123423632234§:int = 7;
      
      private var §native use extends§:§include return§;
      
      private var §var catch import§:§finally var extends§ = new §finally var extends§();
      
      private var §continue package throw§:ScrollPane = new ScrollPane();
      
      private var §521423125772312590123423632234§:Sprite = new Sprite();
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      public function §throw package import§(param1:String)
      {
         super();
         this.§native use extends§ = new §include return§(0,0,4278985229);
         addChild(this.§native use extends§);
         this.§var catch import§.autoSize = "left";
         this.§var catch import§.antiAliasType = "advanced";
         this.§var catch import§.multiline = true;
         this.§var catch import§.wordWrap = true;
         if(param1 != null)
         {
            this.§var catch import§.text = param1;
         }
         this.§521423125772312590123423632234§.addChild(this.§var catch import§);
         this.§native use extends§.addChild(this.§continue package throw§);
         ScrollStyleUtils.setGreenStyle(this.§continue package throw§);
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "on";
         this.§continue package throw§.source = this.§521423125772312590123423632234§;
         this.§continue package throw§.update();
         this.§continue package throw§.focusEnabled = false;
         this.§52142326923282123423632234§();
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      public function §import switch try§(param1:String) : void
      {
         if(param1 != null)
         {
            this.§var catch import§.text = param1;
         }
         this.§52142326923282123423632234§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §52142326923282123423632234§() : void
      {
         this.§native use extends§.x = 0;
         this.§native use extends§.y = 0;
         this.§native use extends§.width = this.width;
         this.§native use extends§.height = this.height;
         this.§continue package throw§.x = 7;
         this.§continue package throw§.y = 3;
         this.§521423125772312590123423632234§.x = 0;
         this.§521423125772312590123423632234§.y = 0;
         this.§var catch import§.x = 0;
         this.§var catch import§.y = 0;
         if(this.§521423125772312590123423632234§.height < this.height)
         {
            this.§continue package throw§.verticalScrollPolicy = "off";
            this.§var catch import§.width = this.§native use extends§.width - 2 * 7;
         }
         else
         {
            this.§continue package throw§.verticalScrollPolicy = "on";
            this.§var catch import§.width = this.§native use extends§.width - 2 * 7 - 5;
         }
         this.§continue package throw§.setSize(this.§native use extends§.width - 2,this.§native use extends§.height - 7);
         this.§continue package throw§.update();
      }
   }
}

