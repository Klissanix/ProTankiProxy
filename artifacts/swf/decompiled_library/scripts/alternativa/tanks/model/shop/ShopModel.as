package alternativa.tanks.model.shop
{
   import §521423113862311399123423632234§.§5214231607231620123423632234§;
   import §52142339423407123423632234§.§5214235404235417123423632234§;
   import §52142339423407123423632234§.§5214239590239603123423632234§;
   import §5214234291234304123423632234§.§function var implements§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.panel.IPanelView;
   import flash.events.Event;
   import §override package extends§.§521423113262311339123423632234§;
   import §override package extends§.§5214231382231395123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import scpacker.networking.Network;
   
   public class ShopModel
   {
      
      private var §5214236363236376123423632234§:ILocaleService;
      
      private var §default finally§:IDialogsService;
      
      private var §import use with§:IPanelView;
      
      private var §521423140132314026123423632234§:Network;
      
      private var window:ShopWindow;
      
      private var §implements for with§:§5214231382231395123423632234§;
      
      public function ShopModel()
      {
         super();
      }
      
      public function codeIsInvalid() : void
      {
         this.§implements for with§.§continue set var§();
      }
      
      private function c1b0dab9(param1:§function var implements§) : void
      {
         var _loc2_:String = this.window.header.§521423135762313589123423632234§.§521423130742313087123423632234§.code;
         if(param1.§5214235052235065123423632234§.indexOf("promo") != -1)
         {
            this.§implements for with§ = new §5214231382231395123423632234§();
            this.§implements for with§.addEventListener(§521423113262311339123423632234§.§5214239973239986123423632234§,this.f75e9518);
            this.window.method_2602(this.§implements for with§);
            return;
         }
         if(_loc2_.indexOf("RU") != -1)
         {
            this.§default finally§.addDialog(new PaymentMethodsWindow(param1.§5214235052235065123423632234§,this.send));
            return;
         }
         this.send(param1.§5214235052235065123423632234§,"");
      }
      
      public function codeActivated() : void
      {
         this.§implements for with§.§521423104422310455123423632234§();
      }
      
      private function c2697073(param1:String) : String
      {
         switch(param1)
         {
            case "ru":
            case "en":
               break;
            case "pt_BR":
               return param1;
            default:
               return param1.toUpperCase();
         }
         return param1.toUpperCase();
      }
      
      private function b35a7fd9(param1:Event) : void
      {
         this.§default finally§.removeDialog(this.window);
         this.§import use with§.getPanel().§521423117142311727123423632234§.§in switch if§(true);
         this.window = null;
      }
      
      private function send(param1:String, param2:String) : *
      {
         this.§521423140132314026123423632234§.send(new §5214239590239603123423632234§(param1,param2));
      }
      
      private function f75e9518(param1:§521423113262311339123423632234§) : void
      {
         this.§521423140132314026123423632234§.send(new §5214235404235417123423632234§(param1.§in set try§()));
      }
      
      public function init(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§5214236363236376123423632234§ = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
         this.§default finally§ = OSGi.getInstance().getService(IDialogsService) as IDialogsService;
         this.§import use with§ = IPanelView(OSGi.getInstance().getService(IPanelView));
         this.§521423140132314026123423632234§ = Network(OSGi.getInstance().getService(Network));
         ShopWindow.§52142358723600123423632234§ = _loc2_.have_double_crystals;
         this.window = new ShopWindow();
         var _loc3_:Object = JSON.parse(_loc2_.data);
         var _loc6_:String = this.c2697073(this.§5214236363236376123423632234§.language);
         var _loc5_:§5214231607231620123423632234§ = new §5214231607231620123423632234§();
         for each(_loc4_ in _loc3_.categories)
         {
            if(_loc4_.header_text[_loc6_] == null)
            {
               _loc6_ = _loc6_.toUpperCase();
            }
            _loc5_.§5214234002234015123423632234§(_loc4_.category_id,_loc4_.header_text[_loc6_],_loc4_.description[_loc6_]);
         }
         for each(_loc4_ in _loc3_.items)
         {
            this.window.addItem(_loc4_.category_id,_loc4_.item_id,_loc4_.additional_data,_loc5_);
         }
         this.window.method_2602(_loc5_);
         this.§import use with§.getPanel().§521423117142311727123423632234§.§in switch if§(false);
         this.window.addEventListener("ShopItemChosenEVENT",this.c1b0dab9);
         this.window.addEventListener("close",this.b35a7fd9);
      }
   }
}

