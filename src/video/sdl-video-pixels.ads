--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
--  SDL.Video.Pixels
--
--  Access to pixel data.
--------------------------------------------------------------------------------------------------------------------
with Interfaces;
with Interfaces.C;
with Interfaces.C.Pointers;
with SDL.Video.Palettes;

package SDL.Video.Pixels is
   pragma Preelaborate;

   package C renames Interfaces.C;

   --  Define pixel data access. Each pixel can be of any pixel format type.
   --  A bitmap returned, say from Textures.Lock is an array of pixels.
   Pixels_Error : exception;

   --  These give access to the pitch data returned by locking a texture.
   type Pitches is new C.int with
     Size       => 32,
     Convention => C;

   --  ARGB8888 pixels.
   --  These give access to a texture's/surface's (TODO??) pixel data in the above format.
   type ARGB_8888 is
      record
         Alpha : SDL.Video.Palettes.Colour_Component;
         Red   : SDL.Video.Palettes.Colour_Component;
         Green : SDL.Video.Palettes.Colour_Component;
         Blue  : SDL.Video.Palettes.Colour_Component;
      end record with
     Size       => 32,
     Convention => C;

   for ARGB_8888 use
      record
         Blue  at 0 range  0 ..  7;
         Green at 0 range  8 .. 15;
         Red   at 0 range 16 .. 23;
         Alpha at 0 range 24 .. 31;
      end record;

   type ARGB_8888_Array is array (SDL.Dimension range <>) of aliased ARGB_8888;

   package ARGB_8888_Access is new Interfaces.C.Pointers
     (Index              => SDL.Dimension,
      Element            => ARGB_8888,
      Element_Array      => ARGB_8888_Array,
      Default_Terminator => ARGB_8888'(others => SDL.Video.Palettes.Colour_Component'First));

   generic
      type Index is (<>);
      type Element is private;
      type Element_Array_1D is array (Index range <>) of aliased Element;
      pragma Warnings (Off, """Element_Array_2D"" is not referenced"); --  This attribute is deprecated
      type Element_Array_2D is array (Index range <>, Index range <>) of aliased Element;
      pragma Warnings (On, """Element_Array_2D"" is not referenced"); --  This attribute is deprecated

      Default_Terminator : Element;
   package Texture_Data is
      package Texture_Data_1D is new Interfaces.C.Pointers (Index              => Index,
                                                            Element            => Element,
                                                            Element_Array      => Element_Array_1D,
                                                            Default_Terminator => Default_Terminator);

      subtype Pointer is Texture_Data_1D.Pointer;
   end Texture_Data;
end SDL.Video.Pixels;
