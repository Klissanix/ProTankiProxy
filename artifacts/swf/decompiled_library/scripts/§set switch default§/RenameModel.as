package §set switch default§
{
   import §521423110462311059123423632234§.§while catch throw§;
   import §5214238076238089123423632234§.RenameModelBase;
   import §5214238076238089123423632234§.§if const else§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.money.IMoneyService;
   import §continue set while§.SingleActionPanel;
   import flash.display.DisplayObjectContainer;
   import flash.net.SharedObject;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class RenameModel extends RenameModelBase implements §if const else§, §while catch throw§, §do set function§, §throw catch var§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §break use do§:IAlertService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §var var finally§:IMoneyService;
      
      public static var §521423120472312060123423632234§:ItemService;
      
      private var item:§521423120252312038123423632234§;
      
      private var §5214232372232385123423632234§:RenameForm;
      
      public function RenameModel()
      {
         super();
      }
      
      public static function isWhitespace(param1:String) : Boolean
      {
         switch(param1)
         {
            case " ":
            case "\t":
            case "\r":
            case "\n":
            case "\f":
               break;
            default:
               return false;
         }
         return true;
      }
      
      public static function trim(param1:String) : String
      {
         if(param1 == null)
         {
            return "";
         }
         var _loc2_:int = 0;
         while(isWhitespace(param1.charAt(_loc2_)))
         {
            _loc2_++;
         }
         var _loc3_:int = param1.length - 1;
         while(isWhitespace(param1.charAt(_loc3_)))
         {
            _loc3_--;
         }
         if(_loc3_ >= _loc2_)
         {
            return param1.slice(_loc2_,_loc3_ + 1);
         }
         return "";
      }
      
      public function handleDoubleClickOnItemPreview() : void
      {
         if(!§var var finally§.checkEnough(§521423120472312060123423632234§.getPrice(this.item)))
         {
            return;
         }
         if(!this.§5214232372232385123423632234§)
         {
            this.§5214232372232385123423632234§ = new RenameForm(true);
            this.§5214232372232385123423632234§.addEventListener("REANAME_EVENT",this.d69a0bf4);
         }
         this.§5214232372232385123423632234§.show();
      }
      
      public function renameFail() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("RENAME_FAILED_ALERT"));
      }
      
      private function d69a0bf4(param1:RenameEvent) : void
      {
         server.rename(param1.getNickname());
         this.§5214232372232385123423632234§.close();
      }
      
      public function objectUnloaded() : void
      {
         if(this.§5214232372232385123423632234§)
         {
            this.§5214232372232385123423632234§.removeEventListener("REANAME_EVENT",this.d69a0bf4);
            this.§5214232372232385123423632234§.dispose();
            this.§5214232372232385123423632234§ = null;
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:SingleActionPanel = new SingleActionPanel(§5214236363236376123423632234§.getText("RENAME_BUTTON_LABEL_IN_GARAGE"),getFunctionWrapper(this.handleDoubleClickOnItemPreview));
         putData(SingleActionPanel,_loc1_);
         this.item = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
      }
      
      public function renameSuccessfull(param1:String, param2:String) : void
      {
         this.c22f2351(param1,param2);
      }
      
      private function c22f2351(param1:String, param2:String) : void
      {
         var _loc3_:SharedObject = §if catch include§.getStorage();
         var _loc4_:String = trim(_loc3_.data.userName);
         if(_loc4_.length != 0 && _loc4_ == param1)
         {
            _loc3_.data.userName = param2;
            _loc3_.flush();
         }
      }
      
      public function updateActionElements(param1:DisplayObjectContainer) : void
      {
         var _loc2_:SingleActionPanel = SingleActionPanel(getData(SingleActionPanel));
         _loc2_.updateActionElements(param1);
      }
   }
}

