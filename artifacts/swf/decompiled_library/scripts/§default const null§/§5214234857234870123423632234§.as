package §default const null§
{
   import §521423113042311317123423632234§.§5214231399231412123423632234§;
   import §5214236800236813123423632234§.§5214231879231892123423632234§;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import alternativa.tanks.service.money.IMoneyService;
   import §continue switch package§.§var use true§;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   import §set use return§.§5214236652236665123423632234§;
   import §set use return§.§final const super§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   import §while switch true§.§5214239798239811123423632234§;
   
   public class §5214234857234870123423632234§ extends DialogWindow implements §5214231879231892123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §var var finally§:IMoneyService;
      
      public static var §521423119902312003123423632234§:DailyQuestNotifierService;
      
      public static const §use var extends§:int = 280;
      
      public static const §try set catch§:int = 310;
      
      public static const §function continue§:int = 11;
      
      private const §5214239227239240123423632234§:int = 13;
      
      private const §5214235355235368123423632234§:int = 1000;
      
      private var §521423108472310860123423632234§:§var use true§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var §521423119312311944123423632234§:Vector.<§5214238073238086123423632234§> = new Vector.<§5214238073238086123423632234§>();
      
      private var §static native§:§5214231141231154123423632234§;
      
      private var §5214239638239651123423632234§:§final for in§;
      
      private var §5214236878236891123423632234§:§include switch var§;
      
      private var §5214231793231806123423632234§:Boolean;
      
      private var §521423120302312043123423632234§:Boolean;
      
      public function §5214234857234870123423632234§()
      {
         super();
         this.§5214237886237899123423632234§();
         this.§get set import§();
         this.§break switch switch§();
         this.§5214234205234218123423632234§();
      }
      
      private function §in switch include§(param1:int) : void
      {
         this.§521423108472310860123423632234§.height = 13 + this.closeButton.height + 11 + param1 + 11 + 50 + 11;
         this.closeButton.y = int(this.§521423108472310860123423632234§.height - this.closeButton.height - 11);
         this.§static native§.y = int(this.§521423108472310860123423632234§.height - this.§static native§.height - 11);
      }
      
      private function §import const static§(param1:int) : void
      {
         var _loc2_:§5214238073238086123423632234§ = null;
         for each(_loc2_ in this.§521423119312311944123423632234§)
         {
            _loc2_.§do finally dynamic§(param1);
         }
      }
      
      override public function get width() : Number
      {
         return this.§521423108472310860123423632234§.width;
      }
      
      private function §package package get§(param1:§5214238073238086123423632234§) : void
      {
         param1.removeEventListener("DailyQuestChange",this.§dynamic for static§);
         if(param1.§5214237533237546123423632234§())
         {
            param1.§5214231942231955123423632234§();
         }
      }
      
      private function §5214234981234994123423632234§(param1:§5214231399231412123423632234§, param2:int) : void
      {
         var _loc3_:§5214238073238086123423632234§ = new §5214238073238086123423632234§(param1);
         _loc3_.addEventListener("DailyQuestChange",this.§dynamic for static§);
         _loc3_.x = 280 * param2 + 11 + 5 * param2;
         _loc3_.y = 11 + 50 + 11;
         this.§521423119312311944123423632234§[§521423119312311944123423632234§.length] = _loc3_;
         this.§521423108472310860123423632234§.addChild(_loc3_);
      }
      
      private function §dynamic for static§(param1:§final const super§) : void
      {
         if(param1.§5214235824235837123423632234§.§5214233594233607123423632234§ || §var var finally§.checkEnough(param1.§5214235824235837123423632234§.§521423762389123423632234§))
         {
            this.§5214231793231806123423632234§ = false;
            this.§case package const§();
         }
         else
         {
            this.§521423122312312244123423632234§();
         }
      }
      
      private function §import switch static§() : void
      {
         this.§5214236878236891123423632234§ = new §include switch var§();
         this.§5214236878236891123423632234§.§5214232580232593123423632234§(§5214231879231892123423632234§,this);
         this.§5214236878236891123423632234§.§native var include§(getTimer() + 1000);
         this.§521423120302312043123423632234§ = true;
      }
      
      private function §final use native§() : void
      {
         var _loc1_:uint = this.§521423119312311944123423632234§.length;
         this.§521423108472310860123423632234§.width = _loc1_ * 280 + 11 * 2 + 5 * (_loc1_ - 1);
         this.§5214238239238252123423632234§();
      }
      
      private function §521423122312312244123423632234§(param1:MouseEvent = null) : void
      {
         this.§continue catch each§();
         this.§override set false§();
         dispatchEvent(new §5214236652236665123423632234§("DailyQuestWindowClose"));
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      public function §with use class§() : void
      {
         this.§521423108472310860123423632234§.width = 310 + 11 * 2;
         this.§5214238239238252123423632234§();
         var _loc1_:§5214238450238463123423632234§ = new §5214238450238463123423632234§();
         _loc1_.x = 11;
         _loc1_.y = 11 + 50 + 11;
         this.§521423108472310860123423632234§.addChild(_loc1_);
         this.§in switch include§(_loc1_.§var var extends§());
         this.§5214239638239651123423632234§.§521423127692312782123423632234§(this.§521423108472310860123423632234§.width - 2 * 11);
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.§521423122312312244123423632234§();
      }
      
      private function §case package const§() : void
      {
         this.§return include§();
         this.§import switch static§();
      }
      
      private function §import catch include§() : void
      {
         var _loc1_:§5214238073238086123423632234§ = null;
         for each(_loc1_ in this.§521423119312311944123423632234§)
         {
            if(_loc1_.§5214237533237546123423632234§())
            {
               _loc1_.§include set case§();
            }
         }
      }
      
      private function §get set import§() : void
      {
         this.§5214239638239651123423632234§ = new §final for in§();
         this.§5214239638239651123423632234§.x = 11;
         this.§5214239638239651123423632234§.y = 11;
         addChild(this.§5214239638239651123423632234§);
      }
      
      private function §in else§(param1:Long) : void
      {
         for each(var _loc2_ in this.§521423119312311944123423632234§)
         {
            if(_loc2_.§5214236436236449123423632234§() == param1)
            {
               this.§package package get§(_loc2_);
               this.§521423108472310860123423632234§.removeChild(_loc2_);
               this.§521423119312311944123423632234§.removeAt(this.§521423119312311944123423632234§.indexOf(_loc2_));
               break;
            }
         }
      }
      
      private function §5214238239238252123423632234§() : void
      {
         this.closeButton.x = int(this.§521423108472310860123423632234§.width - this.closeButton.width - 11);
         this.§static native§.x = 11;
      }
      
      public function §const catch for§(param1:§5214239798239811123423632234§) : void
      {
         this.§5214239638239651123423632234§.init(param1);
         this.§5214239638239651123423632234§.§521423127692312782123423632234§(this.§521423108472310860123423632234§.width - 2 * 11);
      }
      
      public function onCompleteAfter(param1:§include switch var§, param2:Boolean) : void
      {
         this.§override set false§();
         if(this.§5214231793231806123423632234§)
         {
            this.§import catch include§();
         }
      }
      
      public function show() : void
      {
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      private function §return include§() : void
      {
         var _loc1_:§5214238073238086123423632234§ = null;
         for each(_loc1_ in this.§521423119312311944123423632234§)
         {
            if(_loc1_.§5214237533237546123423632234§())
            {
               _loc1_.§implements for import§();
            }
         }
      }
      
      private function §521423124942312507123423632234§() : void
      {
         var _loc1_:int = this.§5214236597236610123423632234§();
         this.§import const static§(_loc1_);
         this.§final use native§();
         this.§in switch include§(_loc1_);
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.§521423122312312244123423632234§();
      }
      
      private function §5214234205234218123423632234§() : void
      {
         this.§static native§ = new §5214231141231154123423632234§();
         this.§static native§.htmlText = §5214236363236376123423632234§.getText("DAILY_QUEST_INFORMATION");
         this.§521423108472310860123423632234§.addChild(this.§static native§);
      }
      
      private function §5214236597236610123423632234§() : int
      {
         var _loc2_:§5214238073238086123423632234§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§521423119312311944123423632234§)
         {
            _loc1_ = Math.max(_loc1_,_loc2_.§var var extends§());
         }
         return _loc1_;
      }
      
      public function §521423114572311470123423632234§(param1:Long, param2:§5214231399231412123423632234§) : void
      {
         var _loc3_:§5214238073238086123423632234§ = null;
         for each(_loc3_ in this.§521423119312311944123423632234§)
         {
            if(_loc3_.§5214236436236449123423632234§() == param1)
            {
               _loc3_.§static use implements§(param2);
            }
            if(_loc3_.§5214237533237546123423632234§())
            {
               _loc3_.§5214231158231171123423632234§(param2.§521423762389123423632234§);
            }
         }
         this.§521423124942312507123423632234§();
         this.§5214231793231806123423632234§ = true;
         if(!this.§521423120302312043123423632234§)
         {
            this.§import catch include§();
         }
      }
      
      private function §continue catch each§() : void
      {
         var _loc1_:§5214238073238086123423632234§ = null;
         this.closeButton.removeEventListener("click",this.§521423122312312244123423632234§);
         for each(_loc1_ in this.§521423119312311944123423632234§)
         {
            this.§package package get§(_loc1_);
         }
      }
      
      private function §extends for override§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§5214238073238086123423632234§ = null;
         while(_loc1_ < this.§521423119312311944123423632234§.length)
         {
            _loc2_ = this.§521423119312311944123423632234§[_loc1_];
            _loc2_.x = 280 * _loc1_ + 11 + 5 * _loc1_;
            _loc1_++;
         }
      }
      
      private function §override set false§() : void
      {
         if(this.§5214236878236891123423632234§ != null)
         {
            this.§5214236878236891123423632234§.§return use var§(§5214231879231892123423632234§,this);
            this.§5214236878236891123423632234§.destroy();
            this.§521423120302312043123423632234§ = false;
         }
      }
      
      public function init(param1:Vector.<§5214231399231412123423632234§>) : void
      {
         var _loc3_:int = 0;
         §521423119902312003123423632234§.hideNotification();
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            this.§5214234981234994123423632234§(param1[_loc3_],_loc3_);
            _loc3_++;
         }
         this.§521423124942312507123423632234§();
      }
      
      private function §5214237886237899123423632234§() : void
      {
         this.§521423108472310860123423632234§ = §var use true§.§set for static§("HEADER_MISSIONS",280 + 11 * 2,0);
         addChild(this.§521423108472310860123423632234§);
      }
      
      public function §super switch finally§(param1:Long) : void
      {
         this.§in else§(param1);
         if(this.§521423119312311944123423632234§.length > 0)
         {
            this.§extends for override§();
            this.§521423124942312507123423632234§();
         }
         else
         {
            this.§with use class§();
         }
         this.§5214239638239651123423632234§.§5214237666237679123423632234§(this.§521423108472310860123423632234§.width - 2 * 11);
         §5214239382239395123423632234§.centerDialog(this);
      }
      
      private function §break switch switch§() : void
      {
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         this.closeButton.addEventListener("click",this.§521423122312312244123423632234§);
         this.§521423108472310860123423632234§.addChild(this.closeButton);
      }
   }
}

