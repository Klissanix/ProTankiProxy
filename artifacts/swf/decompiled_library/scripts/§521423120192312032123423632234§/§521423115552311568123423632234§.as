package §521423120192312032123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import flash.utils.Dictionary;
   
   public class §521423115552311568123423632234§ implements §switch var final§
   {
      
      private var §catch switch function§:Object3DContainer;
      
      private const §5214237990238003123423632234§:Dictionary = new Dictionary();
      
      public function §521423115552311568123423632234§(param1:Object3DContainer = null)
      {
         super();
         this.§catch switch function§ = new Object3DContainer();
         this.§5214237200237213123423632234§(param1);
      }
      
      private function §override const extends§() : Vector.<Object3D>
      {
         var _loc1_:* = undefined;
         var _loc2_:Vector.<Object3D> = new Vector.<Object3D>();
         for(_loc1_ in this.§5214237990238003123423632234§)
         {
            delete this.§5214237990238003123423632234§[_loc1_];
            this.§catch switch function§.removeChild(_loc1_);
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
      
      public function §5214232791232804123423632234§(param1:Vector.<Object3D>) : void
      {
         var _loc2_:Object3D = null;
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         for each(_loc2_ in param1)
         {
            this.§5214237128237141123423632234§(_loc2_);
         }
      }
      
      public function §5214231752231765123423632234§(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(this.§5214237990238003123423632234§[param1])
         {
            delete this.§5214237990238003123423632234§[param1];
            this.§catch switch function§.removeChild(param1);
         }
      }
      
      public function §521423104392310452123423632234§(param1:Object3D, param2:int) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(!this.§5214237990238003123423632234§[param1])
         {
            this.§5214237990238003123423632234§[param1] = true;
            this.§catch switch function§.addChildAt(param1,param2);
         }
      }
      
      public function §5214237128237141123423632234§(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(!this.§5214237990238003123423632234§[param1])
         {
            this.§5214237990238003123423632234§[param1] = true;
            this.§catch switch function§.addChild(param1);
         }
      }
      
      public function §5214237200237213123423632234§(param1:Object3DContainer) : void
      {
         var _loc2_:Vector.<Object3D> = this.§override const extends§();
         this.§catch switch function§ = param1 || new Object3DContainer();
         this.§5214232791232804123423632234§(_loc2_);
      }
   }
}

