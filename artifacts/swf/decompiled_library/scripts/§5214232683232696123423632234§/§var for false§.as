package §5214232683232696123423632234§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214235485235498123423632234§.MessageColor;
   import alternativa.osgi.service.locale.ILocaleService;
   import §const var try§.MessageLine;
   import §else const import§.BattleChatUserLabel;
   import §extends var import§.§5214231658231671123423632234§;
   
   public class §var for false§ extends MessageLine
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §super set continue§:§5214238529238542123423632234§;
      
      private var §5214232720232733123423632234§:int = 0;
      
      private var §5214237851237864123423632234§:int = 300;
      
      private var §5214234820234833123423632234§:BattleChatUserLabel;
      
      public function §var for false§(param1:String, param2:§5214231658231671123423632234§, param3:String, param4:Boolean, param5:Boolean)
      {
         var _loc7_:§5214238529238542123423632234§ = null;
         this.§super set continue§ = new §5214238529238542123423632234§();
         super();
         var _loc6_:int = 0;
         if(param5)
         {
            _loc6_ = 14;
            _loc7_ = new §5214238529238542123423632234§();
            _loc7_.color = 16776960;
            _loc7_.text = §5214236363236376123423632234§.getText("SPECTATOR_NAME") + ":";
            _loc7_.thickness = 50;
            _loc7_.sharpness = 0;
            _loc7_.mouseEnabled = false;
            §dynamic package true§.addChild(_loc7_);
            _loc7_.x = _loc6_;
            _loc6_ += _loc7_.textWidth + 1;
         }
         else
         {
            this.§5214234820234833123423632234§ = new BattleChatUserLabel(param1);
            this.§5214234820234833123423632234§.§5214234846234859123423632234§(MessageColor.getUserNameColor(param2,param5),true);
            this.§5214234820234833123423632234§.§finally for do§(":");
            addChild(this.§5214234820234833123423632234§);
            _loc6_ += this.§5214234820234833123423632234§.width;
         }
         this.§super set continue§.color = MessageColor.getTextColor(param2,param4,param5);
         this.§super set continue§.antiAliasType = "advanced";
         this.§super set continue§.thickness = 150;
         this.§super set continue§.sharpness = 200;
         this.§super set continue§.multiline = true;
         this.§super set continue§.wordWrap = true;
         this.§super set continue§.mouseEnabled = false;
         §dynamic package true§.addChild(this.§super set continue§);
         this.§5214232720232733123423632234§ = _loc6_;
         if(this.§5214232720232733123423632234§ > this.§5214237851237864123423632234§ / 2)
         {
            this.§super set continue§.y = 15;
            this.§super set continue§.x = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - 5;
         }
         else
         {
            this.§super set continue§.x = this.§5214232720232733123423632234§ + 3;
            this.§super set continue§.y = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - this.§5214232720232733123423632234§ - 8;
         }
         this.§super set continue§.text = param3;
      }
      
      public function §while var§() : void
      {
         this.§5214232720232733123423632234§ = this.§5214234820234833123423632234§.width;
         if(this.§5214232720232733123423632234§ > this.§5214237851237864123423632234§ / 2)
         {
            this.§super set continue§.y = 15;
            this.§super set continue§.x = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - 5;
         }
         else
         {
            this.§super set continue§.x = this.§5214232720232733123423632234§ + 3;
            this.§super set continue§.y = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - this.§5214232720232733123423632234§ - 8;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         if(this.§5214232720232733123423632234§ > this.§5214237851237864123423632234§ / 2 && this.§super set continue§.text.length * 8 > this.§5214237851237864123423632234§ - this.§5214232720232733123423632234§)
         {
            this.§super set continue§.y = 21;
            this.§super set continue§.x = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - 5;
            this.§super set continue§.height = 20;
         }
         else
         {
            this.§super set continue§.x = this.§5214232720232733123423632234§;
            this.§super set continue§.y = 0;
            this.§super set continue§.width = this.§5214237851237864123423632234§ - this.§5214232720232733123423632234§ - 5;
            this.§super set continue§.height = 20;
         }
      }
   }
}

