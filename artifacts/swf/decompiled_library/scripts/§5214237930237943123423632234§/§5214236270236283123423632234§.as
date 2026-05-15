package §5214237930237943123423632234§
{
   public class §5214236270236283123423632234§
   {
      
      private var §521423105922310605123423632234§:int;
      
      private var §function use var§:Class;
      
      private var §5214237990238003123423632234§:Vector.<Object> = new Vector.<Object>();
      
      public function §5214236270236283123423632234§(param1:Class)
      {
         super();
         this.§function use var§ = param1;
      }
      
      final public function §false set final§() : void
      {
         this.§5214237990238003123423632234§.length = 0;
         this.§521423105922310605123423632234§ = 0;
      }
      
      final public function §5214239690239703123423632234§(param1:Object) : void
      {
         if(this.§function use var§ != param1.constructor)
         {
            throw new ArgumentError();
         }
         this.§5214237990238003123423632234§[this.§521423105922310605123423632234§++] = param1;
      }
      
      final public function §52142349423507123423632234§() : Object
      {
         if(this.§521423105922310605123423632234§ == 0)
         {
            return new this.§function use var§(this);
         }
         var _loc1_:Object = this.§5214237990238003123423632234§[--this.§521423105922310605123423632234§];
         this.§5214237990238003123423632234§[this.§521423105922310605123423632234§] = null;
         return _loc1_;
      }
      
      final public function §package for return§() : int
      {
         return this.§521423105922310605123423632234§;
      }
   }
}

