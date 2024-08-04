--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
with Interfaces.C.Strings;

with SDL.Error;
with SDL.Video.Windows;

package body SDL.Clipboard is
   package C renames Interfaces.C;

   procedure Check_For_Window is
      Init_Value : constant SDL.Init_Flags := SDL.Was_Initialised and SDL.Enable_Screen;
   begin
      if Init_Value /= SDL.Enable_Screen then
         raise Clipboard_Error with "SDL screen subsystem has not been initialised.";
      end if;

      if SDL.Video.Windows.Exist = False then
         raise Clipboard_Error with "No windows have been created.";
      end if;
   end Check_For_Window;

   function Get return Ada.Strings.UTF_Encoding.UTF_8_String is
      function SDL_Get_Clipboard_Text return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetClipboardText";
   begin
      Check_For_Window;

      return C.Strings.Value (SDL_Get_Clipboard_Text);
   end Get;

   function Is_Empty return Boolean is
      function SDL_Has_Clipboard_Text return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_HasClipboardText";
   begin
      Check_For_Window;

      return To_Boolean (SDL_Has_Clipboard_Text);
   end Is_Empty;

   procedure Set (Text : in Ada.Strings.UTF_Encoding.UTF_8_String) is
      function SDL_Set_Clipboard_Text (C_Str : in C.char_array) return C.int with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_SetClipboardText";
   begin
      Check_For_Window;

      if SDL_Set_Clipboard_Text (C.To_C (Text)) /= Success then
         raise Clipboard_Error with SDL.Error.Get;
      end if;
   end Set;
end SDL.Clipboard;
