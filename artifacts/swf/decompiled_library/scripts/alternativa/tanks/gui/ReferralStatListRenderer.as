package alternativa.tanks.gui
{
   import §5214232472232485123423632234§.§52142338123394123423632234§;
   import §5214232472232485123423632234§.§static package dynamic§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §if use null§.§catch for case§;
   import §true switch true§.§5214231141231154123423632234§;
   import §try const default§.§5214234011234024123423632234§;
   
   public class ReferralStatListRenderer extends §catch for case§
   {
      
      public function ReferralStatListRenderer()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         _loc2_ = null;
         _loc3_ = null;
         _data = param1;
         _loc2_ = new §static package dynamic§();
         _loc3_ = new §52142338123394123423632234§();
         this.mouseChildren = true;
         this.useHandCursor = false;
         this.buttonMode = false;
         §5214234691234704123423632234§ = this.myIcon(_data);
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc3_);
         setStyle("selectedOverSkin",_loc3_);
         setStyle("selectedDownSkin",_loc3_);
      }
      
      override protected function myIcon(param1:Object) : Sprite
      {
         var _loc4_:§5214231141231154123423632234§ = null;
         var _loc2_:Sprite = null;
         var _loc3_:§5214234011234024123423632234§ = null;
         _loc2_ = new Sprite();
         _loc3_ = new §5214234011234024123423632234§(param1.userId);
         _loc3_.§for override§ = true;
         _loc3_.§5214234846234859123423632234§(16777215);
         _loc3_.x = -3;
         _loc3_.y = -1;
         _loc2_.addChild(_loc3_);
         _loc4_ = new §5214231141231154123423632234§();
         _loc4_.autoSize = "none";
         _loc4_.align = "right";
         _loc4_.width = 90;
         _loc4_.x = _width - 100;
         _loc4_.text = param1.income > -1 ? §521423133302313343123423632234§.§get catch catch§(param1.income,false) : "null";
         _loc4_.y = -1;
         _loc2_.addChild(_loc4_);
         return _loc2_;
      }
   }
}

