package §521423140752314088123423632234§
{
   import §case catch override§.§5214236909236922123423632234§;
   import flash.events.Event;
   import §implements for each§.§5214237300237313123423632234§;
   
   public class RanksDropDownList extends §5214236909236922123423632234§
   {
      
      private static const §for switch in§:String = "rank";
      
      private var §5214236045236058123423632234§:§5214237300237313123423632234§;
      
      public function RanksDropDownList(param1:int)
      {
         var _loc2_:int = 0;
         §5214236045236058123423632234§ = new §5214237300237313123423632234§();
         super();
         _loc2_ = param1;
         while(_loc2_ <= 30)
         {
            addItem({
               "gameName":"",
               "rank":_loc2_,
               "rang":0
            });
            _loc2_++;
         }
         this.§5214236045236058123423632234§.x = 9;
         this.§5214236045236058123423632234§.y = 8;
         this.§5214236045236058123423632234§.mouseEnabled = false;
         addChild(this.§5214236045236058123423632234§);
         width = 61;
         addEventListener("change",this.b68c5494,false,0,true);
      }
      
      override public function setRenderer(param1:Class) : void
      {
         §null package for§().setStyle("cellRenderer",RanksRenderer);
      }
      
      override public function selectItemByField(param1:String, param2:Object) : void
      {
         var _loc3_:int = §set set class§(param1,param2);
         if(_loc3_ != -1)
         {
            §true package do§ = §5214236864236877123423632234§.getItemAt(_loc3_);
            §521423125632312576123423632234§ = §true package do§["rank"];
            this.§5214236045236058123423632234§.init(false,int(§521423125632312576123423632234§));
            §null package for§().selectedIndex = _loc3_;
            §null package for§().scrollToSelected();
         }
      }
      
      private function b68c5494(param1:Event) : void
      {
         this.selectItemByField("rank",§521423130742313087123423632234§["rank"]);
      }
   }
}

