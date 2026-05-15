package §5214238161238174123423632234§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.osgi.service.display.Display;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   
   public class BattlefieldMessages extends Sprite
   {
      
      private const §5214233515233528123423632234§:int = 3;
      
      private const §do set dynamic§:int = 18;
      
      private var §else package true§:int;
      
      private var §class use implements§:Vector.<Message> = new Vector.<Message>();
      
      private var §extends package with§:int;
      
      private var §5214237399237412123423632234§:Vector.<Message> = new Vector.<Message>();
      
      public function BattlefieldMessages()
      {
         super();
         filters = [new GlowFilter(0,0.75,5 * Display.§521423132512313264123423632234§,5 * Display.§521423132512313264123423632234§)];
      }
      
      private function e2697498(param1:int) : void
      {
         var _loc2_:§5214238529238542123423632234§ = null;
         var _loc3_:Message = this.§class use implements§[param1];
         this.f6bcdc4c(_loc3_);
         var _loc4_:int = param1 + 1;
         while(_loc4_ < this.§else package true§)
         {
            _loc3_ = this.§class use implements§[int(_loc4_ - 1)] = this.§class use implements§[_loc4_];
            _loc2_ = _loc3_.getLabel();
            _loc2_.y -= 18;
            _loc4_++;
         }
         --this.§else package true§;
      }
      
      private function c6223344(param1:Message, param2:uint, param3:String) : void
      {
         var _loc4_:§5214238529238542123423632234§ = param1.getLabel();
         addChild(_loc4_);
         _loc4_.color = param2;
         _loc4_.text = param3;
         _loc4_.x = -0.5 * _loc4_.width;
         _loc4_.y = 18 * this.§else package true§;
         ++this.§else package true§;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:Message = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§else package true§)
         {
            _loc2_ = this.§class use implements§[_loc3_];
            if(_loc2_.§do set const§)
            {
               this.e2697498(_loc3_);
               _loc3_--;
            }
            else
            {
               _loc2_.update(param1);
            }
            _loc3_++;
         }
      }
      
      public function removeFromParent() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function ce14ed7() : Message
      {
         var _loc1_:Message = null;
         if(this.§extends package with§ == 0)
         {
            _loc1_ = new Message();
         }
         else
         {
            _loc1_ = this.§5214237399237412123423632234§[--this.§extends package with§];
            this.§5214237399237412123423632234§[this.§extends package with§] = null;
         }
         return _loc1_;
      }
      
      private function c7910f5() : void
      {
         if(this.§else package true§ == 3)
         {
            this.e2697498(0);
         }
      }
      
      private function f6bcdc4c(param1:Message) : void
      {
         removeChild(param1.getLabel());
         var _loc2_:this.§extends package with§ = this.§extends package with§++;
         this.§5214237399237412123423632234§[_loc2_] = param1;
      }
      
      public function addMessage(param1:uint, param2:String) : void
      {
         this.c7910f5();
         var _loc3_:Message = this.§class use implements§[this.§else package true§] = this.ce14ed7();
         _loc3_.init();
         this.c6223344(_loc3_,param1,param2);
      }
   }
}

