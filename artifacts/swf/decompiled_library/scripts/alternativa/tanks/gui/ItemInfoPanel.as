package alternativa.tanks.gui
{
   import §521423107942310807123423632234§.§521423110672311080123423632234§;
   import §521423110462311059123423632234§.§while catch throw§;
   import §521423114822311495123423632234§.§for use use§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423130002313013123423632234§.ResourceLoadingWrapper;
   import §521423130002313013123423632234§.§implements package try§;
   import §5214232440232453123423632234§.§use set while§;
   import §5214233052233065123423632234§.KitInfoTable;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import §5214233785233798123423632234§.§override switch while§;
   import §5214234891234904123423632234§.GarageButton;
   import §5214234891234904123423632234§.TimerButton;
   import §5214234891234904123423632234§.TimerButtonEvent;
   import §5214236785236798123423632234§.BlinkEffect;
   import §5214236800236813123423632234§.§include switch var§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §52142370623719123423632234§.§52142351823531123423632234§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParams;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.utils.removeDisplayObject;
   import §do package if§.ItemCategoryEnum;
   import §false switch if§.§do switch include§;
   import fl.containers.ScrollPane;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import §get switch catch§.§catch§;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.removeChildrenFrom;
   import §true switch true§.§5214231141231154123423632234§;
   import utils.ScrollStyleUtils;
   import §var break§.UpgradeColors;
   
   public class ItemInfoPanel extends Sprite implements §implements package try§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §var var finally§:IMoneyService;
      
      public static var §521423131892313202123423632234§:ItemPropertyParamsService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214233683233696123423632234§:ITank3DViewer;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §extends package use§:IDelayMountCategoryService;
      
      public static const §implements for throw§:int = 9999;
      
      private static const §in package continue§:int = 15;
      
      private static const §521423111092311122123423632234§:int = 64;
      
      private static const §5214235201235214123423632234§:int = 10;
      
      private static const §package for extends§:int = 12;
      
      private static const §continue package break§:int = 9;
      
      private static const §get package switch§:int = 3;
      
      private static const §with catch import§:int = 0;
      
      private static const §false use§:int = 10;
      
      private static const §5214235128235141123423632234§:Point = new Point(120,50);
      
      public const §final var class§:int = 11;
      
      public var size:Point;
      
      public var §521423112092311222123423632234§:§override switch while§;
      
      public var §super use break§:GarageButton;
      
      public var §null package var§:TimerButton;
      
      public var §52142351123524123423632234§:§do switch include§;
      
      private var §5214236445236458123423632234§:§do switch include§;
      
      private var §5214234054234067123423632234§:§5214231141231154123423632234§;
      
      private var §521423137592313772123423632234§:§5214231141231154123423632234§;
      
      private var window:§native for dynamic§;
      
      private var §return const set§:§include return§;
      
      private var §while var native§:Bitmap;
      
      private var §5214234684234697123423632234§:DiscreteSprite;
      
      private var §throw set each§:Bitmap;
      
      private var §continue switch case§:Bitmap;
      
      private var §5214239186239199123423632234§:Bitmap;
      
      private var §52142366023673123423632234§:Boolean = true;
      
      private var §521423130842313097123423632234§:Bitmap;
      
      private var §5214239348239361123423632234§:Vector.<ItemPropertyParams>;
      
      private var §continue package throw§:ScrollPane;
      
      private var §521423125772312590123423632234§:Sprite;
      
      private var §5214232388232401123423632234§:Sprite;
      
      private var §5214239405239418123423632234§:Shape;
      
      private var §5214235189235202123423632234§:Rectangle;
      
      private var §5214232930232943123423632234§:Rectangle;
      
      private var §521423116172311630123423632234§:§5214231141231154123423632234§;
      
      private var §5214238314238327123423632234§:ModTable;
      
      private var §521423102042310217123423632234§:KitInfoTable;
      
      private var §else package package§:Shape;
      
      private var isKit:Boolean;
      
      private var §5214236110236123123423632234§:§5214231141231154123423632234§;
      
      private var item:§521423120252312038123423632234§;
      
      private var §5214238588238601123423632234§:ItemCategoryEnum;
      
      private var §5214238611238624123423632234§:int;
      
      private var isCountable:Boolean = false;
      
      private var previewResource:§include catch with§;
      
      private var §override catch extends§:int;
      
      private var §5214234818234831123423632234§:int;
      
      private var §final package const§:Long;
      
      private var §get var continue§:Long;
      
      private var §null var extends§:Long;
      
      private var §null package include§:Long;
      
      private var §52142355623569123423632234§:BlinkEffect;
      
      private var §set switch for§:Boolean;
      
      private var §521423129862312999123423632234§:PresentInfoPanel;
      
      private var §const var var§:DiscreteSprite;
      
      private var §521423125992312612123423632234§:DiscreteSprite;
      
      public function ItemInfoPanel(param1:Boolean, param2:int)
      {
         var _loc4_:TextFormat = null;
         this.§5214239348239361123423632234§ = new Vector.<ItemPropertyParams>();
         this.§52142355623569123423632234§ = new BlinkEffect();
         this.§const var var§ = new DiscreteSprite();
         this.§521423125992312612123423632234§ = new DiscreteSprite();
         super();
         this.§set switch for§ = param1;
         this.size = new Point(400,300);
         this.window = new §native for dynamic§(this.size.x,this.size.y);
         addChild(this.window);
         this.window.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.window.§extends catch default§ = §native set dynamic§.§52142369323706123423632234§;
         this.§return const set§ = new §include return§(164,106,4278985229);
         this.§return const set§.§5214238301238314123423632234§ = true;
         addChild(this.§return const set§);
         this.§return const set§.x = 11;
         this.§return const set§.y = 11;
         this.§5214239405239418123423632234§ = new Shape();
         this.§5214235189235202123423632234§ = new Rectangle();
         this.§5214232930232943123423632234§ = new Rectangle(12,9,0,0);
         this.§5214235189235202123423632234§.width = param2 - 11 * 2 - 2;
         this.§5214232930232943123423632234§.width = this.§5214235189235202123423632234§.width - 12 * 2;
         this.§521423125772312590123423632234§ = new Sprite();
         this.§521423125772312590123423632234§.x = 11 + 1;
         this.§521423125772312590123423632234§.y = 11 + 1;
         this.§521423125772312590123423632234§.addChild(this.§5214239405239418123423632234§);
         this.§continue package throw§ = new ScrollPane();
         addChild(this.§continue package throw§);
         this.a7424275();
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "auto";
         this.§continue package throw§.source = this.§521423125772312590123423632234§;
         this.§continue package throw§.focusEnabled = false;
         this.§continue package throw§.x = 11 + 1;
         this.§continue package throw§.y = 11 + 1 + 3;
         var _loc5_:String = §52142329523308123423632234§.userName;
         this.§5214234054234067123423632234§ = new §5214231141231154123423632234§();
         this.§5214234054234067123423632234§.type = "dynamic";
         this.§5214234054234067123423632234§.text = "Hello, " + _loc5_ + "!";
         this.§5214234054234067123423632234§.§521423102842310297123423632234§ = 18;
         this.§5214234054234067123423632234§.color = 381208;
         this.§521423125772312590123423632234§.addChild(this.§5214234054234067123423632234§);
         this.§5214234054234067123423632234§.x = 12 - 3;
         this.§5214234054234067123423632234§.y = 9 - 7;
         this.§521423137592313772123423632234§ = new §5214231141231154123423632234§();
         var _loc3_:String = §5214236363236376123423632234§.language;
         this.§521423137592313772123423632234§.multiline = true;
         this.§521423137592313772123423632234§.wordWrap = true;
         this.§521423137592313772123423632234§.color = 381208;
         this.§521423137592313772123423632234§.text = "Description";
         this.§521423137592313772123423632234§.mouseWheelEnabled = false;
         this.§521423125772312590123423632234§.addChild(this.§521423137592313772123423632234§);
         this.§521423137592313772123423632234§.x = 12 - 3;
         this.§5214234684234697123423632234§ = new DiscreteSprite();
         this.§521423125772312590123423632234§.addChild(this.§5214234684234697123423632234§);
         this.§521423129862312999123423632234§ = new PresentInfoPanel(this.§5214232930232943123423632234§.width);
         this.§521423129862312999123423632234§.x = 9;
         this.§while var native§ = new Bitmap();
         this.§throw set each§ = new Bitmap();
         this.§continue switch case§ = new Bitmap();
         this.§5214239186239199123423632234§ = new Bitmap();
         this.§521423130842313097123423632234§ = new Bitmap();
         this.§super use break§ = new GarageButton();
         this.§null package var§ = new TimerButton();
         this.§null package var§.label = §5214236363236376123423632234§.getText("GARAGE_INFO_PANEL_BUTTON_EQUIP_TEXT");
         this.§5214236445236458123423632234§ = new §do switch include§();
         this.§5214236445236458123423632234§.label = §5214236363236376123423632234§.getText("FITTING_BUTTON_TEXT");
         this.§5214236445236458123423632234§.visible = false;
         this.§5214236445236458123423632234§.addEventListener("click",this.e44a3e05);
         addChild(this.§521423125992312612123423632234§);
         this.§52142351123524123423632234§ = new §do switch include§();
         this.§52142351123524123423632234§.label = §5214236363236376123423632234§.getText("DELETE_PRESENT_BUTTON");
         this.§52142351123524123423632234§.visible = false;
         this.§super use break§.visible = false;
         this.§null package var§.visible = false;
         this.§521423125992312612123423632234§.addChild(this.§super use break§);
         this.§521423125992312612123423632234§.addChild(this.§null package var§);
         this.§521423125992312612123423632234§.addChild(this.§5214236445236458123423632234§);
         this.§521423125992312612123423632234§.addChild(this.§52142351123524123423632234§);
         addChild(this.§const var var§);
         this.§521423112092311222123423632234§ = new §override switch while§();
         this.§521423125992312612123423632234§.addChild(this.§521423112092311222123423632234§);
         this.§521423112092311222123423632234§.value = 1;
         this.§521423112092311222123423632234§.§5214232241232254123423632234§ = 1;
         this.§521423112092311222123423632234§.§else const in§ = 9999;
         this.§521423112092311222123423632234§.visible = false;
         this.§521423112092311222123423632234§.mouseEnabled = false;
         this.§521423112092311222123423632234§.addEventListener("change",this.c7441f2b);
         this.§5214232388232401123423632234§ = new Sprite();
         this.§5214232388232401123423632234§.x = 12;
         this.§5214232388232401123423632234§.y = Math.round(9 * 2 + this.§5214234054234067123423632234§.textHeight - 7);
         this.f6e70704();
         this.§521423116172311630123423632234§ = new §5214231141231154123423632234§();
         this.§521423116172311630123423632234§.§521423102842310297123423632234§ = 18;
         this.§521423116172311630123423632234§.color = 381208;
         this.§5214238314238327123423632234§ = new ModTable(this.§5214232930232943123423632234§.width);
         this.§5214238314238327123423632234§.x = 12;
         this.§5214236110236123123423632234§ = new §5214231141231154123423632234§();
         this.§5214236110236123123423632234§.color = 16777215;
         this.§5214236110236123123423632234§.align = "center";
         this.§5214236110236123123423632234§.§521423102842310297123423632234§ = 23;
         this.§5214236110236123123423632234§.bold = true;
      }
      
      private static function e20b458(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = param2;
         if(param1 < param2)
         {
            _loc4_ = -param2;
         }
         else if(param1 > param3)
         {
            _loc4_ = -param3;
         }
         return _loc4_;
      }
      
      private function e459a8a0(param1:Bitmap) : void
      {
         if(param1.bitmapData != null && !this.§5214234684234697123423632234§.contains(param1))
         {
            this.§5214234684234697123423632234§.addChild(param1);
         }
      }
      
      private function e478fd3c() : void
      {
         var _loc1_:ItemPropertyParams = null;
         for each(_loc1_ in this.§5214239348239361123423632234§)
         {
            if(this.§5214232388232401123423632234§.contains(_loc1_.icon))
            {
               this.§5214232388232401123423632234§.removeChild(_loc1_.icon);
            }
         }
      }
      
      public function showModTable() : void
      {
         if(!this.§521423125772312590123423632234§.contains(this.§5214238314238327123423632234§))
         {
            this.§521423125772312590123423632234§.addChild(this.§5214238314238327123423632234§);
         }
      }
      
      private function e44a3e05(param1:MouseEvent) : void
      {
         §use set while§(this.item.adapt(§use set while§)).fit();
         this.§5214236445236458123423632234§.enabled = false;
      }
      
      private function d3809e8e() : void
      {
         if(this.§521423125772312590123423632234§.contains(this.§else package package§))
         {
            this.§521423125772312590123423632234§.removeChild(this.§else package package§);
         }
         if(this.§521423125772312590123423632234§.contains(this.§521423102042310217123423632234§))
         {
            this.§521423125772312590123423632234§.removeChild(this.§521423102042310217123423632234§);
         }
      }
      
      public function hideModTable() : void
      {
         if(this.§521423125772312590123423632234§.contains(this.§5214238314238327123423632234§))
         {
            this.§521423125772312590123423632234§.removeChild(this.§5214238314238327123423632234§);
         }
      }
      
      public function destroy() : void
      {
         this.window = null;
         this.§return const set§ = null;
         this.§5214239186239199123423632234§ = null;
         this.§521423130842313097123423632234§ = null;
         this.§throw set each§ = null;
         this.§5214234684234697123423632234§ = null;
         this.§while var native§ = null;
         this.§continue switch case§ = null;
         this.item = null;
         this.§5214234054234067123423632234§ = null;
         this.§521423137592313772123423632234§ = null;
         this.§continue package throw§ = null;
         this.§521423125772312590123423632234§ = null;
         this.§5214232388232401123423632234§ = null;
         this.§else package package§ = null;
         this.§5214239405239418123423632234§ = null;
         this.§5214235189235202123423632234§ = null;
         this.§5214232930232943123423632234§ = null;
         this.§521423125992312612123423632234§ = null;
         this.§super use break§ = null;
         this.§5214236445236458123423632234§.removeEventListener("click",this.e44a3e05);
         this.§5214236445236458123423632234§ = null;
         if(this.§null package var§ != null)
         {
            this.§null package var§.removeEventListener("TimerButtonEventTimeOnCompleteTimerButton",this.b1984979);
            this.§null package var§.hideTime();
            this.§null package var§ = null;
         }
         this.§final package const§ = null;
         this.§52142355623569123423632234§.stop();
         this.§521423129862312999123423632234§.destroy();
         this.§521423129862312999123423632234§ = null;
         this.§const var var§ = null;
      }
      
      private function e407954c() : Boolean
      {
         return §521423120472312060123423632234§.isMountable(this.item) && §521423120472312060123423632234§.hasItem(this.item) && !§521423120472312060123423632234§.isMounted(this.item);
      }
      
      public function updateEquipButton() : void
      {
         this.d4fab68f();
         if(Boolean(§continue for final§.inBattle()) && !§return set get§.reArmorEnabled)
         {
            this.§null package var§.enabled = false;
            return;
         }
         if(this.e407954c())
         {
            this.b38a0bb9();
         }
         else
         {
            this.§null package var§.enabled = false;
            this.§null package var§.hideTime();
         }
      }
      
      private function b38a0bb9() : void
      {
         var _loc1_:§include switch var§ = §extends package use§.getDownTimer(this.item);
         if(§continue for final§.inBattle() && _loc1_.§throw package return§() > 0 && !§521423120472312060123423632234§.isMounted(this.item))
         {
            this.§null package var§.startTimer(_loc1_);
            this.§null package var§.addEventListener("TimerButtonEventTimeOnCompleteTimerButton",this.b1984979);
         }
         else
         {
            this.§null package var§.hideTime();
            this.§null package var§.enabled = true;
         }
      }
      
      private function f6e70704() : void
      {
         this.§else package package§ = new Shape();
         this.§else package package§.x = 12;
         this.§521423102042310217123423632234§ = new KitInfoTable(this.§5214232930232943123423632234§.width);
         this.§521423102042310217123423632234§.x = 12;
      }
      
      private function b1984979(param1:TimerButtonEvent) : void
      {
         this.§null package var§.enabled = true;
         this.§null package var§.removeEventListener("TimerButtonEventTimeOnCompleteTimerButton",this.b1984979);
      }
      
      public function get leftPreviewEnabled() : Boolean
      {
         return this.§52142366023673123423632234§;
      }
      
      public function set leftPreviewEnabled(param1:Boolean) : void
      {
         this.§52142366023673123423632234§ = param1;
      }
      
      private function b56452a2() : void
      {
         var _loc1_:int = this.§const var var§.y;
         if(this.§super use break§.visible)
         {
            this.§super use break§.y = _loc1_;
            if(this.isCountable)
            {
               this.§521423112092311222123423632234§.x = -7;
               this.§521423112092311222123423632234§.y = this.§super use break§.y + Math.round((§5214235128235141123423632234§.y - this.§521423112092311222123423632234§.height) * 0.5);
               this.§super use break§.x = this.§521423112092311222123423632234§.x + this.§521423112092311222123423632234§.width + 10;
            }
            else
            {
               this.§super use break§.x = 11;
            }
         }
         if(this.§null package var§.visible)
         {
            this.§null package var§.y = _loc1_;
            this.§null package var§.x = this.size.x - 11 - §5214235128235141123423632234§.x;
         }
         if(this.§5214236445236458123423632234§.visible)
         {
            this.§5214236445236458123423632234§.y = _loc1_;
            this.§5214236445236458123423632234§.x = this.size.x - 11 - §5214235128235141123423632234§.x;
         }
         this.§52142351123524123423632234§.x = 11;
         this.§52142351123524123423632234§.y = _loc1_;
      }
      
      private function d60768d1(param1:ItemGarageProperty) : DisplayObject
      {
         var _loc2_:int = 0;
         var _loc4_:ModInfoRow = null;
         var _loc5_:Vector.<§for use use§> = null;
         var _loc3_:int = 0;
         if(§521423120472312060123423632234§.isModificationItem(this.item))
         {
            _loc2_ = §521423120472312060123423632234§.getModificationIndex(this.item);
            _loc4_ = this.§5214238314238327123423632234§.§521423134292313442123423632234§[_loc2_];
            _loc5_ = §521423120472312060123423632234§.getProperties(this.item);
            _loc3_ = 0;
            return _loc4_.§5214234426234439123423632234§[_loc3_];
         }
         return §521423131892313202123423632234§.getParams(param1).icon.getLabel();
      }
      
      private function f56dd5ff() : void
      {
         if(§521423120472312060123423632234§.isUpgrading(this.item))
         {
            this.e22ca6f7(§521423120472312060123423632234§.getUpgradingProperty(this.item));
         }
         else
         {
            this.§52142355623569123423632234§.stop();
         }
      }
      
      private function d5aca7cd(param1:Bitmap) : void
      {
         if(this.§521423125772312590123423632234§.contains(param1))
         {
            this.§521423125772312590123423632234§.removeChild(param1);
         }
      }
      
      private function d4fab68f() : void
      {
         if(this.e407954c())
         {
            this.§null package var§.label = §5214236363236376123423632234§.getText("GARAGE_INFO_PANEL_BUTTON_EQUIP_TEXT");
         }
         else
         {
            this.§null package var§.label = §5214236363236376123423632234§.getText("GARAGE_EQUIPPED_TEXT");
         }
      }
      
      public function showItemInfo(param1:§521423120252312038123423632234§, param2:Boolean) : void
      {
         var _loc22_:Number = NaN;
         var _loc29_:§for use use§ = null;
         var _loc13_:§while catch throw§ = null;
         var _loc10_:§include catch with§ = null;
         var _loc30_:Boolean = false;
         var _loc28_:int = 0;
         var _loc24_:ItemPropertyParams = null;
         var _loc26_:int = 0;
         var _loc21_:Vector.<§521423120252312038123423632234§> = null;
         var _loc15_:Vector.<String> = null;
         var _loc14_:int = 0;
         var _loc19_:§521423120252312038123423632234§ = null;
         var _loc18_:ModInfoRow = null;
         var _loc17_:int = 0;
         var _loc16_:Vector.<UpgradableItemPropertyValue> = null;
         var _loc27_:int = 0;
         var _loc25_:int = 0;
         var _loc23_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:§521423120252312038123423632234§ = null;
         var _loc3_:int = 0;
         var _loc9_:§52142351823531123423632234§ = null;
         var _loc8_:§include catch with§ = null;
         var _loc7_:§include catch with§ = null;
         this.§throw set each§.bitmapData = null;
         this.§continue switch case§.bitmapData = null;
         this.§while var native§.bitmapData = null;
         removeChildrenFrom(this.§5214234684234697123423632234§);
         removeChildrenFrom(this.§const var var§);
         this.d36f3cb3(param2,this.item,param1);
         if(this.item != param1)
         {
            §5214233683233696123423632234§.closePreview();
            this.item = param1;
         }
         if(param2 || !§521423120472312060123423632234§.isModificationItem(param1))
         {
            this.§super use break§.§extends for native§(§5214236363236376123423632234§.getText("GARAGE_INFO_PANEL_BUTTON_BUY_TEXT"));
         }
         else
         {
            this.§super use break§.§extends for native§(§5214236363236376123423632234§.getText("GARAGE_INFO_PANEL_BUTTON_BUY_TEXT") + " M" + (§521423120472312060123423632234§.getModificationIndex(param1) + 1));
         }
         this.§5214234054234067123423632234§.text = §521423120472312060123423632234§.getName(param1);
         this.§521423137592313772123423632234§.visible = !§521423120472312060123423632234§.isGivenPresent(param1);
         this.§521423137592313772123423632234§.htmlText = §521423120472312060123423632234§.getDescription(param1);
         this.previewResource = §521423120472312060123423632234§.getPreviewResource(param1);
         if(§521423120472312060123423632234§.isKit(param1))
         {
            _loc10_ = §521423110672311080123423632234§(param1.adapt(§521423110672311080123423632234§)).getImage();
            var _loc31_:§include catch with§;
            this.§null var extends§ = (_loc31_ = _loc10_).§5214239618239631123423632234§.id;
            var _loc32_:§include catch with§ = _loc10_;
            var _loc33_:§include catch with§;
            if(_loc32_.§5214239618239631123423632234§.§521423137152313728123423632234§ && ((_loc33_ = _loc10_).§else for include§ & 1) == 0)
            {
               _loc10_.§5214234169234182123423632234§(new ResourceLoadingWrapper(this));
            }
            this.§throw set each§.bitmapData = _loc10_.data;
            if(this.§throw set each§.bitmapData != null)
            {
               this.e459a8a0(this.§throw set each§);
               this.§5214236110236123123423632234§.visible = true;
            }
            else
            {
               removeDisplayObject(this.§throw set each§);
               this.§5214236110236123123423632234§.visible = false;
            }
         }
         else if(§521423120472312060123423632234§.isGivenPresent(param1))
         {
            this.leftPreviewEnabled = false;
            _loc8_ = §52142351823531123423632234§(param1.adapt(§52142351823531123423632234§)).getImage();
            var _loc34_:§include catch with§;
            this.§null package include§ = (_loc34_ = _loc8_).§5214239618239631123423632234§.id;
            var _loc35_:§include catch with§ = _loc8_;
            var _loc36_:§include catch with§;
            if(_loc35_.§5214239618239631123423632234§.§521423137152313728123423632234§ && ((_loc36_ = _loc8_).§else for include§ & 1) == 0)
            {
               _loc8_.§5214234169234182123423632234§(new ResourceLoadingWrapper(this));
            }
            this.§continue switch case§.bitmapData = _loc8_.data;
            if(this.§continue switch case§.bitmapData != null)
            {
               this.e459a8a0(this.§continue switch case§);
            }
            else
            {
               removeDisplayObject(this.§continue switch case§);
            }
         }
         else
         {
            _loc7_ = §521423120472312060123423632234§.getPreviewResource(param1);
            var _loc37_:§include catch with§;
            this.§final package const§ = (_loc37_ = _loc7_).§5214239618239631123423632234§.id;
            var _loc38_:§include catch with§ = _loc7_;
            var _loc39_:§include catch with§;
            if(_loc38_.§5214239618239631123423632234§.§521423137152313728123423632234§ && ((_loc39_ = _loc7_).§else for include§ & 1) == 0)
            {
               _loc7_.§5214234169234182123423632234§(new ResourceLoadingWrapper(this));
            }
            this.§while var native§.bitmapData = _loc7_.data;
         }
         this.§override catch extends§ = §521423120472312060123423632234§.getMaxRankIndex(param1);
         this.§5214234818234831123423632234§ = §521423120472312060123423632234§.getMinRankIndex(param1);
         this.e478fd3c();
         this.§5214238588238601123423632234§ = §521423120472312060123423632234§.getCategory(param1);
         this.§5214238611238624123423632234§ = §521423120472312060123423632234§.getPrice(param1);
         this.isCountable = §521423120472312060123423632234§.isCountable(param1);
         var _loc6_:Boolean = this.§5214238588238601123423632234§ != ItemCategoryEnum.ARMOR && this.§5214238588238601123423632234§ != ItemCategoryEnum.WEAPON;
         var _loc12_:Vector.<UpgradableItemPropertyValue> = §521423120472312060123423632234§.getUpgradableProperties(param1);
         if(_loc12_ != null && _loc12_.length > 0)
         {
            this.§5214239348239361123423632234§.length = _loc12_.length;
            _loc30_ = false;
            _loc28_ = 0;
            while(_loc28_ < _loc12_.length)
            {
               _loc29_ = _loc12_[_loc28_];
               _loc24_ = §521423131892313202123423632234§.getParams(_loc29_.getProperty());
               this.§5214239348239361123423632234§[_loc28_] = _loc24_;
               if(_loc29_.isUpgradable() && _loc29_.getUpgradableValue().getMaxLevel() > 0)
               {
                  _loc30_ = true;
               }
               if(_loc6_)
               {
                  _loc26_ = UpgradeColors.getColorForValue(_loc29_);
                  _loc24_.icon.setValue(_loc29_.getValue(),_loc26_);
               }
               else
               {
                  _loc24_.icon.removeValue();
               }
               _loc28_++;
            }
            this.c574103e();
            if(!this.§521423125772312590123423632234§.contains(this.§5214232388232401123423632234§))
            {
               this.§521423125772312590123423632234§.addChild(this.§5214232388232401123423632234§);
            }
         }
         else
         {
            this.§5214239348239361123423632234§.length = 0;
            if(this.§521423125772312590123423632234§.contains(this.§5214232388232401123423632234§))
            {
               this.§521423125772312590123423632234§.removeChild(this.§5214232388232401123423632234§);
            }
         }
         if(§521423120472312060123423632234§.isGivenPresent(param1))
         {
            _loc9_ = §52142351823531123423632234§(param1.adapt(§52142351823531123423632234§));
            this.§521423129862312999123423632234§.update(_loc9_.getPresenterId(),_loc9_.getDate(),_loc9_.getText());
            this.§5214234684234697123423632234§.addChild(this.§521423129862312999123423632234§);
         }
         else
         {
            this.§521423129862312999123423632234§.destroyPresenterLabel();
         }
         if(§521423120472312060123423632234§.isKit(param1))
         {
            this.isKit = true;
            this.d153811a(param1);
         }
         else
         {
            this.isKit = false;
            this.d3809e8e();
            if(this.§521423125772312590123423632234§.contains(this.§5214236110236123123423632234§))
            {
               this.§521423125772312590123423632234§.removeChild(this.§5214236110236123123423632234§);
            }
         }
         var _loc20_:Graphics = this.§5214232388232401123423632234§.graphics;
         _loc20_.clear();
         if(this.§5214238588238601123423632234§ == ItemCategoryEnum.ARMOR || this.§5214238588238601123423632234§ == ItemCategoryEnum.WEAPON)
         {
            _loc20_.beginFill(611072,1);
            _loc20_.lineStyle(1,5898034,1);
            _loc20_.drawRoundRect(0.5,0.5,this.§5214232930232943123423632234§.width - 1,115,6,6);
            _loc20_.endFill();
            this.showModTable();
            this.§5214238314238327123423632234§.select(§521423120472312060123423632234§.getModificationIndex(param1));
            _loc21_ = §521423120472312060123423632234§.getModifications(param1);
            _loc15_ = new Vector.<String>(this.§5214239348239361123423632234§.length);
            if(_loc21_.length == 1)
            {
               _loc14_ = 0;
               while(_loc14_ < this.§5214238314238327123423632234§.§521423134292313442123423632234§.length)
               {
                  _loc18_ = ModInfoRow(this.§5214238314238327123423632234§.§521423134292313442123423632234§[_loc14_]);
                  if(_loc14_ > 0)
                  {
                     _loc18_.visible = false;
                  }
                  _loc14_++;
               }
            }
            else
            {
               _loc14_ = 0;
               while(_loc14_ < this.§5214238314238327123423632234§.§521423134292313442123423632234§.length)
               {
                  _loc18_ = ModInfoRow(this.§5214238314238327123423632234§.§521423134292313442123423632234§[_loc14_]);
                  _loc18_.visible = true;
                  _loc14_++;
               }
            }
            _loc14_ = 0;
            while(_loc14_ < _loc21_.length)
            {
               _loc19_ = _loc21_[_loc14_];
               _loc18_ = ModInfoRow(this.§5214238314238327123423632234§.§521423134292313442123423632234§[_loc14_]);
               _loc18_.§extends static§.visible = _loc21_.length != 1;
               _loc18_.§5214234342234355123423632234§.text = §521423133302313343123423632234§.§get catch catch§(§521423120472312060123423632234§.getPriceWithoutDiscount(_loc19_),false);
               if(_loc17_ < _loc18_.§5214234342234355123423632234§.width)
               {
                  _loc17_ = _loc18_.§5214234342234355123423632234§.width;
               }
               this.§5214238314238327123423632234§.maxCostWidth = _loc17_;
               _loc18_.§5214236045236058123423632234§.§true finally catch§(§521423120472312060123423632234§.getMinRankIndex(_loc19_));
               _loc16_ = §521423120472312060123423632234§.getUpgradableProperties(_loc19_);
               _loc28_ = 0;
               while(_loc28_ < _loc16_.length)
               {
                  _loc29_ = UpgradableItemPropertyValue(_loc16_[_loc28_]);
                  _loc24_ = §521423131892313202123423632234§.getParams(_loc29_.getProperty());
                  if(_loc24_ != null)
                  {
                     _loc15_[_loc28_] = _loc29_.getValue();
                  }
                  _loc28_++;
               }
               _loc18_.setLabelsNum(_loc16_.length);
               _loc18_.setLabelsText(_loc16_);
               _loc14_++;
            }
            this.§5214238314238327123423632234§.correctNonintegralValues();
         }
         else
         {
            _loc20_.beginFill(611072,1);
            _loc20_.lineStyle(1,5898034,1);
            _loc20_.drawRoundRect(0.5,0.5,this.§5214232930232943123423632234§.width - 1,61,6,6);
            _loc20_.endFill();
            this.hideModTable();
         }
         if(§521423120472312060123423632234§.isGivenPresent(param1))
         {
            this.§52142351123524123423632234§.visible = true;
            this.§52142351123524123423632234§.enabled = true;
            this.§super use break§.visible = false;
            this.§null package var§.visible = false;
         }
         else
         {
            this.§52142351123524123423632234§.visible = false;
            if(param2)
            {
               this.§super use break§.visible = true;
               this.§null package var§.visible = false;
            }
            else if(this.§5214238588238601123423632234§ == ItemCategoryEnum.INVENTORY)
            {
               this.§super use break§.visible = true;
               this.§null package var§.visible = false;
            }
            else
            {
               this.§super use break§.visible = false;
               if(this.§5214238588238601123423632234§ == ItemCategoryEnum.PLUGIN || this.§5214238588238601123423632234§ == ItemCategoryEnum.EMBLEM)
               {
                  this.§null package var§.visible = false;
               }
               else
               {
                  this.§null package var§.visible = true;
                  if(this.§5214238588238601123423632234§ == ItemCategoryEnum.ARMOR || this.§5214238588238601123423632234§ == ItemCategoryEnum.WEAPON)
                  {
                     this.§super use break§.visible = §521423120472312060123423632234§.getModificationIndex(param1) < 3 && _loc21_.length > 1;
                  }
               }
            }
         }
         if(this.§super use break§.visible)
         {
            _loc27_ = e20b458(§52142329523308123423632234§.rank,§521423120472312060123423632234§.getMinRankIndex(param1),§521423120472312060123423632234§.getMaxRankIndex(param1));
            _loc25_ = 1;
            if(this.isCountable)
            {
               this.§521423112092311222123423632234§.visible = true;
               _loc5_ = Math.min(9999,Math.floor(§var var finally§.crystal / this.§5214238611238624123423632234§));
               if(_loc27_ > 0)
               {
                  if(_loc5_ > 0)
                  {
                     this.§521423112092311222123423632234§.enabled = true;
                     this.§521423112092311222123423632234§.alpha = 1;
                  }
                  else
                  {
                     this.§521423112092311222123423632234§.enabled = false;
                     this.§521423112092311222123423632234§.alpha = 0.7;
                  }
               }
               else
               {
                  this.§521423112092311222123423632234§.enabled = false;
                  this.§521423112092311222123423632234§.alpha = 0.7;
                  this.§521423112092311222123423632234§.value = 1;
               }
               _loc23_ = §521423120472312060123423632234§.getPrice(param1);
               _loc22_ = §521423120472312060123423632234§.getDiscount(param1);
               _loc25_ = this.§521423112092311222123423632234§.value;
            }
            else if(!param2 && §521423120472312060123423632234§.isModificationItem(param1))
            {
               this.§521423112092311222123423632234§.visible = false;
               this.§521423112092311222123423632234§.enabled = false;
               _loc4_ = §521423120472312060123423632234§.getNextModification(param1);
               _loc23_ = §521423120472312060123423632234§.getPrice(_loc4_);
               _loc22_ = §521423120472312060123423632234§.getDiscount(_loc4_);
               _loc3_ = §521423120472312060123423632234§.getMinRankIndex(_loc4_);
               _loc27_ = §52142329523308123423632234§.rank >= _loc3_ ? _loc3_ : int(-_loc3_);
            }
            else
            {
               _loc23_ = §521423120472312060123423632234§.getPrice(param1);
               _loc22_ = §521423120472312060123423632234§.getDiscount(param1);
               this.§521423112092311222123423632234§.visible = false;
               this.§521423112092311222123423632234§.enabled = false;
            }
            this.§super use break§.setInfo(_loc23_,_loc25_,_loc27_,§521423120472312060123423632234§.isPremiumItem(param1));
         }
         else
         {
            this.§521423112092311222123423632234§.visible = false;
         }
         this.f56dd5ff();
         this.b56452a2();
         this.updateEquipButton();
         if(this.§5214238588238601123423632234§ == ItemCategoryEnum.PLUGIN && !param2)
         {
            if(!this.§521423125772312590123423632234§.contains(this.§521423116172311630123423632234§))
            {
               this.§521423125772312590123423632234§.addChild(this.§521423116172311630123423632234§);
            }
            this.f18118be(§catch§(param1.adapt(§catch§)).getStopDate());
         }
         else if(this.§521423125772312590123423632234§.contains(this.§521423116172311630123423632234§))
         {
            this.§521423125772312590123423632234§.removeChild(this.§521423116172311630123423632234§);
         }
         var _loc11_:Boolean = !param1.hasModel(§while catch throw§);
         this.§521423125992312612123423632234§.visible = !param1.hasModel(§while catch throw§);
         if(!_loc11_)
         {
            _loc13_ = §while catch throw§(param1.event(§while catch throw§));
            _loc13_.updateActionElements(this.§const var var§);
         }
      }
      
      public function onLoadingComplete(param1:§include catch each§) : void
      {
         if(this.§final package const§ == param1.§5214239618239631123423632234§.id)
         {
            if(!this.isKit && !§521423120472312060123423632234§.isGivenPresent(this.item))
            {
               this.§while var native§.bitmapData = §include catch with§(param1).data;
               this.resize(this.size.x,this.size.y);
            }
         }
         if(this.§get var continue§ == param1.§5214239618239631123423632234§.id)
         {
            this.§521423130842313097123423632234§.bitmapData = §include catch with§(param1).data;
            this.e459a8a0(this.§521423130842313097123423632234§);
            this.resize(this.size.x,this.size.y);
         }
         var _loc4_:§include catch each§;
         if(this.§null var extends§ == (_loc4_ = param1).§5214239618239631123423632234§.id)
         {
            if(this.isKit)
            {
               this.§throw set each§.bitmapData = §include catch with§(param1).data;
               this.e459a8a0(this.§throw set each§);
               this.§5214236110236123123423632234§.visible = true;
               this.resize(this.size.x,this.size.y);
            }
         }
         var _loc5_:§include catch each§;
         if(this.§null package include§ == (_loc5_ = param1).§5214239618239631123423632234§.id)
         {
            if(§521423120472312060123423632234§.isGivenPresent(this.item))
            {
               this.§continue switch case§.bitmapData = §include catch with§(param1).data;
               this.e459a8a0(this.§continue switch case§);
               this.resize(this.size.x,this.size.y);
            }
         }
      }
      
      private function e22ca6f7(param1:ItemGarageProperty) : void
      {
         this.§52142355623569123423632234§.start(this.d60768d1(param1));
      }
      
      private function a7424275() : void
      {
         ScrollStyleUtils.setGreenStyle(this.§continue package throw§);
      }
      
      private function c7441f2b(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = e20b458(§52142329523308123423632234§.rank,this.§5214234818234831123423632234§,this.§override catch extends§);
         var _loc4_:int = this.isCountable ? this.§521423112092311222123423632234§.value : 1;
         if(§var var finally§.crystal >= this.§5214238611238624123423632234§ * _loc4_)
         {
            _loc2_ = this.§5214238611238624123423632234§ * _loc4_;
         }
         else
         {
            _loc2_ = -this.§5214238611238624123423632234§ * _loc4_;
         }
         this.§super use break§.setInfo(§521423120472312060123423632234§.getPrice(this.item),_loc4_,_loc3_,§521423120472312060123423632234§.isPremiumItem(this.item));
         this.b56452a2();
      }
      
      private function b34b28a7(param1:Bitmap) : void
      {
         if(this.§throw set each§.height > 0)
         {
            param1.y += 10;
            this.§5214236110236123123423632234§.text = "-" + String(§521423120472312060123423632234§.getDiscount(this.item)) + "%";
            this.§5214236110236123123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
            this.§5214236110236123123423632234§.x = 302;
            this.§5214236110236123123423632234§.y = int(this.§5214234054234067123423632234§.height + 10) + 168;
            if(§5214236363236376123423632234§.language == "cn")
            {
               this.§5214236110236123123423632234§.x = 300;
            }
            if(!this.§521423125772312590123423632234§.contains(this.§5214236110236123123423632234§))
            {
               this.§521423125772312590123423632234§.addChild(this.§5214236110236123123423632234§);
            }
            else
            {
               this.§521423125772312590123423632234§.removeChild(this.§5214236110236123123423632234§);
               this.§521423125772312590123423632234§.addChild(this.§5214236110236123123423632234§);
            }
         }
      }
      
      private function d153811a(param1:§521423120252312038123423632234§) : void
      {
         if(!this.§521423125772312590123423632234§.contains(this.§else package package§))
         {
            this.§521423125772312590123423632234§.addChild(this.§else package package§);
         }
         if(!this.§521423125772312590123423632234§.contains(this.§521423102042310217123423632234§))
         {
            this.§521423125772312590123423632234§.addChild(this.§521423102042310217123423632234§);
         }
         this.§521423102042310217123423632234§.show(param1);
      }
      
      private function f18118be(param1:Date) : void
      {
         var _loc2_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc3_:String = null;
         if(isNaN(param1.date))
         {
            this.§521423116172311630123423632234§.text = " ";
         }
         else
         {
            _loc2_ = (param1.hours < 10 ? "0" + String(param1.hours) : String(param1.hours)) + ":" + (param1.minutes < 10 ? "0" + String(param1.minutes) : String(param1.minutes));
            _loc4_ = param1.month + 1 < 10 ? "0" + (String(param1.month + 1)) : String(param1.month + 1);
            _loc5_ = param1.date < 10 ? "0" + String(param1.date) : String(param1.date);
            if(§5214236363236376123423632234§.getText("GUI_LANG") == "ru")
            {
               _loc3_ = _loc5_ + "-" + _loc4_ + "-" + String(param1.fullYear);
            }
            else
            {
               _loc3_ = _loc4_ + "-" + _loc5_ + "-" + String(param1.fullYear);
            }
            this.§521423116172311630123423632234§.text = _loc2_ + "  " + _loc3_;
         }
         this.resize(this.size.x,this.size.y);
      }
      
      public function resize(param1:int, param2:int) : void
      {
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         _loc15_ = 6;
         var _loc13_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:ItemPropertyIcon = null;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         var _loc7_:* = undefined;
         var _loc6_:Graphics = null;
         this.§continue package throw§.update();
         this.size.x = param1;
         this.size.y = param2;
         this.window.width = param1;
         this.window.height = param2;
         this.§return const set§.width = param1 - 11 * 2;
         this.§return const set§.height = param2 - 11 - 64;
         this.§5214235189235202123423632234§.width = param1 - 11 * 2 - 2;
         this.§5214232930232943123423632234§.width = this.§5214235189235202123423632234§.width - 12 * 2;
         this.§521423137592313772123423632234§.x = 12 - 3;
         this.§521423137592313772123423632234§.width = this.§5214232930232943123423632234§.width;
         var _loc5_:int = int(this.§5214239348239361123423632234§.length);
         if(_loc5_ > 0)
         {
            _loc14_ = this.§5214232388232401123423632234§.y + this.§5214232388232401123423632234§.height + 9;
            _loc13_ = ItemInfoPanelBitmaps.armor.width * _loc5_ + 10 * (_loc5_ - 1);
            if(this.§521423125772312590123423632234§.contains(this.§5214238314238327123423632234§))
            {
               _loc13_ += this.§5214238314238327123423632234§.§521423128652312878123423632234§;
            }
            _loc9_ = Math.round((this.§5214232388232401123423632234§.width - _loc13_) * 0.5);
            if(this.§5214238588238601123423632234§ == ItemCategoryEnum.COLOR || this.§5214238588238601123423632234§ == ItemCategoryEnum.INVENTORY)
            {
               _loc10_ = 0;
               while(_loc10_ < _loc5_)
               {
                  _loc8_ = this.§5214239348239361123423632234§[_loc10_].icon;
                  _loc8_.x = _loc9_ + _loc10_ * (ItemInfoPanelBitmaps.armor.width + 10);
                  _loc8_.y = _loc15_;
                  _loc10_++;
               }
            }
            else
            {
               for each(_loc11_ in this.§5214238314238327123423632234§.§521423134292313442123423632234§)
               {
                  _loc11_.updatePositions();
               }
               _loc7_ = _loc11_.getPositions();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.length)
               {
                  _loc8_ = this.§5214239348239361123423632234§[_loc10_].icon;
                  _loc8_.x = _loc7_[_loc10_] - _loc8_.width / 2;
                  _loc8_.y = _loc15_;
                  _loc10_++;
               }
               this.§5214238314238327123423632234§.y = this.§5214232388232401123423632234§.y + _loc8_.height + 2;
            }
            this.§521423137592313772123423632234§.y = this.§5214232388232401123423632234§.y + this.§5214232388232401123423632234§.height + 9 - 4;
         }
         else
         {
            this.§521423137592313772123423632234§.y = this.§5214232930232943123423632234§.y + 24 - 7;
         }
         if(this.§throw set each§.bitmapData != null)
         {
            this.§throw set each§.y = this.§5214234054234067123423632234§.y + this.§5214234054234067123423632234§.height + 9 - 15;
            this.§throw set each§.x = this.§521423125772312590123423632234§.width - this.§throw set each§.width >> 1;
            this.§521423137592313772123423632234§.y += this.§throw set each§.bitmapData.height + 9 - 15;
         }
         if(this.§continue switch case§.bitmapData != null)
         {
            this.§continue switch case§.y = this.§5214234054234067123423632234§.y + this.§5214234054234067123423632234§.height + 9 - 15;
            this.§continue switch case§.x = this.§521423125772312590123423632234§.width - this.§continue switch case§.width >> 1;
            this.§521423137592313772123423632234§.y += this.§continue switch case§.bitmapData.height + 9 - 15;
         }
         var _loc4_:int = _loc14_ += 9 + this.§521423137592313772123423632234§.textHeight - 4;
         var _loc3_:Boolean = this.§while var native§.bitmapData != null;
         if(this.§while var native§.bitmapData != null)
         {
            this.§while var native§.x = 0;
            if(_loc5_ > 0)
            {
               this.§while var native§.y = this.§5214232388232401123423632234§.y + this.§5214232388232401123423632234§.height + 9;
            }
            else
            {
               this.§while var native§.y = this.§5214232930232943123423632234§.y + 24;
            }
            this.§521423137592313772123423632234§.x = this.§while var native§.x + this.§while var native§.width + 0 - 3;
            this.§521423137592313772123423632234§.width = this.§5214232930232943123423632234§.width - this.§521423137592313772123423632234§.x - 3;
            _loc14_ = Math.max(this.§521423137592313772123423632234§.y + 3 + this.§521423137592313772123423632234§.textHeight + 9,this.§while var native§.y + this.§while var native§.height + 9);
         }
         else
         {
            _loc14_ = this.§521423137592313772123423632234§.y + 3 + this.§521423137592313772123423632234§.textHeight + 9;
         }
         var _loc12_:int = Math.max(_loc14_,param2 - 11 - 64 - 2 - 3 * 2);
         this.§5214235189235202123423632234§.height = _loc12_;
         this.§5214232930232943123423632234§.height = this.§5214239405239418123423632234§.height - 9 * 2;
         if(_loc12_ > param2 - 11 - 64 - 2 - 3 * 2)
         {
            _loc3_ = false;
            this.§521423137592313772123423632234§.x = 12 - 3;
            this.§521423137592313772123423632234§.width = this.§5214232930232943123423632234§.width;
            _loc14_ = _loc4_;
            _loc12_ = Math.max(_loc14_,param2 - 11 - 64 - 2 - 3 * 2);
            this.§5214235189235202123423632234§.height = _loc12_;
            this.§5214232930232943123423632234§.height = this.§5214239405239418123423632234§.height - 9 * 2;
         }
         if(this.isKit)
         {
            this.b34b28a7(this.§throw set each§);
            this.§else package package§.y = this.§throw set each§.bitmapData != null && this.§521423125772312590123423632234§.contains(this.§throw set each§) ? int(this.§throw set each§.height + this.§5214234054234067123423632234§.height + 10 * 2) : int(this.§5214234054234067123423632234§.height) + 10;
            this.§521423102042310217123423632234§.y = this.§else package package§.y;
            this.§521423137592313772123423632234§.y = this.§else package package§.y + this.§521423102042310217123423632234§.getFullTableHeight() + 10;
            _loc6_ = this.§else package package§.graphics;
            _loc6_.clear();
            _loc6_.beginFill(611072,1);
            _loc6_.lineStyle(1,5898034,1);
            _loc6_.drawRoundRect(0.5,0.5,this.§5214232930232943123423632234§.width - 1,this.§521423102042310217123423632234§.getFullTableHeight() + 4,6,6);
            _loc6_.drawRect(0.5,this.§521423102042310217123423632234§.getTopPartTableHeight() + 6,this.§5214232930232943123423632234§.width - 1,0);
            _loc6_.endFill();
         }
         if(Boolean(this.item) && §521423120472312060123423632234§.isGivenPresent(this.item))
         {
            this.§521423129862312999123423632234§.y = this.§continue switch case§.bitmapData != null && this.§521423125772312590123423632234§.contains(this.§continue switch case§) ? this.§continue switch case§.height + this.§5214234054234067123423632234§.height + 20 : this.§5214234054234067123423632234§.height + 10;
            this.§521423129862312999123423632234§.setMessageWidth(this.§5214232930232943123423632234§.width);
         }
         this.§5214239405239418123423632234§.graphics.clear();
         this.§5214239405239418123423632234§.graphics.beginFill(16711680,0);
         this.§5214239405239418123423632234§.graphics.drawRect(this.§5214235189235202123423632234§.x,this.§5214235189235202123423632234§.y,this.§5214235189235202123423632234§.width,this.§5214235189235202123423632234§.height);
         if(_loc3_)
         {
            if(this.item != null && this.§while var native§ != null && this.§while var native§.parent == null)
            {
               this.e459a8a0(this.§while var native§);
            }
         }
         else
         {
            removeDisplayObject(this.§while var native§);
         }
         this.§const var var§.y = this.size.y - 11 - §5214235128235141123423632234§.y + 1;
         this.b56452a2();
         this.§continue package throw§.setSize(param1 - 11 * 2 - 2 + 6,param2 - 11 - 64 - 2 - 3 * 2);
         this.§continue package throw§.update();
         if(this.§521423125772312590123423632234§.contains(this.§521423116172311630123423632234§))
         {
            this.§521423116172311630123423632234§.x = this.§5214232930232943123423632234§.x + this.§5214232930232943123423632234§.width - this.§521423116172311630123423632234§.width + 3;
            this.§521423116172311630123423632234§.y = this.§5214232930232943123423632234§.y - 7;
         }
      }
      
      private function c574103e() : void
      {
         var _loc1_:ItemPropertyParams = null;
         for each(_loc1_ in this.§5214239348239361123423632234§)
         {
            if(!this.§5214232388232401123423632234§.contains(_loc1_.icon))
            {
               this.§5214232388232401123423632234§.addChild(_loc1_.icon);
            }
         }
      }
      
      private function d36f3cb3(param1:Boolean, param2:§521423120252312038123423632234§, param3:§521423120252312038123423632234§) : void
      {
         if(param1 && §521423120472312060123423632234§.getCategory(param3) == ItemCategoryEnum.COLOR && !§return set get§.isInBattle())
         {
            this.§5214236445236458123423632234§.visible = true;
            if(param2 != param3)
            {
               this.§5214236445236458123423632234§.enabled = true;
            }
         }
         else
         {
            this.§5214236445236458123423632234§.visible = false;
         }
      }
   }
}

