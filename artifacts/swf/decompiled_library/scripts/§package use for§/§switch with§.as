package §package use for§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.DisplayObject;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §switch with§ extends DiscreteSprite
   {
      
      private var §final var class§:int;
      
      protected var §continue package set§:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §switch with§()
      {
         super();
      }
      
      protected function §5214234644234657123423632234§(param1:int, param2:DisplayObject) : void
      {
      }
      
      protected function §import use dynamic§(param1:DisplayObject) : int
      {
         return int(param1 is §5214237555237568123423632234§ ? param1.width - 10 : param1.width);
      }
      
      protected function §else package include§(param1:DisplayObject) : void
      {
      }
      
      public function §521423111252311138123423632234§() : Vector.<DisplayObject>
      {
         return this.§continue package set§;
      }
      
      public function §finally catch true§() : int
      {
         return this.§final var class§;
      }
      
      public function §521423118742311887123423632234§(param1:int) : void
      {
         this.§final var class§ = param1;
      }
      
      public function addItem(param1:DisplayObject) : void
      {
         addChild(param1);
         this.§continue package set§[§continue package set§.length] = param1;
         this.§else package include§(param1);
      }
      
      public function §const set implements§() : int
      {
         return this.§continue package set§.length;
      }
      
      public function §521423122662312279123423632234§(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:int = this.§continue package set§.indexOf(param1);
         if(_loc2_ < 0)
         {
            return null;
         }
         try
         {
            removeChild(param1);
         }
         catch(e:ArgumentError)
         {
            return null;
         }
         this.§continue package set§.removeAt(_loc2_);
         this.§5214234644234657123423632234§(_loc2_,param1);
         return param1;
      }
   }
}

