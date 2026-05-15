package §5214239706239719123423632234§
{
   import §5214231473231486123423632234§.§521423121112312124123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §import implements§.§52142357723590123423632234§;
   
   public class §5214236901236914123423632234§ extends Sprite
   {
      
      protected var §5214235191235204123423632234§:Vector.<Number>;
      
      protected var §5214237851237864123423632234§:int = 100;
      
      public function §5214236901236914123423632234§(param1:Boolean, param2:Boolean = false)
      {
         var _loc4_:DisplayObject = null;
         this.§5214235191235204123423632234§ = new Vector.<Number>();
         super();
         var _loc5_:int = int(§52142357723590123423632234§.§521423116452311658123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            if(param1)
            {
               if(param2)
               {
                  _loc4_ = new §5214237397237410123423632234§();
               }
               else
               {
                  _loc4_ = new §get set static§();
               }
            }
            else if(param2)
            {
               _loc4_ = new §include package each§();
            }
            else
            {
               _loc4_ = new §for package try§();
            }
            addChild(_loc4_);
            _loc3_++;
         }
         this.resize();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc1_:DisplayObject = null;
         if(§521423121112312124123423632234§.§dynamic var false§)
         {
            this.§5214235191235204123423632234§ = Vector.<Number>([0,this.§5214237851237864123423632234§ - 224,this.§5214237851237864123423632234§ - 1]);
         }
         else
         {
            this.§5214235191235204123423632234§ = Vector.<Number>([0,this.§5214237851237864123423632234§ - 233,this.§5214237851237864123423632234§ - 1]);
         }
         var _loc2_:int = int(§52142357723590123423632234§.§521423116452311658123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_) as DisplayObject;
            _loc1_.width = this.§5214235191235204123423632234§[_loc3_ + 1] - this.§5214235191235204123423632234§[_loc3_] - 2;
            _loc1_.height = 18;
            _loc1_.x = this.§5214235191235204123423632234§[_loc3_];
            _loc3_++;
         }
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this.§5214237851237864123423632234§ - 1,18);
         graphics.endFill();
      }
   }
}

