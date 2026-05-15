package scpacker.networking
{
   import §521423128372312850123423632234§.§continue§;
   import §521423129502312963123423632234§.ConnectionClosedError;
   import §5214232387232400123423632234§.§521423127122312725123423632234§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.bg.IBackgroundService;
   import §break use catch§.§extends package import§;
   import §break use catch§.§var set with§;
   import §dynamic catch true§.§for switch class§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.utils.getTimer;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §with set static§.§import catch else§;
   
   public class Network
   {
      
      private static var §finally var const§:§521423127122312725123423632234§;
      
      private static var §521423122322312245123423632234§:§import catch else§;
      
      private static var §catch use else§:§var set with§;
      
      public static var §5214238741238754123423632234§:IBackgroundService;
      
      private var §5214235010235023123423632234§:Socket;
      
      private var §521423112212311234123423632234§:int;
      
      private var §521423104612310474123423632234§:ByteArray = new ByteArray();
      
      private var §null set throw§:ByteArray = new ByteArray();
      
      private var §with include§:ByteArray = new ByteArray();
      
      private var §in package package§:int;
      
      private var §use var null§:String;
      
      private var §5214239945239958123423632234§:Boolean = false;
      
      public function Network()
      {
         super();
         this.§5214235010235023123423632234§ = new Socket();
         §catch use else§ = new §var set with§();
         §finally var const§ = new §521423127122312725123423632234§();
         OSGi.getInstance().registerService(§521423127122312725123423632234§,§finally var const§);
         OSGi.getInstance().registerService(§var set with§,§catch use else§);
         §521423122322312245123423632234§ = new §import catch else§();
         OSGi.getInstance().registerService(§import catch else§,§521423122322312245123423632234§);
         §extends package import§.§521423122322312245123423632234§ = §521423122322312245123423632234§;
      }
      
      private function a3f9402e(param1:Event) : void
      {
      }
      
      private function f491f204() : void
      {
         if(this.§5214235010235023123423632234§.connected)
         {
            this.§5214235010235023123423632234§.flush();
            this.§5214235010235023123423632234§.close();
         }
      }
      
      private function a30ba952(param1:ProgressEvent) : void
      {
         this.§5214235010235023123423632234§.readBytes(this.§null set throw§,this.§null set throw§.length);
         this.b4f64730();
      }
      
      private function f37aee01(param1:Event) : void
      {
         var _loc4_:int = 0;
         f491f204();
         var _loc3_:IDisplay = IDisplay(OSGi.getInstance().getService(IDisplay));
         _loc4_ = _loc3_.mainContainer.numChildren - 1;
         while(_loc4_ >= 0)
         {
            if(_loc3_.mainContainer.getChildAt(_loc4_) != _loc3_.backgroundLayer)
            {
               _loc3_.mainContainer.removeChildAt(_loc4_);
            }
            _loc4_--;
         }
         for each(var _loc2_ in OSGi.getInstance().serviceList)
         {
            if(_loc2_ is §continue§)
            {
               §continue§(_loc2_).onConnectionClosed(ConnectionCloseStatus.CLOSED_BY_SERVER);
            }
         }
         §5214238741238754123423632234§.drawBg();
         §5214238741238754123423632234§.showBg();
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CLOSED_BY_SERVER));
      }
      
      public function destroy() : void
      {
         this.§5214235010235023123423632234§.removeEventListener("socketData",this.a30ba952);
         this.§5214235010235023123423632234§.removeEventListener("connect",this.a3f9402e);
         this.§5214235010235023123423632234§.removeEventListener("close",this.f37aee01);
         this.§5214235010235023123423632234§.removeEventListener("ioError",this.ioError);
         this.§5214235010235023123423632234§.removeEventListener("securityError",this.a18dfc59);
         §null set throw§.clear();
      }
      
      public function connect(param1:String, param2:int) : void
      {
         var _loc3_:OSGi = null;
         var _loc4_:§import catch else§ = null;
         if(!§5214239945239958123423632234§)
         {
            _loc3_ = OSGi.getInstance();
            _loc4_ = §import catch else§(_loc3_.getService(§import catch else§));
            _loc4_.init();
            new §521423114712311484123423632234§().§native var include§(_loc3_);
         }
         this.§5214235010235023123423632234§.connect(param1,param2);
         this.§5214235010235023123423632234§.addEventListener("socketData",this.a30ba952);
         this.§5214235010235023123423632234§.addEventListener("connect",this.a3f9402e);
         this.§5214235010235023123423632234§.addEventListener("close",this.f37aee01);
         this.§5214235010235023123423632234§.addEventListener("ioError",this.ioError);
         this.§5214235010235023123423632234§.addEventListener("securityError",this.a18dfc59);
      }
      
      public function send(param1:§extends package import§) : void
      {
         if(this.§5214235010235023123423632234§.connected)
         {
            param1.§5214237951237964123423632234§(§with include§);
            this.§5214235010235023123423632234§.writeBytes(§with include§);
            this.§5214235010235023123423632234§.flush();
            §with include§.clear();
         }
      }
      
      private function b4f64730() : void
      {
         var _loc10_:int = 0;
         var _loc7_:Boolean = false;
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc11_:§extends package import§ = null;
         var _loc5_:§for switch class§ = null;
         var _loc8_:String = null;
         var _loc6_:XML = null;
         var _loc2_:String = null;
         this.§null set throw§.position = this.§521423112212311234123423632234§;
         while(true)
         {
            if(this.§null set throw§.bytesAvailable < 8)
            {
               return;
            }
            _loc10_ = this.§null set throw§.readInt();
            _loc7_ = (_loc10_ >>> 24 & 0x40) != 0;
            _loc3_ = _loc10_ & 0xFFFFFF;
            _loc1_ = this.§null set throw§.readInt();
            _loc4_ = _loc3_ - 8;
            if(this.§null set throw§.bytesAvailable < _loc4_)
            {
               return;
            }
            if(_loc4_ > 0)
            {
               this.§null set throw§.readBytes(this.§521423104612310474123423632234§,0,_loc4_);
            }
            §521423122322312245123423632234§.§override final§().§52142378223795123423632234§(§521423104612310474123423632234§,_loc4_);
            if(_loc7_)
            {
               this.§521423104612310474123423632234§.uncompress("deflate");
            }
            try
            {
               _loc11_ = §catch use else§.§5214237824237837123423632234§(_loc1_);
               _loc11_.§true catch use§(this.§521423104612310474123423632234§);
               §finally var const§.§static package return§(_loc11_);
            }
            catch(e:Error)
            {
               LogService(OSGi.getInstance().getService(LogService)).getLogger("net").error("error packet %1 packetLength %2 packetId %3 \n\n %4",[_loc11_,_loc3_,_loc1_,e.getStackTrace()]);
               _loc5_ = §for switch class§(OSGi.getInstance().getService(§for switch class§));
               _loc8_ = "";
               _loc6_ = describeType(_loc11_);
               for each(var _loc9_ in _loc6_.variable)
               {
                  _loc2_ = _loc9_.@name;
                  _loc8_ += _loc2_ + " -> " + _loc11_[_loc2_] + "\n";
               }
               _loc5_.§5214231352231365123423632234§("[Network]\n" + e.getStackTrace() + "\n" + "packetId:" + _loc1_ + "\n" + "user:" + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName + " " + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).rank + "\n" + "Minutes-" + int(getTimer() / 1000 / 60) + "\n" + "PC: " + _loc8_ + "\n\n");
            }
            §521423104612310474123423632234§.clear();
            if(this.§null set throw§.bytesAvailable == 0)
            {
               break;
            }
            this.§521423112212311234123423632234§ = this.§null set throw§.position;
         }
         this.§null set throw§.clear();
         this.§521423112212311234123423632234§ = 0;
      }
      
      private function ioError(param1:IOErrorEvent) : void
      {
         f491f204();
         if(!§5214239945239958123423632234§)
         {
            reconnectToExtraHost();
            return;
         }
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CONNECTION_ERROR));
         §5214238741238754123423632234§.drawBg();
         §5214238741238754123423632234§.showBg();
      }
      
      public function setExtraHost(param1:String, param2:int) : void
      {
         §use var null§ = param1;
         §in package package§ = param2;
      }
      
      public function reconnectToExtraHost() : void
      {
         if(§5214239945239958123423632234§)
         {
            return;
         }
         f491f204();
         OSGi.§try set return§.log("net","Reconnecting to extra server");
         destroy();
         §5214235010235023123423632234§ = new Socket();
         §521423122322312245123423632234§.§5214233820233833123423632234§();
         §5214239945239958123423632234§ = true;
         connect(§use var null§,§in package package§);
      }
      
      private function a18dfc59(param1:SecurityErrorEvent) : void
      {
         f491f204();
         if(!§5214239945239958123423632234§)
         {
            reconnectToExtraHost();
            return;
         }
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new ConnectionClosedError(ConnectionCloseStatus.CLOSED_BY_SERVER));
         §5214238741238754123423632234§.drawBg();
         §5214238741238754123423632234§.showBg();
      }
   }
}

