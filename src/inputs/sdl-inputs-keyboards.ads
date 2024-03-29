--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
--  SDL.Inputs.Keyboards
--------------------------------------------------------------------------------------------------------------------
with SDL.Events.Keyboards;
with SDL.Video.Rectangles;
with SDL.Video.Windows;

package SDL.Inputs.Keyboards is
   pragma Preelaborate;

   function Get_Focus return SDL.Video.Windows.ID with
     Inline => True;

   --  TODO:
   --     type Key_State_Array is array () of SDL.Video.Windows.Scan_Codes;
   --     function Keys return

   function Get_Modifiers return SDL.Events.Keyboards.Key_Modifiers with
     Inline => True;

   procedure Set_Modifiers (Modifiers : in SDL.Events.Keyboards.Key_Modifiers) with
     Inline => True;

   --  Screen keyboard.
   function Supports_Screen_Keyboard return Boolean with
     Inline => True;

   function Is_Screen_Keyboard_Visible (Window : in SDL.Video.Windows.Window) return Boolean with
     Inline => True;

   --  Text input.
   function Is_Text_Input_Enabled return Boolean with
     Inline => True;

   procedure Set_Text_Input_Rectangle (Rectangle : in SDL.Video.Rectangles.Rectangle) with
     Inline => True;

   procedure Start_Text_Input with
     Inline => True;

   procedure Stop_Text_Input with
     Inline => True;
end SDL.Inputs.Keyboards;
