package §5214236785236798123423632234§
{
   import alternativa.tanks.service.fps.FPSService;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.GlowFilter;
   
   public class GlowEffect extends EventDispatcher
   {
      
      private static const §catch use§:Number = 1.25;
      
      public static var §521423130032313016123423632234§:FPSService;
      
      private var §super package return§:Number;
      
      private var §for var true§:int;
      
      private var §5214236043236056123423632234§:Number;
      
      public function GlowEffect()
      {
         super();
      }
      
      public static function glow(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:GlowEffect = new GlowEffect();
         _loc3_.glow(param1,param2);
      }
      
      private function b53f783f(param1:Event) : void
      {
         var _loc3_:DisplayObject = param1.target as DisplayObject;
         var _loc2_:GlowFilter = new GlowFilter(this.§for var true§,this.§super package return§,6,6,4,1,false);
         _loc3_.filters = [_loc2_];
         this.§super package return§ -= this.§5214236043236056123423632234§;
         if(this.§super package return§ < 0)
         {
            _loc3_.filters = [];
            _loc3_.removeEventListener("enterFrame",this.b53f783f);
            dispatchEvent(new Event("complete"));
         }
      }
      
      public function glow(param1:DisplayObject, param2:uint) : void
      {
         this.§super package return§ = param1.alpha;
         this.§for var true§ = param2;
         this.§5214236043236056123423632234§ = 1 / (1.25 * §521423130032313016123423632234§.getFps());
         param1.addEventListener("enterFrame",this.b53f783f);
      }
   }
}

