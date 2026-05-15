package §521423132032313216123423632234§
{
   import §521423122772312290123423632234§.§521423140092314022123423632234§;
   import §521423122772312290123423632234§.§dynamic use in§;
   import §521423122772312290123423632234§.§get package if§;
   import §521423123932312406123423632234§.§get const const§;
   import §5214232607232620123423632234§.§function set else§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.ReferalWindowEvent;
   import alternativa.tanks.gui.ReferralWindow;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.events.MouseEvent;
   import §include else§.§package switch set§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class ReferralsModel extends §521423140092314022123423632234§ implements §dynamic use in§, §5214235049235062123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214239382239395123423632234§:IDialogsService;
      
      public static var §import use with§:IPanelView;
      
      public static var display:IDisplay;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private var §5214237911237924123423632234§:ReferralWindow;
      
      public function ReferralsModel()
      {
         super();
      }
      
      private static function d28d939b(param1:Vector.<String>) : Vector.<String>
      {
         var _loc2_:Object = null;
         var _loc4_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         var _loc5_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc4_.exec(param1[_loc3_]);
            if(_loc2_ == null)
            {
               _loc5_.push(param1[_loc3_]);
            }
            _loc3_++;
         }
         return _loc5_;
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function openReferrerPanel(param1:Vector.<§get package if§>, param2:String, param3:String, param4:String) : void
      {
         if(this.§5214237911237924123423632234§ != null)
         {
            return;
         }
         this.§5214237911237924123423632234§ = new ReferralWindow(§52142329523308123423632234§.userName,param3,param2,param4,§switch var switch§().§521423138142313827123423632234§,§switch var switch§().§return import§);
         §5214239382239395123423632234§.addDialog(this.§5214237911237924123423632234§);
         this.§5214237911237924123423632234§.addEventListener("ReferalWindowEventSendMail",this.f40036c7);
         this.§5214237911237924123423632234§.closeButton.addEventListener("click",this.b2a4b883);
         this.§5214237911237924123423632234§.method_2855(param1);
         §import use with§.unlock();
         §5214238240238253123423632234§.open();
      }
      
      private function b2a4b883(param1:MouseEvent = null) : void
      {
         this.§5214237911237924123423632234§.removeEventListener("ReferalWindowEventSendMail",this.f40036c7);
         this.§5214237911237924123423632234§.closeButton.removeEventListener("click",this.b2a4b883);
         §5214239382239395123423632234§.removeDialog(this.§5214237911237924123423632234§);
         §5214238240238253123423632234§.close();
         this.§5214237911237924123423632234§ = null;
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§function set else§ = §import use with§.getPanel();
         _loc1_.§521423117142311727123423632234§.addEventListener("Close",this.d17c908c);
      }
      
      public function objectLoaded() : void
      {
      }
      
      private function d17c908c(param1:§package switch set§) : void
      {
         if(param1.§5214236155236168123423632234§ == "Referal")
         {
            if(this.§5214237911237924123423632234§ == null)
            {
               §521423120492312062123423632234§.§override package each§();
            }
            else
            {
               §import use with§.unlock();
            }
         }
      }
      
      private function f40036c7(param1:ReferalWindowEvent) : void
      {
         var _loc2_:Vector.<String> = Vector.<String>(param1.§switch for var§.split(","));
         var _loc3_:Vector.<String> = d28d939b(_loc2_);
         if(_loc3_.length > 0)
         {
            if(_loc3_.length == 1)
            {
               §import use with§.showAlert(§5214236363236376123423632234§.getText("REFERAL_WINDOW_ADDRESS_NOT_VALID_ALERT_TEXT",_loc3_[0]));
            }
            else
            {
               §import use with§.showAlert(§5214236363236376123423632234§.getText("REFERAL_WINDOW_ADDRESSES_NOT_VALID_ALERT_TEXT",_loc3_.join(", ")));
            }
         }
         else
         {
            this.method_459(_loc2_,this.§5214237911237924123423632234§.§5214235731235744123423632234§.§52142339223405123423632234§.text.length ? this.§5214237911237924123423632234§.§5214235731235744123423632234§.§52142339223405123423632234§.text : §get const const§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§get const const§)).getName());
         }
      }
      
      public function method_459(param1:Vector.<String>, param2:String) : void
      {
         §521423120492312062123423632234§.§521423116792311692123423632234§(param1,param2);
      }
      
      public function inviteSentSuccessfully() : void
      {
         §import use with§.showAlert(§5214236363236376123423632234§.getText("INVITATION_HAS_BEEN_SENT_ALERT_TEXT"));
         this.§5214237911237924123423632234§.method_1960();
      }
      
      public function sendInviteEmailError(param1:String) : void
      {
         §import use with§.showAlert(param1);
      }
   }
}

