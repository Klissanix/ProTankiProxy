package §native set continue§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.UVFrame;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§override for default§;
   import §if var class§.§set catch use§;
   
   public class §finally switch while§ implements §override for default§
   {
      
      private static const §521423118532311866123423632234§:Number = 0.01;
      
      private static var §5214233695233708123423632234§:Class = §b520bg1_png$0761a722f1cc0c6cbd05fa2106ed46bc-233560978§;
      
      private var §set switch override§:§5214235140235153123423632234§;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private var §521423124922312505123423632234§:Vector.<§static switch if§>;
      
      private var §function const native§:int;
      
      private var §class null§:Number;
      
      private var §5214237586237599123423632234§:Number;
      
      private var §null set default§:Number;
      
      private var §default set throw§:§set catch use§;
      
      public function §finally switch while§(param1:§5214235140235153123423632234§, param2:int = 2200, param3:Number = 7000, param4:Number = 2400)
      {
         super();
         this.§set switch override§ = param1;
         this.§5214239291239304123423632234§ = param1.§while set for§();
         this.§function const native§ = param2;
         this.§class null§ = param3;
         this.§5214237586237599123423632234§ = param4;
         this.§null set default§ = §5214239291239304123423632234§.rotationY;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc6_:int = 0;
         var _loc2_:UVFrame = null;
         var _loc7_:§static switch if§ = null;
         if(§default set throw§ != null)
         {
            §default set throw§.destroy();
            §521423124922312505123423632234§.length = 0;
            §set switch override§.§521423129322312945123423632234§(this);
         }
         if(!param1)
         {
            return;
         }
         this.§default set throw§ = new §set catch use§();
         var _loc5_:Vector.<UVFrame> = new <UVFrame>[new UVFrame(0,0,0.5454545454545454,0.631578947368421),new UVFrame(0.5454545454545454,0.631578947368421,1,1),new UVFrame(0,0.631578947368421,0.3181818181818182,1)];
         var _loc4_:EffectsMaterialRegistry = EffectsMaterialRegistry(OSGi.getInstance().getService(EffectsMaterialRegistry));
         var _loc3_:TextureMaterial = _loc4_.getMaterial(new §5214233695233708123423632234§().bitmapData,false,false);
         this.§521423124922312505123423632234§ = new Vector.<§static switch if§>(§function const native§);
         _loc6_ = 0;
         while(_loc6_ < §function const native§)
         {
            _loc2_ = _loc5_[int(Math.random() * 3)];
            _loc7_ = new §static switch if§(_loc3_,§class null§,§5214237586237599123423632234§);
            _loc7_.topLeftU = _loc2_.topLeftU;
            _loc7_.topLeftV = _loc2_.topLeftV;
            _loc7_.bottomRightU = _loc2_.bottomRightU;
            _loc7_.bottomRightV = _loc2_.bottomRightV;
            _loc7_.reset(§5214239291239304123423632234§);
            §default set throw§.§5214239093239106123423632234§(_loc7_);
            §521423124922312505123423632234§[_loc6_] = _loc7_;
            _loc6_++;
         }
         §set switch override§.§5214231991232004123423632234§(this);
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§static switch if§ = null;
         var _loc3_:Boolean = false;
         var _loc6_:Number = §5214239291239304123423632234§.rotationY - §null set default§;
         if((_loc6_ > 0 ? _loc6_ : -_loc6_) >= 0.01)
         {
            _loc3_ = true;
            §null set default§ = §5214239291239304123423632234§.rotationY;
         }
         _loc4_ = 0;
         while(_loc4_ < §function const native§)
         {
            _loc5_ = §521423124922312505123423632234§[_loc4_];
            if(_loc3_)
            {
               _loc5_.reset(§5214239291239304123423632234§);
            }
            _loc5_.§521423120402312053123423632234§(param2,§5214239291239304123423632234§);
            _loc4_++;
         }
      }
   }
}

