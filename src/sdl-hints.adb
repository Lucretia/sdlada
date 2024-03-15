--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
with Interfaces.C;
with Interfaces.C.Strings;
with SDL.Error;

package body SDL.Hints is
   package C renames Interfaces.C;

   use type C.Strings.chars_ptr;

   Frame_Buffer_Acceleration_Name        : aliased constant String := "SDL_FRAMEBUFFER_ACCELERATION";
   Render_Driver_Name                    : aliased constant String := "SDL_RENDER_DRIVER";
   Render_OpenGL_Shaders_Name            : aliased constant String := "SDL_RENDER_OPENGL_SHADERS";
   Render_Scale_Quality_Name             : aliased constant String := "SDL_RENDER_SCALE_QUALITY";
   Render_VSync_Name                     : aliased constant String := "SDL_RENDER_VSYNC";
   Video_X11_XVidMode_Name               : aliased constant String := "SDL_VIDEO_X11_XVIDMODE";
   Video_X11_Xinerama_Name               : aliased constant String := "SDL_VIDEO_X11_XINERAMA";
   Video_X11_XRandR_Name                 : aliased constant String := "SDL_VIDEO_X11_XRANDR";
   Grab_Keyboard_Name                    : aliased constant String := "SDL_GRAB_KEYBOARD";
   Video_Minimise_On_Focus_Loss_Name     : aliased constant String := "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";
   Idle_Timer_Disabled_Name              : aliased constant String := "SDL_IOS_IDLE_TIMER_DISABLED";
   IOS_Orientations_Name                 : aliased constant String := "SDL_IOS_ORIENTATIONS";
   XInput_Enabled_Name                   : aliased constant String := "SDL_XINPUT_ENABLED";
   Game_Controller_Config_Name           : aliased constant String := "SDL_GAMECONTROLLERCONFIG";
   Joystick_Allow_Background_Events_Name : aliased constant String := "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";
   Allow_Topmost_Name                    : aliased constant String := "SDL_ALLOW_TOPMOST";
   Timer_Resolution_Name                 : aliased constant String := "SDL_TIMER_RESOLUTION";

   type Hint_Names is access constant String;

   Hint_Name_Map : constant array (Hint'Range) of Hint_Names :=
     (Frame_Buffer_Acceleration_Name'Access,
      Render_Driver_Name'Access,
      Render_OpenGL_Shaders_Name'Access,
      Render_Scale_Quality_Name'Access,
      Render_VSync_Name'Access,
      Video_X11_XVidMode_Name'Access,
      Video_X11_Xinerama_Name'Access,
      Video_X11_XRandR_Name'Access,
      Grab_Keyboard_Name'Access,
      Video_Minimise_On_Focus_Loss_Name'Access,
      Idle_Timer_Disabled_Name'Access,
      IOS_Orientations_Name'Access,
      XInput_Enabled_Name'Access,
      Game_Controller_Config_Name'Access,
      Joystick_Allow_Background_Events_Name'Access,
      Allow_Topmost_Name'Access,
      Timer_Resolution_Name'Access);

   function Value (H : in Hint) return String with
     Inline => True;

   function Value (H : in Hint) return String is
   begin
      return Hint_Name_Map (H).all;
   end Value;

   function Get (Name : in Hint) return String is
      function SDL_Get_Hint (C_Str : in C.char_array) return C.Strings.chars_ptr with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetHint";

      C_Str : constant C.Strings.chars_ptr := SDL_Get_Hint (C.To_C (Value (Name)));
   begin
      if C_Str = C.Strings.Null_Ptr then
         return "";
      end if;

      return C.Strings.Value (C_Str);
   end Get;

   procedure Set (Name : in Hint; Value : in String) is
      function SDL_Set_Hint (Name, Value : in C.char_array) return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_SetHint";

      Result : constant SDL_Bool := SDL_Set_Hint (C.To_C (Hints.Value (Name)), C.To_C (Value));
   begin
      if Result = SDL_False then
         raise Hint_Error with SDL.Error.Get;
      end if;
   end Set;

   procedure Set (Name : in Hint; Value : in String; Priority : in Priorities) is
      function SDL_Set_Hint (Name, Value : in C.char_array; P : in Priorities) return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_SetHintWithPriority";

      Result : constant SDL_Bool := SDL_Set_Hint (C.To_C (Hints.Value (Name)), C.To_C (Value), Priority);
   begin
      if Result = SDL_False then
         raise Hint_Error with SDL.Error.Get;
      end if;
   end Set;
end SDL.Hints;
