package projects.tanks.clients.fp10.libraries.tanksservices.service.helper
{
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class Helper extends Sprite
   {
      
      public var id:int;
      
      public var groupKey:String;
      
      public var timer:HelperTimer;
      
      public var §5214238801238814123423632234§:int = 5000;
      
      public var §5214239532239545123423632234§:int = 0;
      
      protected var §5214231245231258123423632234§:int = -1;
      
      protected var _size:Point;
      
      protected var §5214234160234173123423632234§:Point;
      
      public function Helper()
      {
         super();
         this.§5214234160234173123423632234§ = new Point();
      }
      
      public function set targetPoint(param1:Point) : void
      {
         this.§5214234160234173123423632234§.x = param1.x;
         this.§5214234160234173123423632234§.y = param1.y;
      }
      
      public function get showLimit() : int
      {
         return this.§5214231245231258123423632234§;
      }
      
      public function align(param1:int, param2:int) : void
      {
      }
      
      public function get targetPoint() : Point
      {
         return this.§5214234160234173123423632234§;
      }
      
      public function draw(param1:Point) : void
      {
      }
      
      public function get size() : Point
      {
         return this._size;
      }
   }
}

