package §dynamic var default§
{
   import §521423129502312963123423632234§.§function catch with§;
   import alternativa.osgi.service.display.Display;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import platform.client.fp10.core.service.errormessage.§static const extends§;
   
   public class DefaultMessageWindow extends Sprite implements §static const extends§
   {
      
      private var §52142340823421123423632234§:TextField;
      
      private var §5214233726233739123423632234§:Button;
      
      private var §5214239010239023123423632234§:Point;
      
      private var §continue catch static§:Boolean = false;
      
      public function DefaultMessageWindow()
      {
         super();
         mouseEnabled = false;
         tabEnabled = false;
         this.a59aca2a();
         this.d5082815();
         this.§5214239010239023123423632234§ = new Point(300,200);
         this.filters = [new DropShadowFilter(3,70,0,0.5,2,2,1,2,false,false,false)];
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function a59aca2a() : void
      {
         this.§52142340823421123423632234§ = new TextField();
         this.§52142340823421123423632234§.thickness = 50;
         this.§52142340823421123423632234§.sharpness = -50;
         this.§52142340823421123423632234§.width = 250 * Display.§521423132512313264123423632234§;
         this.§52142340823421123423632234§.y = 25 * Display.§521423132512313264123423632234§;
         this.§52142340823421123423632234§.defaultTextFormat = new TextFormat("Tahoma",11 * Display.§521423132512313264123423632234§,0);
         this.§52142340823421123423632234§.type = "dynamic";
         this.§52142340823421123423632234§.autoSize = "center";
         this.§52142340823421123423632234§.antiAliasType = "advanced";
         this.§52142340823421123423632234§.embedFonts = false;
         this.§52142340823421123423632234§.selectable = true;
         this.§52142340823421123423632234§.multiline = true;
         this.§52142340823421123423632234§.wordWrap = true;
         addChild(this.§52142340823421123423632234§);
      }
      
      private function a7747c17(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      public function hide() : void
      {
         if(§continue catch static§)
         {
            stage.removeEventListener("resize",this.align);
            §continue catch static§ = false;
         }
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      public function get currentSize() : Point
      {
         return this.§5214239010239023123423632234§;
      }
      
      private function align(param1:Event = null) : void
      {
         if(stage != null)
         {
            x = stage.stageWidth - width >> 1;
            y = stage.stageHeight - height >> 1;
         }
      }
      
      public function set text(param1:String) : void
      {
         this.§52142340823421123423632234§.text = param1;
         this.§5214239010239023123423632234§.x = Math.max(Math.round(this.§52142340823421123423632234§.length * 0.5),300) * Display.§521423132512313264123423632234§;
         this.§52142340823421123423632234§.width = this.§5214239010239023123423632234§.x - 50;
         this.§52142340823421123423632234§.x = Math.round((this.§5214239010239023123423632234§.x - this.§52142340823421123423632234§.textWidth) * 0.5);
         this.repaint();
         this.align();
      }
      
      private function repaint() : void
      {
         this.§5214239010239023123423632234§.y = 25 * Display.§521423132512313264123423632234§ + this.§52142340823421123423632234§.textHeight + 30 * Display.§521423132512313264123423632234§ + this.§5214233726233739123423632234§.height;
         this.graphics.clear();
         this.graphics.beginFill(13421772,1);
         this.graphics.drawRoundRect(0,0,this.§5214239010239023123423632234§.x,this.§5214239010239023123423632234§.y,5 * Display.§521423132512313264123423632234§,5 * Display.§521423132512313264123423632234§);
         this.§5214233726233739123423632234§.repaint();
         this.§5214233726233739123423632234§.x = Math.round((this.§5214239010239023123423632234§.x - this.§5214233726233739123423632234§.width) * 0.5);
         this.§5214233726233739123423632234§.y = Math.round(this.§5214239010239023123423632234§.y - 15 - this.§5214233726233739123423632234§.height);
      }
      
      private function d5082815() : void
      {
         this.§5214233726233739123423632234§ = new Button("Close");
         this.§5214233726233739123423632234§.addEventListener("click",this.a7747c17);
         addChild(this.§5214233726233739123423632234§);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(!§continue catch static§)
         {
            stage.addEventListener("resize",this.align);
            §continue catch static§ = true;
         }
         this.repaint();
         this.align();
      }
      
      public function getDisplayObject(param1:§function catch with§) : DisplayObject
      {
         this.text = param1.getMessage();
         return this;
      }
   }
}

import alternativa.osgi.service.display.Display;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;

class Button extends Sprite
{
   
   private static const H_MARGIN:int = 20;
   
   private static const V_MARGIN:int = 5;
   
   private var e189cc7c:TextField;
   
   public function Button(param1:String)
   {
      super();
      this.b4066d7e();
      this.caption = param1;
   }
   
   public function set caption(param1:String) : void
   {
      this.e189cc7c.text = param1;
      this.repaint();
   }
   
   public function repaint() : void
   {
      if(stage == null)
      {
         return;
      }
      var _loc1_:int = this.e189cc7c.textWidth + 2 * 20 * Display.§521423132512313264123423632234§;
      var _loc2_:int = this.e189cc7c.textHeight + 2 * 5 * Display.§521423132512313264123423632234§;
      this.e189cc7c.x = _loc1_ - this.e189cc7c.textWidth >> 1;
      this.e189cc7c.y = _loc2_ - this.e189cc7c.textHeight >> 1;
      graphics.beginFill(16777215,1);
      graphics.lineStyle(0,6710886);
      graphics.drawRoundRect(0,0,_loc1_,_loc2_,5 * Display.§521423132512313264123423632234§,5 * Display.§521423132512313264123423632234§);
   }
   
   private function b4066d7e() : void
   {
      this.e189cc7c = new TextField();
      this.e189cc7c.thickness = 50;
      this.e189cc7c.sharpness = -50;
      this.e189cc7c.defaultTextFormat = new TextFormat("Tahoma",12 * Display.§521423132512313264123423632234§,0,true);
      this.e189cc7c.type = "dynamic";
      this.e189cc7c.autoSize = "left";
      this.e189cc7c.antiAliasType = "advanced";
      this.e189cc7c.embedFonts = false;
      this.e189cc7c.selectable = false;
      this.e189cc7c.multiline = false;
      this.e189cc7c.mouseEnabled = false;
      this.e189cc7c.tabEnabled = false;
      addChild(this.e189cc7c);
   }
}
