package alternativa.tanks.gui
{
   import §521423107782310791123423632234§.IconGarageMod;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214236800236813123423632234§.§else const if§;
   import §5214236800236813123423632234§.§for for final§;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.osgi.service.locale.ILocaleService;
   import assets.§if use implements§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class ConfirmAlert extends DialogWindow implements §for for final§, §else const if§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var window:§native for dynamic§;
      
      private var §extends static§:IconGarageMod;
      
      private var preview:Bitmap;
      
      private var §var const continue§:§include return§;
      
      private var §native set true§:§5214231141231154123423632234§;
      
      private var §5214234342234355123423632234§:§5214231141231154123423632234§;
      
      private var §package use throw§:§5214231141231154123423632234§;
      
      private var §default for final§:§if use implements§;
      
      public var §5214238520238533123423632234§:§5214237085237098123423632234§;
      
      public var §521423113902311403123423632234§:§5214237085237098123423632234§;
      
      private var windowWidth:int;
      
      private var windowHeight:int;
      
      private const §52142343223445123423632234§:int = 11;
      
      private const §521423119822311995123423632234§:int = 7;
      
      private const §5214235002235015123423632234§:Point = new Point(164,106);
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private var timer:§include switch var§;
      
      public function ConfirmAlert(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:int = -1, param7:Boolean = false)
      {
         super();
         this.windowWidth = Math.max(this.§5214237400237413123423632234§.x * 2 + 11 * 2 + 7,this.§5214235002235015123423632234§.x + 11 * 4);
         this.window = new §native for dynamic§(this.windowWidth,0);
         addChild(this.window);
         this.§var const continue§ = new §include return§(0,0,4278985229);
         this.§var const continue§.x = 11;
         this.§var const continue§.y = 11;
         this.§var const continue§.width = this.windowWidth - 11 * 2;
         this.§var const continue§.height = this.§5214235002235015123423632234§.y + 11 * 2;
         addChild(this.§var const continue§);
         this.preview = new Bitmap(param3);
         addChild(this.preview);
         this.preview.x = this.§var const continue§.x + int((this.windowWidth - 11 * 2 - this.§5214235002235015123423632234§.x) * 0.5);
         this.preview.y = 11 * 2;
         if(param4 != -1)
         {
            this.§extends static§ = new IconGarageMod(param4);
            addChild(this.§extends static§);
            this.§extends static§.x = this.windowWidth - 11 - 7 - this.§extends static§.width + 2;
            this.§extends static§.y = 11 + 7 - 1;
         }
         this.§native set true§ = new §5214231141231154123423632234§();
         addChild(this.§native set true§);
         this.§native set true§.align = "center";
         this.§native set true§.htmlText = param5;
         this.§native set true§.x = this.windowWidth - this.§native set true§.width >> 1;
         this.§native set true§.width = this.windowWidth - 11 * 2;
         this.§native set true§.y = this.§var const continue§.y + this.§5214235002235015123423632234§.y + 11 * 2 + 7;
         this.§package use throw§ = new §5214231141231154123423632234§();
         addChild(this.§package use throw§);
         if(param4 > 0)
         {
            this.§package use throw§.text = "\"" + param1 + "\" " + §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_COST_PREFIX");
         }
         else
         {
            this.§package use throw§.text = "\"" + param1 + "\" " + (param6 > 1 ? "(" + param6 + ") " : "") + §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_COST_PREFIX");
         }
         this.§default for final§ = new §if use implements§();
         addChild(this.§default for final§);
         this.§5214234342234355123423632234§ = new §5214231141231154123423632234§();
         addChild(this.§5214234342234355123423632234§);
         this.§5214234342234355123423632234§.text = §521423133302313343123423632234§.§get catch catch§(param2,false);
         var _loc9_:int = this.§package use throw§.width + this.§5214234342234355123423632234§.width + this.§default for final§.width + 2;
         var _loc8_:int = this.windowWidth - _loc9_ >> 1;
         this.§package use throw§.x = _loc8_;
         this.§package use throw§.y = this.§native set true§.y + this.§native set true§.height + 11;
         this.§default for final§.x = this.§package use throw§.x + this.§package use throw§.width + 2;
         this.§default for final§.y = this.§package use throw§.y + 5;
         this.§5214234342234355123423632234§.x = this.§default for final§.x + this.§default for final§.width;
         this.§5214234342234355123423632234§.y = this.§package use throw§.y;
         this.windowHeight = this.§package use throw§.y + this.§package use throw§.height + 11 * 2 + this.§5214237400237413123423632234§.y;
         this.§521423113902311403123423632234§ = new §5214237085237098123423632234§();
         addChild(this.§521423113902311403123423632234§);
         this.§521423113902311403123423632234§.label = §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_CANCEL_BUTTON_TEXT");
         this.§521423113902311403123423632234§.x = this.windowWidth - this.§5214237400237413123423632234§.x - 3;
         this.§521423113902311403123423632234§.y = this.windowHeight - 11 - this.§5214237400237413123423632234§.y + 2;
         this.§5214238520238533123423632234§ = new §5214237085237098123423632234§();
         addChild(this.§5214238520238533123423632234§);
         if(param7)
         {
            this.§5214238520238533123423632234§.enable = false;
            this.timer = new §include switch var§();
            this.timer.§5214232580232593123423632234§(§for for final§,this);
            this.timer.§5214232580232593123423632234§(§else const if§,this);
            this.§5214238520238533123423632234§.label = §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT") + " (3)";
            this.timer.§native var include§(3000 + getTimer());
         }
         else
         {
            this.§5214238520238533123423632234§.label = §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT");
         }
         this.§5214238520238533123423632234§.x = 11;
         this.§5214238520238533123423632234§.y = this.windowHeight - 11 - this.§5214237400237413123423632234§.y + 2;
         this.window.height = this.windowHeight;
      }
      
      public function onCompleteBefore(param1:§include switch var§, param2:Boolean) : void
      {
         this.§5214238520238533123423632234§.enable = true;
         this.§5214238520238533123423632234§.label = §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT");
      }
      
      public function onTick(param1:§include switch var§) : void
      {
         this.§5214238520238533123423632234§.label = §5214236363236376123423632234§.getText("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT") + " (" + param1.§throw package return§() + ")";
      }
   }
}

