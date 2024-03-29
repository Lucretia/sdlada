--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
with Interfaces.C.Strings;

package body SDL.Events.Keyboards is
   package C renames Interfaces.C;

   function Value (Name : in String) return SDL.Events.Keyboards.Scan_Codes is
      function SDL_Get_Scan_Code_From_Name (Name : in C.char_array) return SDL.Events.Keyboards.Scan_Codes with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetScancodeFromName";
   begin
      return SDL_Get_Scan_Code_From_Name (C.To_C (Name));
   end Value;

   function Image (Scan_Code : in SDL.Events.Keyboards.Scan_Codes) return String is
      function SDL_Get_Scan_Code_Name (Scan_Code : in SDL.Events.Keyboards.Scan_Codes) return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetScancodeName";
   begin
      return C.Strings.Value (SDL_Get_Scan_Code_Name (Scan_Code));
   end Image;

   function Value (Name : in String) return SDL.Events.Keyboards.Key_Codes is
      function SDL_Get_Key_From_Name (Name : in C.char_array) return SDL.Events.Keyboards.Key_Codes with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetKeyFromName";
   begin
      return SDL_Get_Key_From_Name (C.To_C (Name));
   end Value;

   function Image (Key_Code : in SDL.Events.Keyboards.Key_Codes) return String is
      function SDL_Get_Key_Name (Key_Code : in SDL.Events.Keyboards.Key_Codes) return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetKeyName";
   begin
      return C.Strings.Value (SDL_Get_Key_Name (Key_Code));
   end Image;

   function To_Key_Code (Scan_Code : in SDL.Events.Keyboards.Scan_Codes) return SDL.Events.Keyboards.Key_Codes is
      function SDL_Get_Key_From_Scan_Code (Scan_Code : in SDL.Events.Keyboards.Scan_Codes)
                                           return SDL.Events.Keyboards.Key_Codes with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetKeyFromScancode";
   begin
      return SDL_Get_Key_From_Scan_Code (Scan_Code);
   end To_Key_Code;

   function To_Scan_Code (Key_Code : in SDL.Events.Keyboards.Key_Codes) return SDL.Events.Keyboards.Scan_Codes is
      function SDL_Get_Scan_Code_From_Key (Key_Code : in SDL.Events.Keyboards.Key_Codes)
                                           return SDL.Events.Keyboards.Scan_Codes with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetScancodeFromKey";
   begin
      return SDL_Get_Scan_Code_From_Key (Key_Code);
   end To_Scan_Code;
end SDL.Events.Keyboards;
