package §continue const throw§
{
   import alternativa.tanks.service.IEntranceClientFacade;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import §throw package set§.§5214237869237882123423632234§;
   import §throw package set§.ServerHaltEntranceModelBase;
   
   public class ServerHaltEntranceModel extends ServerHaltEntranceModelBase implements §5214237869237882123423632234§, §5214235049235062123423632234§
   {
      
      public static var §if for native§:IEntranceClientFacade;
      
      public function ServerHaltEntranceModel()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectLoaded() : void
      {
         if(getInitParam().serverHalt)
         {
            §if for native§.serverHalt();
         }
      }
      
      public function serverHalt() : void
      {
         §if for native§.serverHalt();
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

