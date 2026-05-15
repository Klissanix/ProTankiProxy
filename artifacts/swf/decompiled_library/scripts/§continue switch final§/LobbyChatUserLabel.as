package §continue switch final§
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import §try const default§.§case package implements§;
   import §try const default§.§set catch function§;
   
   public class LobbyChatUserLabel extends §set catch function§
   {
      
      public function LobbyChatUserLabel(param1:String, param2:String, param3:int, param4:§5214231668231681123423632234§)
      {
         §5214232654232667123423632234§ = param2;
         §implements switch in§ = param3;
         §521423106752310688123423632234§ = true;
         §5214237749237762123423632234§ = true;
         §package package true§ = true;
         §for override§ = true;
         §521423104272310440123423632234§ = param4;
         super(param1);
      }
      
      override protected function updateProperties() : void
      {
         §function set each§(§5214232654232667123423632234§);
         §true finally catch§(§implements switch in§);
         §with set dynamic§(§case catch false§.state);
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         if(§52142329523308123423632234§.userId == §5214234339234352123423632234§)
         {
            dispatchEvent(new §case package implements§("UserLabelEvent.CLICK_WITH_CTRL",§5214232654232667123423632234§,true));
            return;
         }
         if(param1.ctrlKey)
         {
            dispatchEvent(new §case package implements§("UserLabelEvent.CLICK_WITH_CTRL",§5214232654232667123423632234§,true));
         }
         else
         {
            switch(§521423136412313654123423632234§)
            {
               case FriendState.ACCEPTED:
                  _loc5_ = true;
                  break;
               case FriendState.INCOMING:
                  _loc6_ = true;
                  _loc3_ = true;
                  break;
               case FriendState.OUTGOING:
                  _loc4_ = true;
                  break;
               default:
                  _loc2_ = true;
            }
            §52142335623369123423632234§.show(stage.mouseX,stage.mouseY,§try var var§(§5214234339234352123423632234§),§implements switch in§,§5214232654232667123423632234§,_loc2_,_loc5_,_loc6_,_loc3_,_loc4_,§521423106752310688123423632234§,§for override§,false,§package package true§,this.§default var final§);
         }
      }
   }
}

