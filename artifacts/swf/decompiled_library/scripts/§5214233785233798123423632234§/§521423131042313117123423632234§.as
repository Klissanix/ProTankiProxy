package §5214233785233798123423632234§
{
   import §521423107782310791123423632234§.§while for set§;
   import utils.tweener.TweenLite;
   
   public class §521423131042313117123423632234§ extends §while for set§
   {
      
      private static const §const set use§:int = 0;
      
      private static const §5214231788231801123423632234§:int = 1;
      
      private static const §if for implements§:int = 2;
      
      private static const §521423123212312334123423632234§:int = 3;
      
      public var §5214231114231127123423632234§:Number;
      
      private var §package package var§:int = -1;
      
      public function §521423131042313117123423632234§()
      {
         super();
         this.§5214232307232320123423632234§();
      }
      
      public function §try set class§() : void
      {
         this.§5214231007231020123423632234§(2);
      }
      
      private function §5214234409234422123423632234§(param1:Boolean) : void
      {
         visible = param1;
         if(!visible)
         {
            gotoAndStop(this.§package package var§);
            if(this.§package package var§ != 0)
            {
               visible = true;
               if(this.§5214231114231127123423632234§ > 0)
               {
                  alpha = 0;
                  TweenLite.to(this,this.§5214231114231127123423632234§,{"alpha":1});
               }
            }
         }
      }
      
      public function §5214232307232320123423632234§() : void
      {
         this.§5214231007231020123423632234§(0);
      }
      
      private function §5214231007231020123423632234§(param1:int) : void
      {
         if(this.§package package var§ != param1)
         {
            this.§package package var§ = param1;
            if(this.§5214231114231127123423632234§ > 0)
            {
               TweenLite.to(this,this.§5214231114231127123423632234§,{
                  "alpha":0,
                  "onComplete":this.§5214234409234422123423632234§,
                  "onCompleteParams":[false]
               });
            }
            else
            {
               this.§5214234409234422123423632234§(false);
            }
         }
      }
      
      public function §5214235877235890123423632234§() : void
      {
         this.§5214231007231020123423632234§(3);
      }
      
      public function §5214233289233302123423632234§() : void
      {
         this.§5214231007231020123423632234§(1);
      }
   }
}

