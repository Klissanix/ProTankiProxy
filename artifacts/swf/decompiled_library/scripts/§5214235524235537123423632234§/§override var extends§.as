package §5214235524235537123423632234§
{
   import §521423100242310037123423632234§.§52142332123334123423632234§;
   import §5214231664231677123423632234§.ClientUserStat;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214233785233798123423632234§.§in class§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.utils.removeDisplayObject;
   import §const use try§.§extends var default§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §static const throw§.ContinueBattleEvent;
   
   public class §override var extends§ extends Sprite
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      private var §5214238891238904123423632234§:§5214235113235126123423632234§;
      
      private var §finally for final§:§5214235113235126123423632234§;
      
      private var §5214236544236557123423632234§:§5214235113235126123423632234§;
      
      private var §5214238555238568123423632234§:Sprite;
      
      private var §set for case§:§in class§;
      
      private var §native var throw§:§52142332123334123423632234§;
      
      private var §5214237061237074123423632234§:Boolean;
      
      private var §521423125482312561123423632234§:§5214238529238542123423632234§;
      
      private var §521423134062313419123423632234§:§extends var default§;
      
      private var §5214236534236547123423632234§:§5214232141232154123423632234§;
      
      public function §override var extends§(param1:String, param2:Boolean)
      {
         super();
         this.§5214237061237074123423632234§ = param2;
         visible = false;
         this.§5214236534236547123423632234§ = new §5214232141232154123423632234§(param1);
      }
      
      public function §5214235748235761123423632234§(param1:Vector.<ClientUserStat>) : void
      {
         if(visible)
         {
            this.§5214236544236557123423632234§.§5214234009234022123423632234§(param1);
            this.§null for final§();
            this.§52142326923282123423632234§();
         }
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§5214235113235126123423632234§ = null;
         _loc2_ = 0;
         var _loc4_:int = 0;
         _loc2_ = §5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§ / 2;
         _loc4_ = §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ / 2;
         var _loc5_:§5214235113235126123423632234§ = null;
         _loc3_ = null;
         if(this.§5214236544236557123423632234§)
         {
            this.§null for final§();
            this.§5214236544236557123423632234§.y = -(this.§5214236544236557123423632234§.height >> 1);
            _loc5_ = _loc3_ = this.§5214236544236557123423632234§;
         }
         else if(Boolean(this.§finally for final§) && Boolean(this.§5214238891238904123423632234§))
         {
            this.§5214237665237678123423632234§();
            this.§5214238891238904123423632234§.y = -(this.§finally for final§.height + this.§5214238891238904123423632234§.height + 5 >> 1);
            this.§finally for final§.y = this.§5214238891238904123423632234§.y + this.§5214238891238904123423632234§.height + 5;
            _loc5_ = this.§5214238891238904123423632234§;
            _loc3_ = this.§finally for final§;
         }
         this.§5214236534236547123423632234§.y = _loc5_.y - this.§5214236534236547123423632234§.height - 5;
         this.§5214236534236547123423632234§.width = _loc5_.width;
         this.§5214238555238568123423632234§.y = _loc3_.y + _loc3_.height + 10;
         this.§native var throw§.width = _loc5_.width;
         this.§set for case§.x = this.§native var throw§.width - this.§set for case§.width - 7;
         x = _loc2_ - (width >> 1);
         y = _loc4_;
      }
      
      public function §521423119872312000123423632234§(param1:Boolean, param2:Boolean, param3:String, param4:Vector.<ClientUserStat>, param5:Vector.<ClientUserStat>, param6:Boolean, param7:int, param8:§5214231658231671123423632234§) : void
      {
         if(!visible)
         {
            this.§5214238891238904123423632234§ = this.§const var in§(1,param3,param4,param6,param8,param2);
            addChild(this.§5214238891238904123423632234§);
            this.§finally for final§ = this.§const var in§(0,param3,param5,param6,param8,param2);
            addChild(this.§finally for final§);
            this.§521423103172310330123423632234§(param1,param7);
         }
      }
      
      private function §null use package§(param1:Boolean, param2:int) : void
      {
         this.§5214238555238568123423632234§ = new Sprite();
         this.§native var throw§ = new §52142332123334123423632234§();
         this.§native var throw§.width = width;
         this.§5214238555238568123423632234§.addChild(this.§native var throw§);
         this.§set for case§ = new §in class§();
         this.§native var throw§.height = this.§set for case§.height + 8;
         this.§set for case§.addEventListener("click",this.§throw switch set§);
         this.§set for case§.width = 96;
         this.§set for case§.label = §5214236363236376123423632234§.getText("BATTLE_EXIT");
         this.§set for case§.x = this.§native var throw§.width - this.§set for case§.width - 7;
         this.§set for case§.y = 4;
         this.§5214238555238568123423632234§.addChild(this.§set for case§);
         if(param2 > 0)
         {
            this.§521423125482312561123423632234§ = new §5214238529238542123423632234§();
            this.§521423125482312561123423632234§.text = param1 ? §5214236363236376123423632234§.getText("BATTLE_FINISH_IN") : §5214236363236376123423632234§.getText("BATTLE_RESTART") + ": ";
            this.§5214238555238568123423632234§.addChild(this.§521423125482312561123423632234§);
            this.§521423125482312561123423632234§.x = 4;
            this.§521423125482312561123423632234§.y = 10;
            this.§521423125482312561123423632234§.visible = true;
            this.§521423134062313419123423632234§ = new §extends var default§(-1,-1,null,true);
            this.§521423134062313419123423632234§.§extends package do§(param2);
            this.§5214238555238568123423632234§.addChild(this.§521423134062313419123423632234§);
            this.§521423134062313419123423632234§.x = this.§521423125482312561123423632234§.x + this.§521423125482312561123423632234§.width;
            this.§521423134062313419123423632234§.y = 4;
            this.§521423134062313419123423632234§.§521423102842310297123423632234§ = 22;
            this.§521423134062313419123423632234§.visible = true;
         }
         addChild(this.§5214238555238568123423632234§);
      }
      
      private function §const var in§(param1:int, param2:String, param3:Vector.<ClientUserStat>, param4:Boolean, param5:§5214231658231671123423632234§, param6:Boolean) : §5214235113235126123423632234§
      {
         var _loc7_:§5214235113235126123423632234§ = new §5214235113235126123423632234§(param1,param2,param4,param5,param6);
         _loc7_.§5214234009234022123423632234§(param3);
         return _loc7_;
      }
      
      public function §catch switch if§(param1:String, param2:§5214231658231671123423632234§) : void
      {
         if(!visible)
         {
            return;
         }
         if(this.§5214237061237074123423632234§ && this.§finally for final§ && Boolean(this.§5214238891238904123423632234§))
         {
            if(param2 == §5214231658231671123423632234§.§implements set implements§)
            {
               this.§finally for final§.§catch switch if§(param1);
            }
            else
            {
               this.§5214238891238904123423632234§.§catch switch if§(param1);
            }
            this.§5214237665237678123423632234§();
         }
         else if(this.§5214236544236557123423632234§)
         {
            this.§5214236544236557123423632234§.§catch switch if§(param1);
            this.§null for final§();
         }
      }
      
      private function §5214237665237678123423632234§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - 200;
         this.§finally for final§.resize(_loc2_);
         this.§5214238891238904123423632234§.resize(_loc2_);
         if(this.§finally for final§.height + this.§5214238891238904123423632234§.height > _loc2_)
         {
            _loc1_ = 0.5 * _loc2_;
            if(this.§finally for final§.height > _loc1_ && this.§5214238891238904123423632234§.height > _loc1_)
            {
               this.§finally for final§.resize(_loc1_);
               this.§5214238891238904123423632234§.resize(_loc1_);
            }
            else if(this.§finally for final§.height < _loc1_)
            {
               this.§5214238891238904123423632234§.resize(_loc2_ - this.§finally for final§.height);
            }
            else
            {
               this.§finally for final§.resize(_loc2_ - this.§5214238891238904123423632234§.height);
            }
         }
      }
      
      public function §with set true§(param1:ClientUserStat) : void
      {
         if(visible)
         {
            if(param1.teamType == §5214231658231671123423632234§.§implements set implements§)
            {
               this.§finally for final§.§5214235395235408123423632234§(param1);
            }
            else if(param1.teamType == §5214231658231671123423632234§.§521423107532310766123423632234§)
            {
               this.§5214238891238904123423632234§.§5214235395235408123423632234§(param1);
            }
         }
      }
      
      public function §521423138312313844123423632234§(param1:ClientUserStat) : void
      {
         if(visible)
         {
            this.§5214236544236557123423632234§.§5214235395235408123423632234§(param1);
         }
      }
      
      private function §521423103172310330123423632234§(param1:Boolean, param2:int) : void
      {
         §5214234884234897123423632234§.startDialogWithAllowedKeyboardInput();
         visible = true;
         addChild(this.§5214236534236547123423632234§);
         this.§null use package§(param1,param2);
         §5214235917235930123423632234§.stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§();
      }
      
      private function §throw switch set§(param1:MouseEvent) : void
      {
         §set for case§.enable = false;
         dispatchEvent(new ContinueBattleEvent("BattleStateEvent.EXIT"));
      }
      
      public function §true package final§() : void
      {
         if(!visible)
         {
            return;
         }
         visible = false;
         §5214235917235930123423632234§.stage.removeEventListener("resize",this.§52142326923282123423632234§);
         removeChild(this.§5214236534236547123423632234§);
         removeDisplayObject(this.§finally for final§);
         this.§finally for final§ = null;
         removeDisplayObject(this.§5214238891238904123423632234§);
         this.§5214238891238904123423632234§ = null;
         removeDisplayObject(this.§5214236544236557123423632234§);
         this.§5214236544236557123423632234§ = null;
         if(this.§set for case§ != null)
         {
            this.§set for case§.removeEventListener("click",this.§throw switch set§);
            this.§set for case§ = null;
         }
         removeDisplayObject(this.§5214238555238568123423632234§);
         this.§5214238555238568123423632234§ = null;
         §5214234884234897123423632234§.endDialog();
      }
      
      public function §521423122542312267123423632234§(param1:Boolean, param2:Boolean, param3:String, param4:Vector.<ClientUserStat>, param5:Boolean, param6:int) : void
      {
         if(!visible)
         {
            this.§5214236544236557123423632234§ = this.§const var in§(2,param3,param4,param5,§5214231658231671123423632234§.§dynamic use false§,param2);
            addChild(this.§5214236544236557123423632234§);
            this.§521423103172310330123423632234§(param1,param6);
         }
      }
      
      private function §null for final§() : void
      {
         var _loc1_:Number = §5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - 200;
         this.§5214236544236557123423632234§.resize(_loc1_);
      }
      
      public function §521423121592312172123423632234§(param1:Vector.<ClientUserStat>, param2:§5214231658231671123423632234§) : void
      {
         if(visible)
         {
            if(param2 == §5214231658231671123423632234§.§implements set implements§)
            {
               this.§finally for final§.§5214234009234022123423632234§(param1);
            }
            else if(param2 == §5214231658231671123423632234§.§521423107532310766123423632234§)
            {
               this.§5214238891238904123423632234§.§5214234009234022123423632234§(param1);
            }
            this.§5214237665237678123423632234§();
            this.§52142326923282123423632234§();
         }
      }
   }
}

