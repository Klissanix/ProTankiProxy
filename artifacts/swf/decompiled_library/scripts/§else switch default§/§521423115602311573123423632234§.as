package §else switch default§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Shadow;
   import §finally catch with§.§throw for continue§;
   import flash.utils.Dictionary;
   
   public class §521423115602311573123423632234§
   {
      
      private static const §52142353523548123423632234§:Number = 7000;
      
      private static const §extends set import§:Number = 4000;
      
      private static const §finally package§:Number = 2000;
      
      private static const §implements var true§:Number = 1000;
      
      private static const §import super§:Number = 0.01;
      
      private static const §521423131502313163123423632234§:Number = 60;
      
      private static const §5214236647236660123423632234§:Number = 20;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private const §import use each§:Dictionary = new Dictionary();
      
      private var §5214237822237835123423632234§:Number = 4000;
      
      private var §5214234992235005123423632234§:Number = 7000;
      
      private var enabled:Boolean;
      
      private var color:int;
      
      private var §set package const§:Number = 0.85;
      
      public function §521423115602311573123423632234§(param1:Camera3D)
      {
         super();
         this.§5214239291239304123423632234§ = param1;
      }
      
      public function §super switch default§(param1:Number) : void
      {
         this.§5214235275235288123423632234§(param1);
         this.§switch var static§();
      }
      
      public function disable() : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            for(var _loc1_ in this.§import use each§)
            {
               this.§5214239291239304123423632234§.removeShadow(_loc1_);
            }
         }
      }
      
      public function §5214238820238833123423632234§(param1:Shadow) : void
      {
         param1.color = this.color;
         param1.alpha = this.§set package const§;
         param1.nearDistance = this.§5214237822237835123423632234§;
         param1.farDistance = this.§5214234992235005123423632234§;
         this.§import use each§[param1] = true;
         if(this.enabled)
         {
            this.§5214239291239304123423632234§.addShadow(param1);
         }
      }
      
      private function §switch var static§() : void
      {
         for(var _loc1_ in this.§import use each§)
         {
            _loc1_.nearDistance = this.§5214237822237835123423632234§;
            _loc1_.farDistance = this.§5214234992235005123423632234§;
         }
      }
      
      private function §5214235275235288123423632234§(param1:Number) : void
      {
         var _loc3_:Number = §throw for continue§.§52142393423947123423632234§((param1 - 20) / (60 - 20),0,1);
         var _loc4_:Number = 1000 + _loc3_ * (4000 - 1000);
         this.§5214237822237835123423632234§ += (_loc4_ - this.§5214237822237835123423632234§) * 0.01;
         var _loc2_:Number = 2000 + _loc3_ * (7000 - 2000);
         this.§5214234992235005123423632234§ += (_loc2_ - this.§5214234992235005123423632234§) * 0.01;
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            for(var _loc1_ in this.§import use each§)
            {
               this.§5214239291239304123423632234§.addShadow(_loc1_);
            }
         }
      }
      
      public function §while use get§(param1:Shadow) : void
      {
         delete this.§import use each§[param1];
         if(this.enabled)
         {
            this.§5214239291239304123423632234§.removeShadow(param1);
         }
      }
      
      public function §5214236262236275123423632234§(param1:int) : void
      {
         this.color = param1;
      }
   }
}

