--------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
--------------------------------------------------------------------------------------------------------------------
--  SDL.Video.Renderers
--
--  Renderer.
--------------------------------------------------------------------------------------------------------------------
with Ada.Finalization;
with Interfaces.C;
with Interfaces.C.Strings;
private with SDL.C_Pointers;
with SDL.Video.Palettes;
with SDL.Video.Rectangles;
with SDL.Video.Textures;
with SDL.Video.Windows;

package SDL.Video.Renderers is
   pragma Preelaborate;

   package C renames Interfaces.C;

   --  TODO: Finish this.
   type Driver_Indices is range -1 .. Positive'Last with
     Convention => C;

   Renderer_Error : exception;

   type Renderer_Flags is mod 2 ** 32 with
     Convention => C;

   Default_Renderer_Flags : constant Renderer_Flags := 16#0000_0000#;
   Software               : constant Renderer_Flags := 16#0000_0001#;
   Accelerated            : constant Renderer_Flags := 16#0000_0002#;
   Present_V_Sync         : constant Renderer_Flags := 16#0000_0004#;
   Target_Texture         : constant Renderer_Flags := 16#0000_0008#;

   type Renderer_Flip is (None, Horizontal, Vertical, Both);

   function Total_Drivers return Natural with
     Inline => True;

   type Texture_Formats is mod 2 ** 32 with
     Convention => C;

   type Texture_Format_Arrays is array (0 .. 15) of Texture_Formats with
     Convention => C;

   type Renderer_Infos is record  --  SDL_RendererInfo
      Name                : C.Strings.chars_ptr;
      Flags               : Renderer_Flags;
      Num_Texture_Formats : Natural;
      Texture_Formats     : Texture_Format_Arrays;
      Max_Texture_Width   : Natural_Dimension;
      Max_Texture_Height  : Natural_Dimension;
   end record
     with Convention => C;

   type Vertices is record
      Position           : Rectangles.Float_Point;
      Colour             : SDL.Video.Palettes.Colour;
      Texture_Coordinate : Rectangles.Float_Point;
   end record with
     Convention => C;

   type Vertex_Arrays is array (C.size_t range <>) of aliased Vertices with
     Convention => C;

   --  type Vertex_Array_Access is access all Vertex_Arrays with
   --    Convention => C;

   type Indices is new C.int range 0 .. C.int'Last with
     Convention => C;

   type Index_Arrays is array (C.size_t range <>) of aliased Indices with
     Convention => C;

   --  type Index_Array_Access is access Index_Arrays with
   --    Convention => C;

   procedure Get_Driver_Info (Index : Positive; Info : out Renderer_Infos);

   type Renderer is new Ada.Finalization.Limited_Controlled with private;

   Null_Renderer : constant Renderer;

   overriding
   procedure Finalize (Self : in out Renderer);

   function Get_Blend_Mode (Self : in Renderer) return Blend_Modes;
   procedure Set_Blend_Mode (Self : in out Renderer; Mode : in Blend_Modes);

   function Get_Draw_Colour (Self : in Renderer) return SDL.Video.Palettes.Colour;
   procedure Set_Draw_Colour (Self : in out Renderer; Colour : in SDL.Video.Palettes.Colour);

   procedure Get_Info (Self : Renderer; Info : out Renderer_Infos);

   procedure Get_Output_Size
     (Self   : in Renderer;
      Width  : out SDL.Natural_Dimension;
      Height : out SDL.Natural_Dimension);

   procedure Clear (Self : in out Renderer);

   procedure Draw (Self : in out Renderer; Point : in SDL.Video.Rectangles.Point);
   procedure Draw (Self : in out Renderer; Points : in SDL.Video.Rectangles.Point_Arrays);
   procedure Draw (Self : in out Renderer; Line : in SDL.Video.Rectangles.Line_Segment);
   procedure Draw (Self : in out Renderer; X1, Y1, X2, Y2 : in SDL.Coordinate);
   procedure Draw (Self : in out Renderer; Lines : in SDL.Video.Rectangles.Line_Arrays);
   procedure Draw (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Rectangle);
   procedure Draw (Self : in out Renderer; Rectangles : in SDL.Video.Rectangles.Rectangle_Arrays);

   procedure Fill (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Rectangle);
   procedure Fill (Self : in out Renderer; Rectangles : in SDL.Video.Rectangles.Rectangle_Arrays);

   --  SDL_RenderCopy.
   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle;
      To      : in SDL.Video.Rectangles.Rectangle);

   procedure Copy_From
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle);

   procedure Copy_To
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      To      : in SDL.Video.Rectangles.Rectangle);

   --  SDL_RenderCopyEx
   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Point;
      Flip    : in Renderer_Flip);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle;
      To      : in SDL.Video.Rectangles.Rectangle;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Point;
      Flip    : in Renderer_Flip);

   procedure Copy_From
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Point;
      Flip    : in Renderer_Flip);

   procedure Copy_To
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      To      : in SDL.Video.Rectangles.Rectangle;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Point;
      Flip    : in Renderer_Flip);

   procedure Draw (Self : in out Renderer; Point : in SDL.Video.Rectangles.Float_Point);
   procedure Draw (Self : in out Renderer; Points : in SDL.Video.Rectangles.Float_Point_Arrays);
   procedure Draw (Self : in out Renderer; Line : in SDL.Video.Rectangles.Float_Line_Segment);
   procedure Draw (Self : in out Renderer; X1, Y1, X2, Y2 : in Float);
   procedure Draw (Self : in out Renderer; Lines : in SDL.Video.Rectangles.Float_Line_Arrays);
   procedure Draw (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Float_Rectangle);
   procedure Draw (Self : in out Renderer; Rectangles : in SDL.Video.Rectangles.Float_Rectangle_Arrays);

   procedure Fill (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Float_Rectangle);
   procedure Fill (Self : in out Renderer; Rectangles : in SDL.Video.Rectangles.Float_Rectangle_Arrays);

   --  SDL_RenderCopyF.
   --
   --  TODO: Renamed due to conflict, would this work any differently?
   --        Should this even be here?
   procedure Copy_F
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle;
      To      : in SDL.Video.Rectangles.Float_Rectangle);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      To      : in SDL.Video.Rectangles.Float_Rectangle);

   --  SDL_RenderCopyExF.
   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Float_Point;
      Flip    : in Renderer_Flip);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      From    : in SDL.Video.Rectangles.Rectangle;
      To      : in SDL.Video.Rectangles.Float_Rectangle;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Float_Point;
      Flip    : in Renderer_Flip);

   procedure Copy
     (Self    : in out Renderer;
      Texture : in SDL.Video.Textures.Texture;
      To      : in SDL.Video.Rectangles.Float_Rectangle;
      Angle   : in Long_Float;
      Centre  : in SDL.Video.Rectangles.Float_Point;
      Flip    : in Renderer_Flip);

   procedure Render_Geometry (Self     : in out Renderer;
                              Texture  : in SDL.Video.Textures.Texture;
                              Vertices : in Vertex_Arrays;
                              Indices  : in Index_Arrays);

   procedure Render_Geometry (Self     : in out Renderer;
                              Vertices : in Vertex_Arrays;
                              Indices  : in Index_Arrays);

   procedure Render_Geometry (Self     : in out Renderer;
                              Texture  : in SDL.Video.Textures.Texture;
                              Vertices : in Vertex_Arrays);

   procedure Render_Geometry (Self     : in out Renderer;
                              Vertices : in Vertex_Arrays);

   --  TODO: SDL_RenderGeometryRaw
   --        Does this need to be a generic which can take in the user's own arrays and types? Yes, because each
   --        pointer can be within a mixed array, which can't really be done in Ada.
   --
   --  int SDL_RenderGeometryRaw(SDL_Renderer *renderer,
   --                         SDL_Texture *texture,
   --                         const float *xy, int xy_stride,
   --                         const SDL_Color *color, int color_stride,
   --                         const float *uv, int uv_stride,
   --                         int num_vertices,
   --                         const void *indices, int num_indices, int size_indices);

   procedure Get_Clip (Self : in Renderer; Rectangle : out SDL.Video.Rectangles.Rectangle);
   procedure Set_Clip (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Rectangle);

   procedure Set_Logical_Size (Self : in out Renderer; Size : in SDL.Sizes);
   procedure Get_Logical_Size (Self : in Renderer; Size : out SDL.Sizes);

   procedure Set_Integer_Scale (Self : in Renderer; Enable : Boolean);
   function Get_Integer_Scale (Self : in Renderer) return Boolean;

   procedure Set_Scale (Self : in out Renderer; X, Y : in Float);
   procedure Set_Scale (Self : in out Renderer; Size : in Positive_Sizes) with
     Inline;

   procedure Get_Scale (Self : in Renderer; X, Y : out Float);

   procedure Window_To_Logical (Self       : in out Renderer;
                                Window_X,
                                Window_Y   : SDL.Natural_Coordinate;
                                Logical_X,
                                Logical_Y  : out SDL.Natural_Coordinate) with
     Inline;

   procedure Window_To_Logical (Self           : in out Renderer;
                                Window_Coords  : SDL.Natural_Coordinates;
                                Logical_Coords : out SDL.Natural_Coordinates) with
     Inline;

   procedure Logical_To_Window (Self       : in out Renderer;
                                Logical_X,
                                Logical_Y  : SDL.Natural_Coordinate;
                                Window_X,
                                Window_Y   : out SDL.Natural_Coordinate) with
     Inline;

   procedure Logical_To_Window (Self           : in out Renderer;
                                Logical_Coords : SDL.Natural_Coordinates;
                                Window_Coords  : out SDL.Natural_Coordinates) with
     Inline;

   procedure Set_Viewport (Self : in out Renderer; Rectangle : in SDL.Video.Rectangles.Rectangle);
   procedure Get_Viewport (Self : in Renderer; Rectangle : out SDL.Video.Rectangles.Rectangle);

   procedure Present (Self : in Renderer);

   procedure Flush (Self : in Renderer);

   --  TODO: SDL_RenderReadPixels

   function Supports_Targets (Self : in Renderer) return Boolean;

   procedure Set_Target (Self : in out Renderer; Target : in SDL.Video.Textures.Texture);
   --  TODO: SDL_GetRenderTarget

   function Get_Renderer (Window : in SDL.Video.Windows.Window) return Renderer;
private
   type Renderer is new Ada.Finalization.Limited_Controlled with
      record
         Internal : SDL.C_Pointers.Renderer_Pointer := null;
         Owns     : Boolean                         := True;  --  Does this Window type own the Internal data?
      end record;

   function Get_Internal_Renderer (Self : in Renderer) return SDL.C_Pointers.Renderer_Pointer with
     Export        => True,
     Convention    => Ada;

   Null_Renderer : constant Renderer := (Ada.Finalization.Limited_Controlled with
                                         Internal => null,
                                         Owns     => True);
end SDL.Video.Renderers;
