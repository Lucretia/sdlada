--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
with Interfaces.C;
with Interfaces.C.Strings;

package body SDL.Log is
   package C renames Interfaces.C;

   procedure Put (Message : in String) is
      procedure SDL_Log (Fmt : in C.char_array; Message : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_Log";
   begin
      SDL_Log (C.To_C ("%s"), C.To_C (Message));
   end Put;

   procedure Put (Message  : in String; Category : in Categories; Priority : in Priorities) is
      procedure SDL_Log
        (Category : in Categories;
         Priority : in Priorities;
         Fmt      : in C.char_array;
         Message  : in C.char_array) with

        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogMessage";
   begin
      SDL_Log (Category, Priority, C.To_C ("%s"), C.To_C (Message));
   end Put;

   procedure Put_Critical (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogCritical";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Critical;

   procedure Put_Debug (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message : in C.char_array) with

        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogDebug";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Debug;

   procedure Put_Error (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogError";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Error;

   procedure Put_Info (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message  : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogInfo";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Info;

   procedure Put_Verbose (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogVerbose";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Verbose;

   procedure Put_Warn (Message : in String; Category : in Categories := Application) is
      procedure SDL_Log (Category : in Categories; Fmt : in C.char_array; Message : in C.char_array) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogWarn";
   begin
      SDL_Log (Category, C.To_C ("%s"), C.To_C (Message));
   end Put_Warn;

   procedure Reset_Priorities is
      procedure SDL_Reset_Priorities with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogResetPriorities";
   begin
      SDL_Reset_Priorities;
   end Reset_Priorities;

   procedure Set (Priority : in Priorities) is
      procedure SDL_Set_All_Priorities (Priority : in Priorities) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogSetAllPriority";
   begin
      SDL_Set_All_Priorities (Priority);
   end Set;

   procedure Set (Category : in Categories; Priority : in Priorities) is
      procedure SDL_Set_Priority (Category : in Categories; Priority : in Priorities) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_LogSetPriority";
   begin
      SDL_Set_Priority (Category, Priority);
   end Set;

   --  Logging.
   --  A local record type which gets initialised with an access to callback
   --  and a copy to the actual user data.
   type Local_User_Data is
      record
         Callback : Output_Callback;
         Data     : Root_User_Data;
      end record with
     Convention => C;

   procedure Local_Callback
     (User_Data : in Local_User_Data;
      Category  : in Categories;
      Priority  : in Priorities;
      Message   : in C.Strings.chars_ptr) with
     Convention => C;

   procedure Local_Callback
     (User_Data : in Local_User_Data;
      Category  : in Categories;
      Priority  : in Priorities;
      Message   : in C.Strings.chars_ptr) is
   begin
      --  Call the Ada callback now.
      User_Data.Callback
        (User_Data.Data,
         Category,
         Priority,
         C.Strings.Value (Message));
   end Local_Callback;
   pragma Unreferenced (Local_Callback);  --  TODO: Fix me!
end SDL.Log;
