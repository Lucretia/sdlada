--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
private with SDL.C_Pointers;

package body SDL.Inputs.Keyboards is

   function Get_Focus return SDL.Video.Windows.ID is
      function SDL_Get_Window_ID (W : in SDL.C_Pointers.Windows_Pointer) return SDL.Video.Windows.ID with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetWindowID";

      function SDL_Get_Keyboard_Focus return SDL.C_Pointers.Windows_Pointer with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetKeyboardFocus";
   begin
      return SDL_Get_Window_ID (SDL_Get_Keyboard_Focus);
   end Get_Focus;


   function Supports_Screen_Keyboard return Boolean is
      function SDL_Has_Screen_Keyboard_Support return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_HasScreenKeyboardSupport";
   begin
      return SDL_Has_Screen_Keyboard_Support = SDL_True;
   end Supports_Screen_Keyboard;


   function Is_Screen_Keyboard_Visible (Window : in SDL.Video.Windows.Window) return Boolean is
      function Get_Internal_Window (Self : in SDL.Video.Windows.Window) return SDL.C_Pointers.Windows_Pointer with
        Convention => Ada,
        Import     => True;

      function SDL_Screen_Keyboard_Shown (Window : in SDL.C_Pointers.Windows_Pointer) return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_IsScreenKeyboardShown";
   begin
      return SDL_Screen_Keyboard_Shown (Get_Internal_Window (Window)) = SDL_True;
   end Is_Screen_Keyboard_Visible;


   function Is_Text_Input_Enabled return Boolean is
      function SDL_Is_Text_Input_Active return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_IsTextInputActive";
   begin
      return SDL_Is_Text_Input_Active = SDL_True;
   end Is_Text_Input_Enabled;


   procedure Set_Text_Input_Rectangle (Rectangle : in SDL.Video.Rectangles.Rectangle) is
      procedure SDL_Set_Text_Input_Rect (Rectangle : in SDL.Video.Rectangles.Rectangle) with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_SetTextInputRect";
   begin
      SDL_Set_Text_Input_Rect (Rectangle);
   end Set_Text_Input_Rectangle;
end SDL.Inputs.Keyboards;
