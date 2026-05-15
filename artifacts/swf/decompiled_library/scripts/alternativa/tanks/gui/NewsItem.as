package alternativa.tanks.gui
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.net.URLRequest;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class NewsItem extends Sprite
   {
      
      private var §break const function§:§5214231141231154123423632234§;
      
      private var §break for var§:§5214231141231154123423632234§;
      
      public function NewsItem(param1:String, param2:String, param3:String)
      {
         super();
         var _loc6_:Sprite = new Sprite();
         _loc6_.graphics.beginFill(0,0);
         _loc6_.graphics.drawRect(0,0,10,100);
         _loc6_.graphics.endFill();
         _loc6_.y = y;
         addChild(_loc6_);
         var _loc4_:Loader = new Loader();
         var _loc5_:URLRequest = new URLRequest(param1);
         _loc4_.load(_loc5_);
         addChild(_loc4_);
         _loc4_.x = 5;
         _loc4_.y = 20;
         this.§break const function§ = new §5214231141231154123423632234§();
         this.§break const function§.x = 90;
         this.§break const function§.y = 20;
         this.§break const function§.wordWrap = true;
         this.§break const function§.multiline = true;
         this.§break const function§.width = 350;
         this.§break const function§.htmlText = param2;
         this.§break const function§.color = 5898034;
         addChild(this.§break const function§);
         this.§break for var§ = new §5214231141231154123423632234§();
         this.§break for var§.x = 0;
         this.§break for var§.y = 0;
         this.§break for var§.text = param3;
         this.§break for var§.§521423102842310297123423632234§ = 10;
         this.§break for var§.color = 5898034;
         addChild(this.§break for var§);
      }
   }
}

