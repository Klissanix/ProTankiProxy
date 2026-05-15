package §5214232607232620123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §521423133912313404123423632234§ extends DiscreteSprite
   {
      
      private static const §5214239635239648123423632234§:int = 100;
      
      private static const §if throw§:int = 30;
      
      private static const §5214236332236345123423632234§:int = 11;
      
      public static const §5214232374232387123423632234§:String = "LEFT";
      
      public static const §switch set override§:String = "RIGHT";
      
      private var §get const break§:Dictionary = new Dictionary();
      
      private var selected:§5214237085237098123423632234§;
      
      private var §native use super§:DiscreteSprite = new DiscreteSprite();
      
      private var §catch for catch§:DiscreteSprite = new DiscreteSprite();
      
      private var §5214231096231109123423632234§:int;
      
      private var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      private var §catch package else§:String;
      
      public function §521423133912313404123423632234§(param1:String = "LEFT")
      {
         super();
         this.§catch package else§ = param1;
         addChild(this.§native use super§);
         addChild(this.§catch for catch§);
         addEventListener("addedToStage",this.§class const var§);
         addEventListener("removedFromStage",this.§521423109452310958123423632234§);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §52142326923282123423632234§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         var _loc5_:* = undefined;
         this.§5214231096231109123423632234§ = this.width / (11 + 100);
         _loc4_ = 0;
         while(_loc4_ < this.§native use super§.numChildren)
         {
            _loc2_ = this.§native use super§.getChildAt(_loc4_);
            _loc2_.width = 100;
            _loc3_ = 11;
            if(_loc4_ + 1 > this.§5214231096231109123423632234§)
            {
               _loc3_ = 2 * 11 + _loc2_.height;
            }
            if(this.§catch package else§ == "LEFT")
            {
               _loc2_.x = 11 + _loc4_ % this.§5214231096231109123423632234§ * (_loc2_.width + 11);
            }
            else
            {
               _loc2_.x = this.width - _loc2_.width - 11 - _loc4_ % this.§5214231096231109123423632234§ * (_loc2_.width + 11);
            }
            _loc2_.y = _loc3_;
            _loc4_++;
         }
         this.§catch for catch§.y = 30 + 2 * 11;
         if(this.selected != null)
         {
            _loc5_ = this.§get const break§[this.selected];
            _loc5_.width = this.width;
            _loc5_.height = this.height - (30 + 2 * 11);
         }
      }
      
      public function §5214236239236252123423632234§(param1:int) : void
      {
         this.§5214234179234192123423632234§(§5214237085237098123423632234§(this.§native use super§.getChildAt(param1)));
      }
      
      private function §521423109452310958123423632234§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§52142326923282123423632234§);
      }
      
      private function §521423129282312941123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§5214237085237098123423632234§ = §5214237085237098123423632234§(param1.currentTarget);
         this.§5214234179234192123423632234§(_loc2_);
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§52142326923282123423632234§();
      }
      
      private function §5214234179234192123423632234§(param1:§5214237085237098123423632234§) : void
      {
         if(this.selected != null)
         {
            this.selected.enable = true;
            this.§catch for catch§.removeChild(this.§get const break§[this.selected]);
         }
         param1.enable = false;
         var _loc2_:DiscreteSprite = this.§get const break§[param1];
         this.§catch for catch§.addChild(_loc2_);
         this.selected = param1;
         this.§52142326923282123423632234§();
      }
      
      public function §5214238661238674123423632234§(param1:String, param2:DiscreteSprite, param3:Class) : Object
      {
         var _loc4_:§5214237085237098123423632234§ = new param3();
         _loc4_.label = param1;
         _loc4_.width = 100;
         _loc4_.addEventListener("click",this.§521423129282312941123423632234§);
         this.§native use super§.addChild(_loc4_);
         this.§get const break§[_loc4_] = param2;
         this.§52142326923282123423632234§();
         return _loc4_;
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      private function §class const var§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§();
      }
      
      public function destroy() : void
      {
         var _loc1_:DiscreteSprite = this.§get const break§[this.selected];
         if(this.§catch for catch§.contains(_loc1_))
         {
            this.§catch for catch§.removeChild(_loc1_);
         }
         if(this.§catch for catch§ != null && contains(this.§catch for catch§))
         {
            removeChild(this.§catch for catch§);
         }
         if(this.§native use super§ != null && contains(this.§native use super§))
         {
            removeChild(this.§native use super§);
         }
         _loc1_ = null;
      }
   }
}

