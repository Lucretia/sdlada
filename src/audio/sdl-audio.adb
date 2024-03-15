--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
with Interfaces.C.Strings;
with SDL.Error;

package body SDL.Audio is
   function Initialise (Name : in String := "") return Boolean is
      function SDL_Audio_Init (C_Name : in C.Strings.chars_ptr) return C.int with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_AudioInit";

      function SDL_Audio_Init (C_Name : in C.char_array) return C.int with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_AudioInit";
   begin
      return ((if Name /= ""
               then SDL_Audio_Init (C.To_C (Name))
               else SDL_Audio_Init (C_Name => C.Strings.Null_Ptr)) = Success);
   end Initialise;


   function Total_Drivers return Positive is
      function SDL_Get_Num_Audio_Drivers return C.int with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetNumAudioDrivers";

      Num : constant C.int := SDL_Get_Num_Audio_Drivers;
   begin
      if Num < 0 then
         raise Audio_Error with SDL.Error.Get;
      end if;

      return Positive (Num);
   end Total_Drivers;


   function Driver_Name (Index : in Positive) return String is
      function SDL_Get_Audio_Driver (I : in C.int) return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetAudioDriver";

   begin
      --  Index is zero based, so need to subtract 1 to correct it.
      return C.Strings.Value (SDL_Get_Audio_Driver (C.int (Index) - 1));
   end Driver_Name;


   function Current_Driver_Name return String is
      function SDL_Get_Current_Audio_Driver return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetCurrentAudioDriver";

      C_Str : constant C.Strings.chars_ptr := SDL_Get_Current_Audio_Driver;

      use type C.Strings.chars_ptr;
   begin
      if C_Str = C.Strings.Null_Ptr then
         raise Audio_Error with SDL.Error.Get;
      end if;

      return C.Strings.Value (C_Str);
   end Current_Driver_Name;
end SDL.Audio;
