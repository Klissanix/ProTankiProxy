package alternativa.tanks.service.chat
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class SharpLinksService implements ISharpLinksService
   {
      
      private var §521423126202312633123423632234§:Array;
      
      public function SharpLinksService()
      {
         super();
         this.b6b799c1();
      }
      
      public function replaceSharpLinks(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc3_:RegExp = null;
         var _loc2_:int = 0;
         var _loc4_:int = int(this.§521423126202312633123423632234§.length);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = this.§521423126202312633123423632234§[_loc5_][0];
            _loc2_ = param1.search(_loc3_);
            if(_loc2_ > -1)
            {
               param1 = param1.replace(_loc3_,"<u><a href=\'" + this.§521423126202312633123423632234§[_loc5_][2] + "\' target=\'_blank\'>" + this.§521423126202312633123423632234§[_loc5_][1] + "</a></u>");
            }
            _loc5_++;
         }
         return param1;
      }
      
      private function b6b799c1() : void
      {
         var _loc2_:int = 0;
         var _loc3_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.§521423126202312633123423632234§ = [_loc3_.getText("CHAT_SHARP_RULES").split("|"),_loc3_.getText("CHAT_SHARP_WIKI").split("|"),_loc3_.getText("CHAT_SHARP_TELEGRAM").split("|"),_loc3_.getText("CHAT_SHARP_YOUTUBE").split("|"),_loc3_.getText("CHAT_SHARP_VK").split("|"),"discord|Discord|https://discord.com/invite/protanki".split("|")];
         var _loc1_:int = int(this.§521423126202312633123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            this.§521423126202312633123423632234§[_loc2_][0] = new RegExp("#" + this.§521423126202312633123423632234§[_loc2_][0],"gi");
            _loc2_++;
         }
      }
   }
}

