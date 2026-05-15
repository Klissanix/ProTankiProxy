package §5214237922237935123423632234§
{
   import flash.display.Sprite;
   import §set package throw§.ComboListOverState;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214236923236936123423632234§ extends Sprite
   {
      
      public static const §return switch if§:int = 20;
      
      public static const §52142321223225123423632234§:int = 3;
      
      private var §5214232654232667123423632234§:String;
      
      private var §5214233845233858123423632234§:int;
      
      private var §5214237851237864123423632234§:int;
      
      private var §null for import§:ComboListOverState;
      
      public function §5214236923236936123423632234§(param1:int, param2:int, param3:String)
      {
         super();
         this.§5214237851237864123423632234§ = param1;
         this.§5214233845233858123423632234§ = param2;
         this.§5214232654232667123423632234§ = param3;
         this.init();
      }
      
      public function get §521423101872310200123423632234§() : int
      {
         return this.§5214233845233858123423632234§;
      }
      
      public function §default catch for§(param1:Boolean) : void
      {
         this.§null for import§.visible = param1;
      }
      
      private function init() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this.§5214237851237864123423632234§,20);
         graphics.endFill();
         this.§null for import§ = new ComboListOverState();
         this.§null for import§.width = this.§5214237851237864123423632234§ - 3 * 2;
         this.§null for import§.height = 20;
         this.§null for import§.x = 3;
         addChild(this.§null for import§);
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         addChild(_loc1_);
         _loc1_.text = this.§5214232654232667123423632234§;
         _loc1_.x = 6;
         this.§default catch for§(false);
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
   }
}

