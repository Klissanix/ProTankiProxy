package alternativa.tanks.models.statistics
{
   import §5214232683232696123423632234§.§if package final§;
   import §5214238161238174123423632234§.BattlefieldMessages;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.spectatorservice.SpectatorService;
   import §finally catch with§.§5214238205238218123423632234§;
   import §finally switch catch§.§else for while§;
   import flash.events.KeyboardEvent;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §super package else§.§52142354123554123423632234§;
   import §throw catch in§.§5214235964235977123423632234§;
   
   public class SpectatorScreenLayouts implements §521423117662311779123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §import use with§:IPanelView;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §5214236748236761123423632234§:SpectatorService;
      
      public static var §5214238100238113123423632234§:BattleInputService;
      
      public static var §throw set extends§:BattleGUIService;
      
      private static const §5214236195236208123423632234§:uint = 220;
      
      private static const §each true§:int = 1;
      
      private static const §5214231551231564123423632234§:int = 2;
      
      private static const §with class§:int = 4;
      
      private static const §import package return§:int = 8;
      
      private static const §521423130352313048123423632234§:int = 16;
      
      private static const §implements for try§:int = 32;
      
      private static const §5214233181233194123423632234§:int = 64;
      
      private static const §in catch final§:int = 128;
      
      private static const §use for package§:Vector.<int> = new <int>[0x80 | 8 | 0x10 | 0x20 | 0x40 | 4 | 1 | 2,0x80 | 8 | 0x10 | 0x20 | 0x40 | 4,0x80 | 8 | 0x10 | 0x20 | 0x40,64,0];
      
      private var chat:§if package final§;
      
      private var §package set finally§:§5214235964235977123423632234§;
      
      private var §5214236801236814123423632234§:§else for while§;
      
      private var §5214233344233357123423632234§:BattlefieldMessages;
      
      private var §5214238501238514123423632234§:§52142354123554123423632234§;
      
      private var §5214231262231275123423632234§:int;
      
      public function SpectatorScreenLayouts(param1:§if package final§, param2:§5214235964235977123423632234§, param3:BattlefieldMessages, param4:§else for while§, param5:§52142354123554123423632234§)
      {
         super();
         this.chat = param1;
         this.§package set finally§ = param2;
         this.§5214233344233357123423632234§ = param3;
         this.§5214236801236814123423632234§ = param4;
         this.§5214238501238514123423632234§ = param5;
         this.§5214231262231275123423632234§ = 0;
         this.f153a86d(this.§5214231262231275123423632234§);
         display.stage.addEventListener("keyDown",this.onKeyDown);
      }
      
      private function e362ac82() : void
      {
         this.§5214231262231275123423632234§ = (this.§5214231262231275123423632234§ + 1) % §use for package§.length;
         this.f153a86d(this.§5214231262231275123423632234§);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(!§5214238100238113123423632234§.isInputLocked() && param1.keyCode == 220)
         {
            this.e362ac82();
         }
      }
      
      public function close() : void
      {
         display.stage.removeEventListener("keyDown",this.onKeyDown);
         §import use with§.getPanel().visible = true;
         §throw set extends§.getGuiContainer().visible = true;
         this.§5214238501238514123423632234§.visible = true;
         this.chat = null;
         this.§package set finally§ = null;
         this.§5214233344233357123423632234§ = null;
         this.§5214236801236814123423632234§ = null;
         this.§5214238501238514123423632234§ = null;
      }
      
      private function f153a86d(param1:int) : void
      {
         var _loc2_:§5214238205238218123423632234§ = new §5214238205238218123423632234§(§use for package§[param1]);
         §import use with§.getPanel().visible = _loc2_.§52142393323946123423632234§(1);
         this.§5214238501238514123423632234§.visible = _loc2_.§52142393323946123423632234§(2) && §521423998231011123423632234§.showFPS;
         this.chat.visible = _loc2_.§52142393323946123423632234§(4);
         this.§package set finally§.visible = _loc2_.§52142393323946123423632234§(8);
         this.§5214233344233357123423632234§.visible = _loc2_.§52142393323946123423632234§(16);
         this.§5214236801236814123423632234§.visible = _loc2_.§52142393323946123423632234§(32);
         §5214236748236761123423632234§.setUserTitlesVisible(_loc2_.§52142393323946123423632234§(64));
         §throw set extends§.getGuiContainer().visible = _loc2_.§52142393323946123423632234§(128);
      }
   }
}

