package §5214233085233098123423632234§
{
   import §5214233785233798123423632234§.§521423117402311753123423632234§;
   import §5214233785233798123423632234§.§521423131042313117123423632234§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   import §var var with§.DialogWindow;
   
   public class PresentPrepareWindow extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214235523235536123423632234§:UidCheckService;
      
      private static const §521423138452313858123423632234§:int = 350;
      
      private static const §5214236490236503123423632234§:int = 600;
      
      private static const §521423103882310401123423632234§:int = 11;
      
      private static const §521423103772310390123423632234§:int = 5;
      
      private var window:§native for dynamic§ = new §native for dynamic§(440,200);
      
      private var §false catch while§:§521423117402311753123423632234§;
      
      private var §class catch do§:§5214237555237568123423632234§;
      
      private var §5214239776239789123423632234§:§5214231141231154123423632234§;
      
      private var §dynamic var extends§:§5214237085237098123423632234§;
      
      private var isUidValid:Boolean;
      
      private var uid:String;
      
      private var §5214231469231482123423632234§:§521423131042313117123423632234§;
      
      private var §static set get§:uint;
      
      public function PresentPrepareWindow()
      {
         super();
         addChild(this.window);
         display.stage.addEventListener("keyUp",this.e6e074dd);
         var _loc1_:int = 11;
         this.c1625ac3(_loc1_);
         _loc1_ += this.§false catch while§.height + 5;
         this.d1da1ec(_loc1_);
         _loc1_ += this.§class catch do§.height + 5;
         this.f2e577c9(_loc1_);
         §5214239382239395123423632234§.addDialog(this);
      }
      
      private function fecb38f() : Boolean
      {
         return this.§false catch while§.text.length > 0;
      }
      
      private function b520c44c(param1:Event) : void
      {
         if(this.§class catch do§.value.length == 0)
         {
            this.§5214239776239789123423632234§.visible = true;
            this.§5214231469231482123423632234§.§5214232307232320123423632234§();
            this.§class catch do§.§in use set§ = true;
            this.b64a228e();
         }
      }
      
      private function f1f4a3d2(param1:MouseEvent) : void
      {
         this.c5099da0();
      }
      
      private function c1625ac3(param1:int) : void
      {
         this.§false catch while§ = new §521423117402311753123423632234§();
         this.§false catch while§.§false set false§ = 350;
         this.§false catch while§.height = 106;
         this.§false catch while§.width = this.window.width - 2 * 11;
         this.§false catch while§.x = 11;
         this.§false catch while§.y = param1;
         this.§false catch while§.§for var switch§.addEventListener("change",this.e7bbab0);
         this.window.addChild(this.§false catch while§);
         var _loc2_:§5214231141231154123423632234§ = new TypingHintLabel(this.§false catch while§.§for var switch§);
         _loc2_.text = §5214236363236376123423632234§.getText("TEXT_TYPE_MESSAGE_WITH_PRESENT");
         _loc2_.x = this.§false catch while§.x + 5;
         _loc2_.y = this.§false catch while§.y + 5;
         this.window.addChild(_loc2_);
      }
      
      private function e7bbab0(param1:Event) : void
      {
         this.b64a228e();
      }
      
      private function onCancelClick(param1:MouseEvent) : void
      {
         this.f38a8683();
      }
      
      private function c2cbd528(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isConfirmationKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.c5099da0();
         }
      }
      
      private function f74a9818(param1:Boolean) : void
      {
         this.§class catch do§.§in use set§ = param1;
         this.isUidValid = param1;
         if(param1)
         {
            this.§5214231469231482123423632234§.§try set class§();
            this.b64a228e();
         }
         else
         {
            this.§5214231469231482123423632234§.§5214235877235890123423632234§();
         }
      }
      
      private function f38a8683() : void
      {
         dispatchEvent(new Event("cancel"));
         this.destroy();
      }
      
      private function d4dd7e04(param1:Event) : void
      {
         this.isUidValid = false;
         this.§dynamic var extends§.enable = false;
         this.§5214231469231482123423632234§.§5214233289233302123423632234§();
         if(this.§class catch do§.value.length > 0)
         {
            this.§5214239776239789123423632234§.visible = false;
         }
         clearTimeout(this.§static set get§);
         this.b64a228e();
         this.§static set get§ = setTimeout(this.checkUid,600);
      }
      
      private function f2e577c9(param1:int) : void
      {
         this.§dynamic var extends§ = new §5214237085237098123423632234§();
         this.§dynamic var extends§.label = §5214236363236376123423632234§.getText("TEXT_SEND_PRESENT_BUTTON");
         this.§dynamic var extends§.x = 11;
         this.§dynamic var extends§.y = param1;
         this.§dynamic var extends§.addEventListener("click",this.f1f4a3d2);
         this.§dynamic var extends§.enable = false;
         this.window.addChild(this.§dynamic var extends§);
         var _loc2_:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
         _loc2_.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_CANCEL");
         _loc2_.x = 11;
         _loc2_.y = param1;
         _loc2_.addEventListener("click",this.onCancelClick);
         this.window.addChild(_loc2_);
         var _loc4_:int = Math.max(this.§dynamic var extends§.width,_loc2_.width);
         this.§dynamic var extends§.width = _loc4_;
         _loc2_.width = _loc4_;
         var _loc5_:int = this.§dynamic var extends§.height + 2 * 5;
         var _loc3_:int = (width - 2 * _loc4_ - _loc5_) / 2;
         this.§dynamic var extends§.x = _loc3_;
         _loc2_.x = width - _loc4_ - _loc3_;
      }
      
      private function b64a228e() : void
      {
         this.§dynamic var extends§.enable = this.d2ad5d58();
      }
      
      private function d1da1ec(param1:int) : void
      {
         this.§class catch do§ = new §5214237555237568123423632234§();
         this.§class catch do§.§false set false§ = 20;
         this.§class catch do§.x = 11;
         this.§class catch do§.y = param1;
         this.§class catch do§.width = this.window.width - 2 * 11;
         this.§class catch do§.addEventListener("focusOut",this.b520c44c);
         this.§class catch do§.§52142339223405123423632234§.addEventListener("change",this.d4dd7e04);
         this.§class catch do§.addEventListener("keyUp",this.c2cbd528);
         this.window.addChild(this.§class catch do§);
         this.§5214239776239789123423632234§ = new TypingHintLabel(this.§class catch do§.§52142339223405123423632234§);
         this.§5214239776239789123423632234§.text = §5214236363236376123423632234§.getText("TEXT_PRESENT_RECIPIENT_NAME");
         this.§5214239776239789123423632234§.x = this.§class catch do§.x + 5;
         this.§5214239776239789123423632234§.y = this.§class catch do§.y + 5 + 2;
         this.window.addChild(this.§5214239776239789123423632234§);
         this.§5214231469231482123423632234§ = new §521423131042313117123423632234§();
         this.window.addChild(this.§5214231469231482123423632234§);
         this.§5214231469231482123423632234§.x = this.§class catch do§.x + this.§class catch do§.width - this.§5214231469231482123423632234§.width - 15;
         this.§5214231469231482123423632234§.y = param1 + 5;
      }
      
      private function c5099da0() : void
      {
         if(this.d2ad5d58())
         {
            this.destroy();
            dispatchEvent(new SendPresentEvent(SendPresentEvent.SEND_PRESENT,this.uid,this.§false catch while§.text));
         }
      }
      
      private function destroy() : void
      {
         this.§dynamic var extends§.removeEventListener("click",this.f1f4a3d2);
         display.stage.removeEventListener("keyUp",this.e6e074dd);
         this.§class catch do§.removeEventListener("keyUp",this.c2cbd528);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function checkUid() : void
      {
         if(this.§class catch do§.value.length == 0)
         {
            this.§5214231469231482123423632234§.§5214232307232320123423632234§();
            this.§class catch do§.§in use set§ = true;
         }
         else
         {
            this.uid = this.§class catch do§.value;
            §5214235523235536123423632234§.exist(this.uid,this.f74a9818);
         }
      }
      
      private function e6e074dd(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.f38a8683();
         }
      }
      
      private function d2ad5d58() : Boolean
      {
         return this.isUidValid && this.fecb38f();
      }
   }
}

