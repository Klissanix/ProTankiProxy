package alternativa.osgi.service.locale
{
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class LocaleService implements ILocaleService
   {
      
      private var §5214239495239508123423632234§:Object;
      
      private var images:Object;
      
      private var §5214232356232369123423632234§:Object;
      
      private var §each else§:Object;
      
      private var §include function§:Object;
      
      private var §521423127342312747123423632234§:String;
      
      private var §5214234694234707123423632234§:String;
      
      public function LocaleService(param1:String, param2:String)
      {
         super();
         this.images = {};
         this.§5214232356232369123423632234§ = {};
         this.§each else§ = {};
         this.§include function§ = {};
         this.§521423127342312747123423632234§ = param1;
         this.§5214234694234707123423632234§ = param2;
         this.§5214239495239508123423632234§ = new Dictionary();
         this.images = new Dictionary();
      }
      
      public function getInt(param1:String) : int
      {
         return this.§include function§[param1];
      }
      
      public function getBoolean(param1:String) : Boolean
      {
         return this.§5214232356232369123423632234§[param1];
      }
      
      public function setText(param1:String, param2:String) : void
      {
         this.§5214239495239508123423632234§[param1] = param2;
      }
      
      public function get defaultLanguage() : String
      {
         return this.§5214234694234707123423632234§;
      }
      
      public function setImage(param1:String, param2:BitmapData) : void
      {
         this.images[param1] = param2;
      }
      
      public function getText(param1:String, ... rest) : String
      {
         var _loc3_:int = 0;
         var _loc4_:String = this.§5214239495239508123423632234§[param1];
         if(_loc4_ == null)
         {
            return param1;
         }
         while(_loc3_ < rest.length)
         {
            _loc4_ = _loc4_.replace("%" + (_loc3_ + 1),rest[_loc3_]);
            _loc3_++;
         }
         return _loc4_;
      }
      
      public function setInt(param1:String, param2:int) : void
      {
         this.§include function§[param1] = param2;
      }
      
      public function getImage(param1:String) : BitmapData
      {
         return this.images[param1];
      }
      
      public function setNumber(param1:String, param2:Number) : void
      {
         this.§each else§[param1] = param2;
      }
      
      public function get language() : String
      {
         return this.§521423127342312747123423632234§;
      }
      
      public function getNumber(param1:String) : Number
      {
         return this.§each else§[param1];
      }
      
      public function setBoolean(param1:String, param2:Boolean) : void
      {
         this.§5214232356232369123423632234§[param1] = param2;
      }
   }
}

