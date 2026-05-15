package alternativa.tanks.gui
{
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §if const return§.BonusDetach;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class CongratulationsWindowConfiscate extends DialogWindow implements §try var if§
   {
      
      public static var display:IDisplay;
      
      public static var §default finally§:IDialogsService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §52142375823771123423632234§:§521423120252312038123423632234§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const §final var class§:int = 9;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private const space:int = 8;
      
      private const minWidth:int = 300;
      
      public function CongratulationsWindowConfiscate(param1:§521423120252312038123423632234§, param2:BitmapData, param3:BitmapData, param4:String = "", param5:String = "", param6:int = 0)
      {
         var _loc12_:Bitmap = null;
         var _loc8_:Bitmap = null;
         var _loc7_:int = 0;
         var _loc13_:§5214231141231154123423632234§ = null;
         var _loc14_:§5214231141231154123423632234§ = null;
         super();
         this.§52142375823771123423632234§ = param1;
         _loc12_ = new Bitmap(param2);
         _loc8_ = new Bitmap(param3);
         _loc7_ = Math.max(_loc8_.width + 12 * 2 + 9 * 2,_loc12_.width + 12 * 2 + 9 * 2,300);
         var _loc11_:§native for dynamic§ = new §native for dynamic§(_loc7_,_loc12_.height);
         addChild(_loc11_);
         _loc11_.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         _loc11_.§extends catch default§ = §native set dynamic§.§package const const§;
         var _loc10_:§include return§ = new §include return§(0,0,4278985229);
         addChild(_loc10_);
         _loc10_.x = 12;
         _loc10_.y = 12;
         _loc8_.x = _loc7_ - _loc8_.width >> 1;
         _loc8_.y = 17;
         addChild(_loc8_);
         if(param4 != null && param4 != "")
         {
            _loc13_ = new §5214231141231154123423632234§();
            _loc13_.align = "center";
            _loc13_.wordWrap = true;
            _loc13_.multiline = true;
            _loc13_.§521423102842310297123423632234§ = 13;
            _loc13_.htmlText = param4;
            _loc13_.color = 5898034;
            _loc13_.x = 12 * 2;
            _loc13_.y = _loc8_.y + _loc8_.height + 9 - 28;
            _loc13_.width = _loc7_ - 12 * 4;
            addChild(_loc13_);
         }
         _loc12_.x = _loc7_ - _loc12_.width >> 1;
         _loc12_.y = _loc13_.y + _loc13_.height + 9 - 5;
         addChild(_loc12_);
         if(param5 != null && param5 != "")
         {
            _loc14_ = new §5214231141231154123423632234§();
            _loc14_.align = "center";
            _loc14_.wordWrap = true;
            _loc14_.multiline = true;
            _loc14_.§521423102842310297123423632234§ = 12;
            _loc14_.color = 5898034;
            _loc14_.htmlText = String(param5.split("\n")[0]);
            _loc14_.x = 12 * 2;
            _loc14_.y = _loc12_.y + _loc12_.height + 9 - 17;
            _loc14_.width = _loc7_ - 12 * 4;
            addChild(_loc14_);
         }
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         var _loc9_:int = _loc8_.height + _loc12_.height + this.closeButton.height + 9 * 3 + 12 * 3;
         if(_loc13_ != null)
         {
            _loc9_ += _loc13_.height + 9;
         }
         if(_loc14_ != null)
         {
            _loc9_ += _loc14_.height + 9;
         }
         _loc11_.height = _loc9_ - 5 - 28 - 7 - 17;
         this.closeButton.y = _loc11_.height - 9 - 35;
         this.closeButton.x = _loc11_.width - this.closeButton.width >> 1;
         _loc10_.width = _loc11_.width - 12 * 2;
         _loc10_.height = _loc11_.height - 12 - 9 * 2 - this.§5214237400237413123423632234§.y + 2;
         this.closeButton.addEventListener("click",this.f646ac94);
         §default finally§.addDialog(this);
      }
      
      public function destroy() : void
      {
         var _loc1_:BonusDetach = null;
         this.closeButton.removeEventListener("click",this.f646ac94);
         §default finally§.removeDialog(this);
         if(this.§52142375823771123423632234§ != null)
         {
            _loc1_ = new BonusDetach(this.§52142375823771123423632234§);
            _loc1_.detach();
            this.§52142375823771123423632234§ = null;
         }
      }
      
      private function f646ac94(param1:MouseEvent = null) : void
      {
         this.destroy();
      }
   }
}

