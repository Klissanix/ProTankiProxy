package alternativa.tanks.model
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §521423133832313396123423632234§.§class const package§;
   import §521423133832313396123423632234§.§continue case§;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.LobbyChat;
   import alternativa.tanks.service.chat.ISharpLinksService;
   import §dynamic switch throw§.§5214232410232423123423632234§;
   import §dynamic switch throw§.§finally var with§;
   import §dynamic switch throw§.§set var use§;
   import §finally catch with§.§5214233055233068123423632234§;
   import §finally catch with§.§function var do§;
   import flash.display.DisplayObjectContainer;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §include else§.§true for switch§;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class LobbyChatModel extends §finally var with§ implements §5214232410232423123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §true switch package§:IUserPropertiesService;
      
      public static var §5214231686231699123423632234§:IBattleLinkActivatorService;
      
      public static var §try set return§:IClientLog;
      
      public static var §5214234248234261123423632234§:ISharpLinksService;
      
      private static const §final switch if§:String = "chat";
      
      private var layer:DisplayObjectContainer;
      
      public var §5214237375237388123423632234§:LobbyChat;
      
      private var selfName:String;
      
      private var §5214239354239367123423632234§:Boolean;
      
      private var §final set throw§:§function var do§;
      
      private var §import catch package§:Boolean = false;
      
      private var §true var each§:Boolean;
      
      private var §5214231254231267123423632234§:Boolean;
      
      private var §true switch use§:ChatSettingsTracker;
      
      private var chatModeratorLevel:§5214231668231681123423632234§;
      
      public function LobbyChatModel()
      {
         super();
         this.layer = display.contentUILayer;
      }
      
      private function c18e04f9() : void
      {
         if(!this.layer.contains(this.§5214237375237388123423632234§))
         {
            this.layer.addChild(this.§5214237375237388123423632234§);
            this.§5214237375237388123423632234§.addEventListener("SendMessage",this.f5b2d0e);
            this.§5214237375237388123423632234§.addEventListener("link",this.b171306);
         }
      }
      
      public function objectUnloaded() : void
      {
         this.§5214237375237388123423632234§.hide();
         this.d16ea0c8();
      }
      
      private function b171306(param1:TextEvent) : void
      {
         var _loc3_:RegExp = /^([0-9a-f]{16})$/gi;
         var _loc2_:String = param1.text;
         if(_loc2_.search(_loc3_) > -1)
         {
            §5214231686231699123423632234§.activateLink(_loc2_);
         }
         else
         {
            navigateToURL(new URLRequest(_loc2_),"_blank");
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§set var use§ = §switch var switch§();
         this.selfName = _loc1_.§true final§;
         this.§5214239354239367123423632234§ = _loc1_.§5214239354239367123423632234§;
         this.§true var each§ = _loc1_.§each catch native§;
         this.§5214231254231267123423632234§ = _loc1_.§while use throw§;
         this.chatModeratorLevel = _loc1_.§521423123012312314123423632234§;
         this.§final set throw§ = new §function var do§(_loc1_.§5214238465238478123423632234§);
         this.§5214237375237388123423632234§ = new LobbyChat();
         this.§5214237375237388123423632234§.selfName = this.selfName;
         this.§5214237375237388123423632234§.typingAntifloodEnabled = _loc1_.§5214234473234486123423632234§;
         if(this.§5214231254231267123423632234§)
         {
            §5214233055233068123423632234§.init(_loc1_.§5214238465238478123423632234§,_loc1_.§521423117242311737123423632234§,_loc1_.§native for for§,_loc1_.§5214236586236599123423632234§);
         }
         this.§true switch use§ = new ChatSettingsTracker(this.§5214237375237388123423632234§);
         this.c18e04f9();
      }
      
      private function f5b2d0e(param1:§true for switch§) : void
      {
         var _loc2_:§class const package§ = null;
         var _loc3_:String = this.§5214237375237388123423632234§.inputText.replace(/\s{2,}/g," ");
         if(!this.§5214231254231267123423632234§ || this.§true var each§ || §5214233055233068123423632234§.§override package final§(_loc3_))
         {
            §521423120492312062123423632234§.§5214235910235923123423632234§(param1.§do for use§,_loc3_);
            if(this.§5214231254231267123423632234§)
            {
               §5214233055233068123423632234§.§in use native§(_loc3_,true);
            }
            this.§5214237375237388123423632234§.lastMessageTime = new Date().getTime();
         }
         else
         {
            _loc2_ = new §class const package§(this.chatModeratorLevel,"",§true switch package§.rank,this.selfName,§true switch package§.userId);
            this.§5214237375237388123423632234§.addMessage(_loc2_,null,_loc3_);
            §try set return§.log("chat","f5b2d0e : antiFlood : %1",_loc3_);
         }
      }
      
      public function clearAllMessages() : void
      {
         if(this.§5214237375237388123423632234§ != null)
         {
            this.§5214237375237388123423632234§.clearAll();
         }
      }
      
      private function d16ea0c8() : void
      {
         if(this.layer.contains(this.§5214237375237388123423632234§))
         {
            this.layer.removeChild(this.§5214237375237388123423632234§);
            this.§5214237375237388123423632234§.removeEventListener("SendMessage",this.f5b2d0e);
            this.§5214237375237388123423632234§.removeEventListener("link",this.b171306);
         }
      }
      
      public function updateTypingSpeedAntifloodParams(param1:int, param2:int) : void
      {
         this.§5214237375237388123423632234§.updateTypingAntifloodParams(param1,param2);
      }
      
      public function showMessages(param1:Vector.<§continue case§>) : void
      {
         var _loc9_:§continue case§ = null;
         var _loc7_:String = null;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc8_:RegExp = /(<)(.*?)(>)/gi;
         var _loc6_:RegExp = /#battle\|(.*?)\|([0-9a-f]{16})/gi;
         this.§import catch package§ = false;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc9_ = param1[_loc5_];
            if(_loc9_.§521423138792313892123423632234§)
            {
               _loc7_ = "<font color=\"#f4e000\">" + _loc9_.text + "</font>";
            }
            else
            {
               _loc7_ = _loc9_.text;
               if(this.§5214231254231267123423632234§)
               {
                  §5214233055233068123423632234§.§in use native§(_loc7_,true);
               }
            }
            _loc4_ = _loc9_.§521423134462313459123423632234§;
            this.§import catch package§ = false;
            _loc2_ = _loc7_.search(_loc8_);
            if(_loc2_ > -1)
            {
               if(!_loc4_)
               {
                  _loc7_ = _loc7_.replace(_loc8_,"&lt;$2&gt;");
               }
               this.§import catch package§ = true;
            }
            _loc7_ += " ";
            if(this.§5214239354239367123423632234§ && !_loc4_)
            {
               _loc7_ = this.§final set throw§.§521423135522313565123423632234§(_loc7_);
               this.§import catch package§ = this.§final set throw§.§import catch package§;
            }
            _loc2_ = _loc7_.search(_loc6_);
            if(_loc2_ > -1)
            {
               _loc7_ = _loc7_.replace(_loc6_,"<u><a href=\'event:$2\'>$1</a></u>");
               this.§import catch package§ = true;
            }
            _loc3_ = _loc7_.length;
            _loc7_ = §5214234248234261123423632234§.replaceSharpLinks(_loc7_);
            if(_loc7_.length != _loc3_)
            {
               this.§import catch package§ = true;
            }
            this.§5214237375237388123423632234§.addMessage(_loc9_.§try package use§,_loc9_.§implements catch implements§,_loc7_,_loc4_,this.§import catch package§);
            _loc5_++;
         }
         if(_loc5_ > 25)
         {
            this.§5214237375237388123423632234§.§super set continue§.scrollDown();
         }
      }
      
      public function cleanUsersMessages(param1:String) : void
      {
         if(this.§5214237375237388123423632234§ != null)
         {
            this.§5214237375237388123423632234§.cleanOutUsersMessages(param1);
         }
      }
   }
}

