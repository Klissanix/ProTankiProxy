package §5214238161238174123423632234§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   
   internal class Message
   {
      
      private static const §5214234414234427123423632234§:int = 500;
      
      private static const §finally package throw§:int = 700;
      
      private static const §5214236707236720123423632234§:int = 2000;
      
      private static const §5214236400236413123423632234§:int = 10000;
      
      private static const §52142322523238123423632234§:Number = 0.6;
      
      private const §5214231846231859123423632234§:int = 18;
      
      private var §5214237159237172123423632234§:Vector.<§throw set class§>;
      
      private var §5214239433239446123423632234§:Vector.<§throw set class§>;
      
      public var §do set const§:Boolean;
      
      private var label:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      private var §implements catch break§:Vector.<§throw set class§>;
      
      private var §5214234008234021123423632234§:int;
      
      public function Message()
      {
         super();
         this.§5214237159237172123423632234§ = new <§throw set class§>[new StateAlpha(this,500,0,1),new StateNormal(2000),new StateAlpha(this,700,1,0.6),new StateNormal(10000),new StateAlpha(this,700,0.6,0)];
         this.§5214239433239446123423632234§ = new <§throw set class§>[new StateAlpha(this,700,1,0.6),new StateNormal(10000),new StateAlpha(this,700,0.6,0)];
         this.label.§521423102842310297123423632234§ = 18;
         this.label.bold = true;
      }
      
      public function getLabel() : §5214238529238542123423632234§
      {
         return this.label;
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.label.alpha = param1;
      }
      
      public function init() : void
      {
         this.§do set const§ = false;
         this.§5214234008234021123423632234§ = 0;
         this.§implements catch break§ = this.§5214237159237172123423632234§;
         var _loc1_:§throw set class§ = this.§implements catch break§[0];
         _loc1_.init();
      }
      
      public function initWithDuration(param1:int) : void
      {
         this.§do set const§ = false;
         this.§5214234008234021123423632234§ = 0;
         this.§implements catch break§ = this.§5214239433239446123423632234§;
         var _loc2_:§throw set class§ = this.§implements catch break§[1];
         _loc2_.setDurationInMs(param1);
         var _loc3_:§throw set class§ = this.§implements catch break§[0];
         _loc3_.init();
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§throw set class§ = null;
         var _loc3_:§throw set class§ = null;
         if(!this.§do set const§)
         {
            _loc2_ = this.§implements catch break§[this.§5214234008234021123423632234§];
            if(!_loc2_.update(param1))
            {
               if(++this.§5214234008234021123423632234§ == this.§implements catch break§.length)
               {
                  this.§do set const§ = true;
               }
               else
               {
                  _loc3_ = this.§implements catch break§[this.§5214234008234021123423632234§];
                  _loc3_.init();
               }
            }
         }
      }
   }
}

