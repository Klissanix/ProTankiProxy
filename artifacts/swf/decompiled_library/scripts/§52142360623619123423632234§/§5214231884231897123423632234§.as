package §52142360623619123423632234§
{
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.core.Object3D;
   
   internal class §5214231884231897123423632234§ extends KDContainer
   {
      
      public static const §if use true§:int = 18;
      
      private var §521423101872310200123423632234§:String;
      
      private var §function var dynamic§:Vector.<Object3D> = new Vector.<Object3D>(0);
      
      public var §continue set break§:Boolean;
      
      public function §5214231884231897123423632234§(param1:int)
      {
         super();
         this.§521423101872310200123423632234§ = param1.toString();
         this.needCollectReceivers = false;
      }
      
      public function §5214236500236513123423632234§(param1:Object3D) : void
      {
         this.§function var dynamic§.removeAt(this.§function var dynamic§.indexOf(param1));
         §continue set break§ = true;
         if(§5214231699231712123423632234§.§52142321323226123423632234§ > 0)
         {
            return;
         }
         this.§521423120402312053123423632234§();
      }
      
      public function §521423120402312053123423632234§() : void
      {
         this.createTree(§function var dynamic§);
         §continue set break§ = false;
      }
      
      public function §5214237273237286123423632234§() : Boolean
      {
         return §function var dynamic§.length < 18;
      }
      
      public function destroy() : void
      {
         this.§function var dynamic§.length = 0;
         super.destroyTree();
      }
      
      public function §function switch each§(param1:Object3D) : void
      {
         this.§function var dynamic§[§function var dynamic§.length] = param1;
         param1.name = §521423101872310200123423632234§;
         §continue set break§ = true;
         if(§5214231699231712123423632234§.§52142321323226123423632234§ > 0)
         {
            return;
         }
         this.§521423120402312053123423632234§();
      }
   }
}

