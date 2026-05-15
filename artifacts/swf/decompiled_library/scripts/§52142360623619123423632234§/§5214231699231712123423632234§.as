package §52142360623619123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.tanks.battle.BattleRunnerProvider;
   
   public class §5214231699231712123423632234§ extends BattleRunnerProvider
   {
      
      public static var §52142321323226123423632234§:int = 0;
      
      private var §5214233572233585123423632234§:Vector.<§5214231884231897123423632234§> = new Vector.<§5214231884231897123423632234§>(0);
      
      public var §false const function§:Boolean = false;
      
      private var §case finally for§:Boolean = true;
      
      public function §5214231699231712123423632234§()
      {
         super();
         §52142321323226123423632234§ = 0;
      }
      
      public function §5214232322232335123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(§5214233572233585123423632234§.length);
         while(_loc2_ < _loc1_)
         {
            §5214233572233585123423632234§[_loc2_].visible = false;
            _loc2_++;
         }
         §case finally for§ = false;
      }
      
      private function §else else§() : §5214231884231897123423632234§
      {
         var _loc1_:§5214231884231897123423632234§ = null;
         var _loc3_:int = 0;
         var _loc2_:int = int(§5214233572233585123423632234§.length);
         while(_loc3_ < _loc2_)
         {
            _loc1_ = §5214233572233585123423632234§[_loc3_];
            if(_loc1_.§5214237273237286123423632234§())
            {
               return _loc1_;
            }
            _loc3_++;
         }
         _loc1_ = new §5214231884231897123423632234§(§5214233572233585123423632234§.length);
         _loc1_.visible = §case finally for§;
         §5214233572233585123423632234§[_loc2_] = _loc1_;
         §52142380523818123423632234§.getBattleScene3D().§break use with§(_loc1_);
         return _loc1_;
      }
      
      public function §5214236500236513123423632234§(param1:Object3D) : void
      {
         if(§false const function§ || param1.name == null)
         {
            return;
         }
         var _loc3_:int = int(param1.name);
         var _loc2_:§5214231884231897123423632234§ = §5214233572233585123423632234§[_loc3_];
         _loc2_.§5214236500236513123423632234§(param1);
      }
      
      public function §521423128692312882123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:§5214231884231897123423632234§ = null;
         if(--§5214231699231712123423632234§.§52142321323226123423632234§ == 0)
         {
            _loc2_ = int(§5214233572233585123423632234§.length);
            while(_loc3_ < _loc2_)
            {
               _loc1_ = §5214233572233585123423632234§[_loc3_];
               if(_loc1_.§continue set break§)
               {
                  _loc1_.§521423120402312053123423632234§();
               }
               _loc3_++;
            }
         }
      }
      
      public function §521423113372311350123423632234§(param1:Object3D) : void
      {
         var _loc2_:§5214231884231897123423632234§ = §else else§();
         _loc2_.§function switch each§(param1);
      }
      
      public function destroy() : void
      {
         var _loc3_:int = 0;
         var _loc1_:§5214231884231897123423632234§ = null;
         var _loc2_:int = int(§5214233572233585123423632234§.length);
         while(_loc3_ < _loc2_)
         {
            _loc1_ = §5214233572233585123423632234§[_loc3_];
            _loc1_.destroy();
            _loc3_++;
         }
         §5214233572233585123423632234§.length = 0;
      }
      
      public function §5214236720236733123423632234§() : void
      {
         §5214231699231712123423632234§.§52142321323226123423632234§++;
      }
      
      public function §native package const§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(§5214233572233585123423632234§.length);
         while(_loc2_ < _loc1_)
         {
            §5214233572233585123423632234§[_loc2_].visible = true;
            _loc2_++;
         }
         §case finally for§ = true;
      }
   }
}

