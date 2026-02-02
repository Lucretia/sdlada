--  Automatically generated, do not edit.
---------------------------------------------------------------------------------------------------------------------
--  This source code is subject to the Zlib license, see the LICENCE file in the root of this directory.
---------------------------------------------------------------------------------------------------------------------
--  SDL.Events.Keyboards
--
--  Keyboard specific events.
---------------------------------------------------------------------------------------------------------------------
with SDL.Video.Windows;

package SDL.Events.Keyboards is
   pragma Preelaborate;
   --  Keyboard events.
   Key_Down                         : constant Event_Types := 16#0000_0300#;
   Key_Up                           : constant Event_Types := Key_Down + 1;
   Text_Editing                     : constant Event_Types := Key_Down + 2;
   Text_Input                       : constant Event_Types := Key_Down + 3;

   ------------------------------------------------------------------------------------------------------------------
   --  Scan codes.
   ------------------------------------------------------------------------------------------------------------------
   type Scan_Codes is range 0 .. 512 with
     Convention => C,
     Size       => 32;

   Scan_Code_Unknown                : constant Scan_Codes := 0;

   Scan_Code_A                      : constant Scan_Codes := 4;
   Scan_Code_B                      : constant Scan_Codes := 5;
   Scan_Code_C                      : constant Scan_Codes := 6;
   Scan_Code_D                      : constant Scan_Codes := 7;
   Scan_Code_E                      : constant Scan_Codes := 8;
   Scan_Code_F                      : constant Scan_Codes := 9;
   Scan_Code_G                      : constant Scan_Codes := 10;
   Scan_Code_H                      : constant Scan_Codes := 11;
   Scan_Code_I                      : constant Scan_Codes := 12;
   Scan_Code_J                      : constant Scan_Codes := 13;
   Scan_Code_K                      : constant Scan_Codes := 14;
   Scan_Code_L                      : constant Scan_Codes := 15;
   Scan_Code_M                      : constant Scan_Codes := 16;
   Scan_Code_N                      : constant Scan_Codes := 17;
   Scan_Code_O                      : constant Scan_Codes := 18;
   Scan_Code_P                      : constant Scan_Codes := 19;
   Scan_Code_Q                      : constant Scan_Codes := 20;
   Scan_Code_R                      : constant Scan_Codes := 21;
   Scan_Code_S                      : constant Scan_Codes := 22;
   Scan_Code_T                      : constant Scan_Codes := 23;
   Scan_Code_U                      : constant Scan_Codes := 24;
   Scan_Code_V                      : constant Scan_Codes := 25;
   Scan_Code_W                      : constant Scan_Codes := 26;
   Scan_Code_X                      : constant Scan_Codes := 27;
   Scan_Code_Y                      : constant Scan_Codes := 28;
   Scan_Code_Z                      : constant Scan_Codes := 29;

   Scan_Code_1                      : constant Scan_Codes := 30;
   Scan_Code_2                      : constant Scan_Codes := 31;
   Scan_Code_3                      : constant Scan_Codes := 32;
   Scan_Code_4                      : constant Scan_Codes := 33;
   Scan_Code_5                      : constant Scan_Codes := 34;
   Scan_Code_6                      : constant Scan_Codes := 35;
   Scan_Code_7                      : constant Scan_Codes := 36;
   Scan_Code_8                      : constant Scan_Codes := 37;
   Scan_Code_9                      : constant Scan_Codes := 38;
   Scan_Code_0                      : constant Scan_Codes := 39;

   Scan_Code_Return                 : constant Scan_Codes := 40;
   Scan_Code_Escape                 : constant Scan_Codes := 41;
   Scan_Code_Backspace              : constant Scan_Codes := 42;
   Scan_Code_Tab                    : constant Scan_Codes := 43;
   Scan_Code_Space                  : constant Scan_Codes := 44;

   Scan_Code_Minus                  : constant Scan_Codes := 45;
   Scan_Code_Equals                 : constant Scan_Codes := 46;
   Scan_Code_Left_Bracket           : constant Scan_Codes := 47;
   Scan_Code_Right_Bracket          : constant Scan_Codes := 48;
   Scan_Code_Back_Slash             : constant Scan_Codes := 49;
   Scan_Code_Non_US_Hash            : constant Scan_Codes := 50;
   Scan_Code_Semi_Colon             : constant Scan_Codes := 51;
   Scan_Code_Apostrophe             : constant Scan_Codes := 52;
   Scan_Code_Grave                  : constant Scan_Codes := 53;
   Scan_Code_Comma                  : constant Scan_Codes := 54;
   Scan_Code_Period                 : constant Scan_Codes := 55;
   Scan_Code_Slash                  : constant Scan_Codes := 56;

   Scan_Code_Caps_Lock              : constant Scan_Codes := 57;

   Scan_Code_F1                     : constant Scan_Codes := 58;
   Scan_Code_F2                     : constant Scan_Codes := 59;
   Scan_Code_F3                     : constant Scan_Codes := 60;
   Scan_Code_F4                     : constant Scan_Codes := 61;
   Scan_Code_F5                     : constant Scan_Codes := 62;
   Scan_Code_F6                     : constant Scan_Codes := 63;
   Scan_Code_F7                     : constant Scan_Codes := 64;
   Scan_Code_F8                     : constant Scan_Codes := 65;
   Scan_Code_F9                     : constant Scan_Codes := 66;
   Scan_Code_F10                    : constant Scan_Codes := 67;
   Scan_Code_F11                    : constant Scan_Codes := 68;
   Scan_Code_F12                    : constant Scan_Codes := 69;

   Scan_Code_Print_Screen           : constant Scan_Codes := 70;
   Scan_Code_Scroll_Lock            : constant Scan_Codes := 71;
   Scan_Code_Pause                  : constant Scan_Codes := 72;
   Scan_Code_Insert                 : constant Scan_Codes := 73;

   Scan_Code_Home                   : constant Scan_Codes := 74;
   Scan_Code_Page_Up                : constant Scan_Codes := 75;
   Scan_Code_Delete                 : constant Scan_Codes := 76;
   Scan_Code_End                    : constant Scan_Codes := 77;
   Scan_Code_Page_Down              : constant Scan_Codes := 78;
   Scan_Code_Right                  : constant Scan_Codes := 79;
   Scan_Code_Left                   : constant Scan_Codes := 80;
   Scan_Code_Down                   : constant Scan_Codes := 81;
   Scan_Code_Up                     : constant Scan_Codes := 82;

   Scan_Code_Num_Lock_Clear         : constant Scan_Codes := 83;

   Scan_Code_KP_Divide              : constant Scan_Codes := 84;
   Scan_Code_KP_Multiply            : constant Scan_Codes := 85;
   Scan_Code_KP_Minus               : constant Scan_Codes := 86;
   Scan_Code_KP_Plus                : constant Scan_Codes := 87;
   Scan_Code_KP_Enter               : constant Scan_Codes := 88;
   Scan_Code_KP_1                   : constant Scan_Codes := 89;
   Scan_Code_KP_2                   : constant Scan_Codes := 90;
   Scan_Code_KP_3                   : constant Scan_Codes := 91;
   Scan_Code_KP_4                   : constant Scan_Codes := 92;
   Scan_Code_KP_5                   : constant Scan_Codes := 93;
   Scan_Code_KP_6                   : constant Scan_Codes := 94;
   Scan_Code_KP_7                   : constant Scan_Codes := 95;
   Scan_Code_KP_8                   : constant Scan_Codes := 96;
   Scan_Code_KP_9                   : constant Scan_Codes := 97;
   Scan_Code_KP_0                   : constant Scan_Codes := 98;
   Scan_Code_KP_Period              : constant Scan_Codes := 99;

   Scan_Code_Non_US_Back_Slash      : constant Scan_Codes := 100;
   Scan_Code_Application            : constant Scan_Codes := 101;
   Scan_Code_Power                  : constant Scan_Codes := 102;
   Scan_Code_KP_Equals              : constant Scan_Codes := 103;
   Scan_Code_F13                    : constant Scan_Codes := 104;
   Scan_Code_F14                    : constant Scan_Codes := 105;
   Scan_Code_F15                    : constant Scan_Codes := 106;
   Scan_Code_F16                    : constant Scan_Codes := 107;
   Scan_Code_F17                    : constant Scan_Codes := 108;
   Scan_Code_F18                    : constant Scan_Codes := 109;
   Scan_Code_F19                    : constant Scan_Codes := 110;
   Scan_Code_F20                    : constant Scan_Codes := 111;
   Scan_Code_F21                    : constant Scan_Codes := 112;
   Scan_Code_F22                    : constant Scan_Codes := 113;
   Scan_Code_F23                    : constant Scan_Codes := 114;
   Scan_Code_F24                    : constant Scan_Codes := 115;
   Scan_Code_Execute                : constant Scan_Codes := 116;
   Scan_Code_Help                   : constant Scan_Codes := 117;
   Scan_Code_Menu                   : constant Scan_Codes := 118;
   Scan_Code_Select                 : constant Scan_Codes := 119;
   Scan_Code_Stop                   : constant Scan_Codes := 120;
   Scan_Code_Again                  : constant Scan_Codes := 121;
   Scan_Code_Undo                   : constant Scan_Codes := 122;
   Scan_Code_Cut                    : constant Scan_Codes := 123;
   Scan_Code_Copy                   : constant Scan_Codes := 124;
   Scan_Code_Paste                  : constant Scan_Codes := 125;
   Scan_Code_Find                   : constant Scan_Codes := 126;
   Scan_Code_Mute                   : constant Scan_Codes := 127;
   Scan_Code_Volume_Up              : constant Scan_Codes := 128;
   Scan_Code_Volume_Down            : constant Scan_Codes := 129;
   --  Scan_Code_Locking_Caps_Lock   : constant Scan_Codes := 130;
   --  Scan_Code_Locking_Num_Lock    : constant Scan_Codes := 131;
   --  Scan_Code_Locking_Scroll_Lock : constant Scan_Codes := 132;
   Scan_Code_KP_Comma               : constant Scan_Codes := 133;
   Scan_Code_KP_Equals_AS400        : constant Scan_Codes := 134;

   Scan_Code_International_1        : constant Scan_Codes := 135;  --  Used on Asian keyboards.
   Scan_Code_International_2        : constant Scan_Codes := 136;
   Scan_Code_International_3        : constant Scan_Codes := 137;  --  Yen
   Scan_Code_International_4        : constant Scan_Codes := 138;
   Scan_Code_International_5        : constant Scan_Codes := 139;
   Scan_Code_International_6        : constant Scan_Codes := 140;
   Scan_Code_International_7        : constant Scan_Codes := 141;
   Scan_Code_International_8        : constant Scan_Codes := 142;
   Scan_Code_International_9        : constant Scan_Codes := 143;
   Scan_Code_Language_1             : constant Scan_Codes := 144;  --  Hangul/En
   Scan_Code_Language_2             : constant Scan_Codes := 145;  --  Hanja con
   Scan_Code_Language_3             : constant Scan_Codes := 146;  --  Katakana.
   Scan_Code_Language_4             : constant Scan_Codes := 147;  --  Hiragana.
   Scan_Code_Language_5             : constant Scan_Codes := 148;  --  Zenkaku/H
   Scan_Code_Language_6             : constant Scan_Codes := 149;  --  Reserved.
   Scan_Code_Language_7             : constant Scan_Codes := 150;  --  Reserved.
   Scan_Code_Language_8             : constant Scan_Codes := 151;  --  Reserved.
   Scan_Code_Language_9             : constant Scan_Codes := 152;  --  Reserved.

   Scan_Code_Alt_Erase              : constant Scan_Codes := 153;  --  Erase-ease.
   Scan_Code_Sys_Req                : constant Scan_Codes := 154;
   Scan_Code_Cancel                 : constant Scan_Codes := 155;
   Scan_Code_Clear                  : constant Scan_Codes := 156;
   Scan_Code_Prior                  : constant Scan_Codes := 157;
   Scan_Code_Return_2               : constant Scan_Codes := 158;
   Scan_Code_Separator              : constant Scan_Codes := 159;
   Scan_Code_Out                    : constant Scan_Codes := 160;
   Scan_Code_Oper                   : constant Scan_Codes := 161;
   Scan_Code_Clear_Again            : constant Scan_Codes := 162;
   Scan_Code_CR_Sel                 : constant Scan_Codes := 163;
   Scan_Code_EX_Sel                 : constant Scan_Codes := 164;

   Scan_Code_KP_00                  : constant Scan_Codes := 176;
   Scan_Code_KP_000                 : constant Scan_Codes := 177;
   Scan_Code_Thousands_Separator    : constant Scan_Codes := 178;
   Scan_Code_Decimal_Separator      : constant Scan_Codes := 179;
   Scan_Code_Currency_Unit          : constant Scan_Codes := 180;
   Scan_Code_Currency_Subunit       : constant Scan_Codes := 181;
   Scan_Code_KP_Left_Parenthesis    : constant Scan_Codes := 182;
   Scan_Code_KP_Right_Parentheesis  : constant Scan_Codes := 183;
   Scan_Code_KP_Left_Brace          : constant Scan_Codes := 184;
   Scan_Code_KP_Right_Brace         : constant Scan_Codes := 185;
   Scan_Code_KP_Tab                 : constant Scan_Codes := 186;
   Scan_Code_KP_Backspace           : constant Scan_Codes := 187;
   Scan_Code_KP_A                   : constant Scan_Codes := 188;
   Scan_Code_KP_B                   : constant Scan_Codes := 189;
   Scan_Code_KP_C                   : constant Scan_Codes := 190;
   Scan_Code_KP_D                   : constant Scan_Codes := 191;
   Scan_Code_KP_E                   : constant Scan_Codes := 192;
   Scan_Code_KP_F                   : constant Scan_Codes := 193;
   Scan_Code_KP_XOR                 : constant Scan_Codes := 194;
   Scan_Code_KP_Power               : constant Scan_Codes := 195;
   Scan_Code_KP_Percent             : constant Scan_Codes := 196;
   Scan_Code_KP_Less                : constant Scan_Codes := 197;
   Scan_Code_KP_Greater             : constant Scan_Codes := 198;
   Scan_Code_KP_Ampersand           : constant Scan_Codes := 199;
   Scan_Code_KP_Double_Ampersand    : constant Scan_Codes := 200;
   Scan_Code_KP_Vertical_Bar        : constant Scan_Codes := 201;
   Scan_Code_KP_Double_Vertical_Bar : constant Scan_Codes := 202;
   Scan_Code_KP_Colon               : constant Scan_Codes := 203;
   Scan_Code_KP_Hash                : constant Scan_Codes := 204;
   Scan_Code_KP_Space               : constant Scan_Codes := 205;
   Scan_Code_KP_At                  : constant Scan_Codes := 206;
   Scan_Code_KP_Exclamation         : constant Scan_Codes := 207;
   Scan_Code_KP_Memory_Store        : constant Scan_Codes := 208;
   Scan_Code_KP_Memory_Recall       : constant Scan_Codes := 209;
   Scan_Code_KP_Memory_Clear        : constant Scan_Codes := 210;
   Scan_Code_KP_Memory_Add          : constant Scan_Codes := 211;
   Scan_Code_KP_Memory_Subtract     : constant Scan_Codes := 212;
   Scan_Code_KP_Memory_Multiply     : constant Scan_Codes := 213;
   Scan_Code_KP_Memory_Divide       : constant Scan_Codes := 214;
   Scan_Code_KP_Plus_Minus          : constant Scan_Codes := 215;
   Scan_Code_KP_Clear               : constant Scan_Codes := 216;
   Scan_Code_KP_Clear_Entry         : constant Scan_Codes := 217;
   Scan_Code_KP_Binary              : constant Scan_Codes := 218;
   Scan_Code_KP_Octal               : constant Scan_Codes := 219;
   Scan_Code_KP_Decimal             : constant Scan_Codes := 220;
   Scan_Code_KP_Hexadecimal         : constant Scan_Codes := 221;

   Scan_Code_Left_Control           : constant Scan_Codes := 224;
   Scan_Code_Left_Shift             : constant Scan_Codes := 225;
   Scan_Code_Left_Alt               : constant Scan_Codes := 226;  --  Alt, option, etc.
   Scan_Code_Left_GUI               : constant Scan_Codes := 227;  --  Windows, Command (Apple), Meta, etc.
   Scan_Code_Right_Control          : constant Scan_Codes := 228;
   Scan_Code_Right_Shift            : constant Scan_Codes := 229;
   Scan_Code_Right_Alt              : constant Scan_Codes := 230;  --  Alt gr, option, etc.
   Scan_Code_Right_GUI              : constant Scan_Codes := 231;  --  Windows, Command (Apple), Meta, etc.

   Scan_Code_Mode                   : constant Scan_Codes := 257;

   --  Usage page in USB document.
   Scan_Code_Audio_Next             : constant Scan_Codes := 258;
   Scan_Code_Audio_Previous         : constant Scan_Codes := 259;
   Scan_Code_Audio_Stop             : constant Scan_Codes := 260;
   Scan_Code_Audio_Play             : constant Scan_Codes := 261;
   Scan_Code_Audio_Mute             : constant Scan_Codes := 262;
   Scan_Code_Media_Select           : constant Scan_Codes := 263;
   Scan_Code_WWW                    : constant Scan_Codes := 264;
   Scan_Code_Mail                   : constant Scan_Codes := 265;
   Scan_Code_Calculator             : constant Scan_Codes := 266;
   Scan_Code_Computer               : constant Scan_Codes := 267;
   Scan_Code_AC_Search              : constant Scan_Codes := 268;
   Scan_Code_AC_Home                : constant Scan_Codes := 269;
   Scan_Code_AC_Back                : constant Scan_Codes := 270;
   Scan_Code_AC_Forward             : constant Scan_Codes := 271;
   Scan_Code_AC_Stop                : constant Scan_Codes := 272;
   Scan_Code_AC_Refresh             : constant Scan_Codes := 273;
   Scan_Code_AC_Bookmarks           : constant Scan_Codes := 274;

   --  Walther keys (for Mac?).
   Scan_Code_Brightness_Up          : constant Scan_Codes := 275;
   Scan_Code_Brightness_Down        : constant Scan_Codes := 276;
   Scan_Code_Display_Switch         : constant Scan_Codes := 277;

   Scan_Code_Illumination_Toggle    : constant Scan_Codes := 278;
   Scan_Code_Illumination_Down      : constant Scan_Codes := 279;
   Scan_Code_Illumination_Up        : constant Scan_Codes := 280;
   Scan_Code_Eject                  : constant Scan_Codes := 281;
   Scan_Code_Sleep                  : constant Scan_Codes := 282;

   Scan_Code_Application_1          : constant Scan_Codes := 283;
   Scan_Code_Application_2          : constant Scan_Codes := 284;

   --  All other scan codes go here.

   Scan_Code_Total                  : constant Scan_Codes := 512;

   function Value (Name : in String) return SDL.Events.Keyboards.Scan_Codes with
     Inline => True;

   function Image (Scan_Code : in SDL.Events.Keyboards.Scan_Codes) return String with
     Inline => True;

   ------------------------------------------------------------------------------------------------------------------
   --  Key codes.
   ------------------------------------------------------------------------------------------------------------------
   type Key_Codes is mod 2 ** 32 with
     Convention => C,
     Size       => 32;

   Code_Return                      : constant Key_Codes :=        16#D#;
   Code_Escape                      : constant Key_Codes :=       16#1B#;
   Code_Backspace                   : constant Key_Codes :=        16#8#;
   Code_Tab                         : constant Key_Codes :=        16#9#;
   Code_Space                       : constant Key_Codes :=       16#20#;
   Code_Exclamation                 : constant Key_Codes :=       16#21#;
   Code_Double_Quote                : constant Key_Codes :=       16#22#;
   Code_Hash                        : constant Key_Codes :=       16#23#;
   Code_Percent                     : constant Key_Codes :=       16#25#;
   Code_Dollar                      : constant Key_Codes :=       16#24#;
   Code_Ampersand                   : constant Key_Codes :=       16#26#;
   Code_Quote                       : constant Key_Codes :=       16#27#;
   Code_Left_Parenthesis            : constant Key_Codes :=       16#28#;
   Code_Right_Parenthesis           : constant Key_Codes :=       16#29#;
   Code_Asterisk                    : constant Key_Codes :=       16#2A#;
   Code_Plus                        : constant Key_Codes :=       16#2B#;
   Code_Comma                       : constant Key_Codes :=       16#2C#;
   Code_Minus                       : constant Key_Codes :=       16#2D#;
   Code_Period                      : constant Key_Codes :=       16#2E#;
   Code_Slash                       : constant Key_Codes :=       16#2F#;
   Code_0                           : constant Key_Codes :=       16#30#;
   Code_1                           : constant Key_Codes :=       16#31#;
   Code_2                           : constant Key_Codes :=       16#32#;
   Code_3                           : constant Key_Codes :=       16#33#;
   Code_4                           : constant Key_Codes :=       16#34#;
   Code_5                           : constant Key_Codes :=       16#35#;
   Code_6                           : constant Key_Codes :=       16#36#;
   Code_7                           : constant Key_Codes :=       16#37#;
   Code_8                           : constant Key_Codes :=       16#38#;
   Code_9                           : constant Key_Codes :=       16#39#;
   Code_Colon                       : constant Key_Codes :=       16#3A#;
   Code_Semi_Colon                  : constant Key_Codes :=       16#3B#;
   Code_Less                        : constant Key_Codes :=       16#3C#;
   Code_Equals                      : constant Key_Codes :=       16#3D#;
   Code_Greater                     : constant Key_Codes :=       16#3E#;
   Code_Question                    : constant Key_Codes :=       16#3F#;
   Code_At                          : constant Key_Codes :=       16#40#;

   --  Skip the uppercase letters.

   Code_Left_Bracket                : constant Key_Codes :=       16#5B#;
   Code_Back_Slash                  : constant Key_Codes :=       16#5C#;
   Code_Right_Bracket               : constant Key_Codes :=       16#5D#;
   Code_Caret                       : constant Key_Codes :=       16#5E#;
   Code_Underscore                  : constant Key_Codes :=       16#5F#;
   Code_Back_Quote                  : constant Key_Codes :=       16#60#;
   Code_A                           : constant Key_Codes :=       16#61#;
   Code_B                           : constant Key_Codes :=       16#62#;
   Code_C                           : constant Key_Codes :=       16#63#;
   Code_D                           : constant Key_Codes :=       16#64#;
   Code_E                           : constant Key_Codes :=       16#65#;
   Code_F                           : constant Key_Codes :=       16#66#;
   Code_G                           : constant Key_Codes :=       16#67#;
   Code_H                           : constant Key_Codes :=       16#68#;
   Code_I                           : constant Key_Codes :=       16#69#;
   Code_J                           : constant Key_Codes :=       16#6A#;
   Code_K                           : constant Key_Codes :=       16#6B#;
   Code_L                           : constant Key_Codes :=       16#6C#;
   Code_M                           : constant Key_Codes :=       16#6D#;
   Code_N                           : constant Key_Codes :=       16#6E#;
   Code_O                           : constant Key_Codes :=       16#6F#;
   Code_P                           : constant Key_Codes :=       16#70#;
   Code_Q                           : constant Key_Codes :=       16#71#;
   Code_R                           : constant Key_Codes :=       16#72#;
   Code_S                           : constant Key_Codes :=       16#73#;
   Code_T                           : constant Key_Codes :=       16#74#;
   Code_U                           : constant Key_Codes :=       16#75#;
   Code_V                           : constant Key_Codes :=       16#76#;
   Code_W                           : constant Key_Codes :=       16#77#;
   Code_X                           : constant Key_Codes :=       16#78#;
   Code_Y                           : constant Key_Codes :=       16#79#;
   Code_Z                           : constant Key_Codes :=       16#7A#;

   Code_Caps_Lock                   : constant Key_Codes := 16#40000039#;
   Code_F1                          : constant Key_Codes := 16#4000003A#;
   Code_F2                          : constant Key_Codes := 16#4000003B#;
   Code_F3                          : constant Key_Codes := 16#4000003C#;
   Code_F4                          : constant Key_Codes := 16#4000003D#;
   Code_F5                          : constant Key_Codes := 16#4000003E#;
   Code_F6                          : constant Key_Codes := 16#4000003F#;
   Code_F7                          : constant Key_Codes := 16#40000040#;
   Code_F8                          : constant Key_Codes := 16#40000041#;
   Code_F9                          : constant Key_Codes := 16#40000042#;
   Code_F10                         : constant Key_Codes := 16#40000043#;
   Code_F11                         : constant Key_Codes := 16#40000044#;
   Code_F12                         : constant Key_Codes := 16#40000045#;

   Code_Print_Screen                : constant Key_Codes := 16#40000046#;
   Code_Scroll_Lock                 : constant Key_Codes := 16#40000047#;
   Code_Pause                       : constant Key_Codes := 16#40000048#;
   Code_Insert                      : constant Key_Codes := 16#40000049#;
   Code_Home                        : constant Key_Codes := 16#4000004A#;
   Code_Page_Up                     : constant Key_Codes := 16#4000004B#;
   Code_Delete                      : constant Key_Codes :=       16#7F#;
   Code_End                         : constant Key_Codes := 16#4000004D#;
   Code_Page_Down                   : constant Key_Codes := 16#4000004E#;
   Code_Right                       : constant Key_Codes := 16#4000004F#;
   Code_Left                        : constant Key_Codes := 16#40000050#;
   Code_Down                        : constant Key_Codes := 16#40000051#;
   Code_Up                          : constant Key_Codes := 16#40000052#;

   Code_Num_Lock_Clear              : constant Key_Codes := 16#40000053#;
   Code_KP_Divide                   : constant Key_Codes := 16#40000054#;
   Code_KP_Multiply                 : constant Key_Codes := 16#40000055#;
   Code_KP_Minus                    : constant Key_Codes := 16#40000056#;
   Code_KP_Plus                     : constant Key_Codes := 16#40000057#;
   Code_KP_Enter                    : constant Key_Codes := 16#40000058#;
   Code_KP_1                        : constant Key_Codes := 16#40000059#;
   Code_KP_2                        : constant Key_Codes := 16#4000005A#;
   Code_KP_3                        : constant Key_Codes := 16#4000005B#;
   Code_KP_4                        : constant Key_Codes := 16#4000005C#;
   Code_KP_5                        : constant Key_Codes := 16#4000005D#;
   Code_KP_6                        : constant Key_Codes := 16#4000005E#;
   Code_KP_7                        : constant Key_Codes := 16#4000005F#;
   Code_KP_8                        : constant Key_Codes := 16#40000060#;
   Code_KP_9                        : constant Key_Codes := 16#40000061#;
   Code_KP_0                        : constant Key_Codes := 16#40000062#;
   Code_KP_Period                   : constant Key_Codes := 16#40000063#;

   Code_Application                 : constant Key_Codes := 16#40000065#;
   Code_Power                       : constant Key_Codes := 16#40000066#;
   Code_KP_Equals                   : constant Key_Codes := 16#40000067#;
   Code_F13                         : constant Key_Codes := 16#40000068#;
   Code_F14                         : constant Key_Codes := 16#40000069#;
   Code_F15                         : constant Key_Codes := 16#4000006A#;
   Code_F16                         : constant Key_Codes := 16#4000006B#;
   Code_F17                         : constant Key_Codes := 16#4000006C#;
   Code_F18                         : constant Key_Codes := 16#4000006D#;
   Code_F19                         : constant Key_Codes := 16#4000006E#;
   Code_F20                         : constant Key_Codes := 16#4000006F#;
   Code_F21                         : constant Key_Codes := 16#40000070#;
   Code_F22                         : constant Key_Codes := 16#40000071#;
   Code_F23                         : constant Key_Codes := 16#40000072#;
   Code_F24                         : constant Key_Codes := 16#40000073#;
   Code_Execute                     : constant Key_Codes := 16#40000074#;
   Code_Help                        : constant Key_Codes := 16#40000075#;
   Code_Menu                        : constant Key_Codes := 16#40000076#;
   Code_Select                      : constant Key_Codes := 16#40000077#;
   Code_Stop                        : constant Key_Codes := 16#40000078#;
   Code_Again                       : constant Key_Codes := 16#40000079#;
   Code_Undo                        : constant Key_Codes := 16#4000007A#;
   Code_Cut                         : constant Key_Codes := 16#4000007B#;
   Code_Copy                        : constant Key_Codes := 16#4000007C#;
   Code_Paste                       : constant Key_Codes := 16#4000007D#;
   Code_Find                        : constant Key_Codes := 16#4000007E#;
   Code_Mute                        : constant Key_Codes := 16#4000007F#;
   Code_Volume_Up                   : constant Key_Codes := 16#40000080#;
   Code_Volume_Down                 : constant Key_Codes := 16#40000081#;
   Code_KP_Comma                    : constant Key_Codes := 16#40000085#;
   Code_KP_Equals_AS400             : constant Key_Codes := 16#40000086#;

   Code_Alt_Erase                   : constant Key_Codes := 16#40000099#;
   Code_Sys_Req                     : constant Key_Codes := 16#4000009A#;
   Code_Cancel                      : constant Key_Codes := 16#4000009B#;
   Code_Clear                       : constant Key_Codes := 16#4000009C#;
   Code_Prior                       : constant Key_Codes := 16#4000009D#;
   Code_Return_2                    : constant Key_Codes := 16#4000009E#;
   Code_Separator                   : constant Key_Codes := 16#4000009F#;
   Code_Out                         : constant Key_Codes := 16#400000A0#;
   Code_Oper                        : constant Key_Codes := 16#400000A1#;
   Code_Clear_Again                 : constant Key_Codes := 16#400000A2#;
   Code_CR_Sel                      : constant Key_Codes := 16#400000A3#;
   Code_Ex_Sel                      : constant Key_Codes := 16#400000A4#;

   Code_KP_00                       : constant Key_Codes := 16#400000B0#;
   Code_KP_000                      : constant Key_Codes := 16#400000B1#;
   Code_Thousands_Separator         : constant Key_Codes := 16#400000B2#;
   Code_Decimal_Separator           : constant Key_Codes := 16#400000B3#;
   Code_Currency_Unit               : constant Key_Codes := 16#400000B4#;
   Code_Currency_Subunit            : constant Key_Codes := 16#400000B5#;
   Code_KP_Left_Parenthesis         : constant Key_Codes := 16#400000B6#;
   Code_KP_Right_Parentheesis       : constant Key_Codes := 16#400000B7#;
   Code_KP_Left_Brace               : constant Key_Codes := 16#400000B8#;
   Code_KP_Right_Brace              : constant Key_Codes := 16#400000B9#;
   Code_KP_Tab                      : constant Key_Codes := 16#400000BA#;
   Code_KP_Backspace                : constant Key_Codes := 16#400000BB#;
   Code_KP_A                        : constant Key_Codes := 16#400000BC#;
   Code_KP_B                        : constant Key_Codes := 16#400000BD#;
   Code_KP_C                        : constant Key_Codes := 16#400000BE#;
   Code_KP_D                        : constant Key_Codes := 16#400000BF#;
   Code_KP_E                        : constant Key_Codes := 16#400000C0#;
   Code_KP_F                        : constant Key_Codes := 16#400000C1#;
   Code_KP_XOR                      : constant Key_Codes := 16#400000C2#;
   Code_KP_Power                    : constant Key_Codes := 16#400000C3#;
   Code_KP_Percent                  : constant Key_Codes := 16#400000C4#;
   Code_KP_Less                     : constant Key_Codes := 16#400000C5#;
   Code_KP_Greater                  : constant Key_Codes := 16#400000C6#;
   Code_KP_Ampersand                : constant Key_Codes := 16#400000C7#;
   Code_KP_Double_Ampersand         : constant Key_Codes := 16#400000C8#;
   Code_KP_Vertical_Bar             : constant Key_Codes := 16#400000C9#;
   Code_KP_Double_Vertical_Bar      : constant Key_Codes := 16#400000CA#;
   Code_KP_Colon                    : constant Key_Codes := 16#400000CB#;
   Code_KP_Hash                     : constant Key_Codes := 16#400000CC#;
   Code_KP_Space                    : constant Key_Codes := 16#400000CD#;
   Code_KP_At                       : constant Key_Codes := 16#400000CE#;
   Code_KP_Exclamation              : constant Key_Codes := 16#400000CF#;
   Code_KP_Memory_Store             : constant Key_Codes := 16#400000D0#;
   Code_KP_Memory_Recall            : constant Key_Codes := 16#400000D1#;
   Code_KP_Memory_Clear             : constant Key_Codes := 16#400000D2#;
   Code_KP_Memory_Add               : constant Key_Codes := 16#400000D3#;
   Code_KP_Memory_Subtract          : constant Key_Codes := 16#400000D4#;
   Code_KP_Memory_Multiply          : constant Key_Codes := 16#400000D5#;
   Code_KP_Memory_Divide            : constant Key_Codes := 16#400000D6#;
   Code_KP_Plus_Minus               : constant Key_Codes := 16#400000D7#;
   Code_KP_Clear                    : constant Key_Codes := 16#400000D8#;
   Code_KP_Clear_Entry              : constant Key_Codes := 16#400000D9#;
   Code_KP_Binary                   : constant Key_Codes := 16#400000DA#;
   Code_KP_Octal                    : constant Key_Codes := 16#400000DB#;
   Code_KP_Decimal                  : constant Key_Codes := 16#400000DC#;
   Code_KP_Hexadecimal              : constant Key_Codes := 16#400000DD#;

   Code_Left_Control                : constant Key_Codes := 16#400000E0#;
   Code_Left_Shift                  : constant Key_Codes := 16#400000E1#;
   Code_Left_Alt                    : constant Key_Codes := 16#400000E2#;
   Code_Left_GUI                    : constant Key_Codes := 16#400000E3#;
   Code_Right_Control               : constant Key_Codes := 16#400000E4#;
   Code_Right_Shift                 : constant Key_Codes := 16#400000E5#;
   Code_Right_Alt                   : constant Key_Codes := 16#400000E6#;
   Code_Right_GUI                   : constant Key_Codes := 16#400000E7#;

   Code_Mode                        : constant Key_Codes := 16#40000101#;

   Code_Audio_Next                  : constant Key_Codes := 16#40000102#;
   Code_Audio_Previous              : constant Key_Codes := 16#40000103#;
   Code_Audio_Stop                  : constant Key_Codes := 16#40000104#;
   Code_Audio_Play                  : constant Key_Codes := 16#40000105#;
   Code_Audio_Mute                  : constant Key_Codes := 16#40000106#;
   Code_Media_Select                : constant Key_Codes := 16#40000107#;
   Code_WWW                         : constant Key_Codes := 16#40000108#;
   Code_Mail                        : constant Key_Codes := 16#40000109#;
   Code_Calculator                  : constant Key_Codes := 16#4000010A#;
   Code_Computer                    : constant Key_Codes := 16#4000010B#;
   Code_AC_Search                   : constant Key_Codes := 16#4000010C#;
   Code_AC_Home                     : constant Key_Codes := 16#4000010D#;
   Code_AC_Back                     : constant Key_Codes := 16#4000010E#;
   Code_AC_Forward                  : constant Key_Codes := 16#4000010F#;
   Code_AC_Stop                     : constant Key_Codes := 16#40000110#;
   Code_AC_Refresh                  : constant Key_Codes := 16#40000111#;
   Code_AC_Bookmarks                : constant Key_Codes := 16#40000112#;

   Code_Brightness_Down             : constant Key_Codes := 16#40000114#;
   Code_Brightness_Up               : constant Key_Codes := 16#40000113#;
   Code_Display_Switch              : constant Key_Codes := 16#40000115#;
   Code_Illumination_Toggle         : constant Key_Codes := 16#40000116#;
   Code_Illumination_Down           : constant Key_Codes := 16#40000117#;
   Code_Illumination_Up             : constant Key_Codes := 16#40000118#;
   Code_Eject                       : constant Key_Codes := 16#40000119#;
   Code_Sleep                       : constant Key_Codes := 16#4000011A#;

   function Value (Name : in String) return SDL.Events.Keyboards.Key_Codes with
     Inline => True;

   function Image (Key_Code : in SDL.Events.Keyboards.Key_Codes) return String with
     Inline => True;

   function To_Key_Code (Scan_Code : in SDL.Events.Keyboards.Scan_Codes) return SDL.Events.Keyboards.Key_Codes with
     Inline => True;

   function To_Scan_Code (Key_Code : in SDL.Events.Keyboards.Key_Codes) return SDL.Events.Keyboards.Scan_Codes with
     Inline => True;

   ------------------------------------------------------------------------------------------------------------------
   --  Key modifiers.
   ------------------------------------------------------------------------------------------------------------------
   type Key_Modifiers is mod 2 ** 16 with
     Convention => C,
     Size       => 16;

   Modifier_None          : constant Key_Modifiers := 16#00_00#;
   Modifier_Left_Shift    : constant Key_Modifiers := 16#00_01#;
   Modifier_Right_Shift   : constant Key_Modifiers := 16#00_02#;
   Modifier_Left_Control  : constant Key_Modifiers := 16#00_40#;
   Modifier_Right_Control : constant Key_Modifiers := 16#00_80#;
   Modifier_Left_Alt      : constant Key_Modifiers := 16#01_00#;
   Modifier_Right_Alt     : constant Key_Modifiers := 16#02_00#;
   Modifier_Left_GUI      : constant Key_Modifiers := 16#04_00#;
   Modifier_Right_GUI     : constant Key_Modifiers := 16#08_00#;
   Modifier_Num           : constant Key_Modifiers := 16#10_00#;
   Modifier_Caps          : constant Key_Modifiers := 16#20_00#;
   Modifier_Mode          : constant Key_Modifiers := 16#40_00#;
   Modifier_Control       : constant Key_Modifiers := Modifier_Left_Control or Modifier_Right_Control;
   Modifier_Shift         : constant Key_Modifiers := Modifier_Left_Shift or Modifier_Right_Shift;
   Modifier_Alt           : constant Key_Modifiers := Modifier_Left_Alt or Modifier_Right_Alt;
   Modifier_GUI           : constant Key_Modifiers := Modifier_Left_GUI or Modifier_Right_GUI;
   Modifier_Reserved      : constant Key_Modifiers := 16#80_00#;

   type Key_Syms is
      record
         Scan_Code : Scan_Codes;
         Key_Code  : Key_Codes;
         Modifiers : Key_Modifiers;
         Unused    : Interfaces.Unsigned_32;
      end record with
     Convention => C;

   type Keyboard_Events is
      record
         Event_Type : Event_Types;           --  Will be set to Key_Up/Down.
         Time_Stamp : Time_Stamps;

         ID         : SDL.Video.Windows.ID;
         State      : Button_State;
         Repeat     : Interfaces.Unsigned_8;
         Padding_2  : Padding_8;
         Padding_3  : Padding_8;
         Key_Sym    : Key_Syms;
      end record with
     Convention => C;

   ------------------------------------------------------------------------------------------------------------------
   --  Text editing events.
   ------------------------------------------------------------------------------------------------------------------
   Max_UTF8_Elements             : constant := 31;
   Max_UTF8_Element_Storage_Bits : constant := ((Max_UTF8_Elements + 1) * 8) - 1;

   subtype UTF8_Text_Buffers is Interfaces.C.char_array (0 .. Max_UTF8_Elements);

   type Cursor_Positions is range -2 ** 31 .. 2 ** 31 - 1 with
     Convention => C,
     Size       => 32;

   type Text_Lengths is range -2 ** 31 .. 2 ** 31 - 1 with
     Convention => C,
     Size       => 32;

   type Text_Editing_Events is
      record
         Event_Type : Event_Types;           --  Will be set to Text_Editing.
         Time_Stamp : Time_Stamps;

         ID         : SDL.Video.Windows.ID;
         Text       : UTF8_Text_Buffers;
         Start      : Cursor_Positions;      --  TODO: Find out why this needs to be a signed value!
         Length     : Text_Lengths;          --  TODO: Again, signed, why?
      end record with
     Convention => C;

   ------------------------------------------------------------------------------------------------------------------
   --  Text input events.
   ------------------------------------------------------------------------------------------------------------------
   type Text_Input_Events is
      record
         Event_Type : Event_Types;           --  Will be set to Text_Editing.
         Time_Stamp : Time_Stamps;

         ID         : SDL.Video.Windows.ID;
         Text       : UTF8_Text_Buffers;
      end record with
     Convention => C;

private
   for Key_Syms use
      record
         Scan_Code at 0 * SDL.Word range 0 .. 31;
         Key_Code  at 1 * SDL.Word range 0 .. 31;
         Modifiers at 2 * SDL.Word range 0 .. 15;
         Unused    at 3 * SDL.Word range 0 .. 31;
      end record;

   for Keyboard_Events use
      record
         Event_Type at 0 * SDL.Word range  0  .. 31;
         Time_Stamp at 1 * SDL.Word range  0  .. 31;

         ID         at 2 * SDL.Word range  0  .. 31;
         State      at 3 * SDL.Word range  0  ..  7;
         Repeat     at 3 * SDL.Word range  8  .. 15;
         Padding_2  at 3 * SDL.Word range  16 .. 23;
         Padding_3  at 3 * SDL.Word range  24 .. 31;
      end record;

   for Text_Editing_Events use
      record
         Event_Type at  0 * SDL.Word range  0  .. 31;
         Time_Stamp at  1 * SDL.Word range  0  .. 31;

         ID         at  2 * SDL.Word range  0  .. 31;
         Text       at  3 * SDL.Word range  0  .. Max_UTF8_Element_Storage_Bits; -- 31 characters.
         Start      at 11 * SDL.Word range  0  .. 31;
         Length     at 12 * SDL.Word range  0  .. 31;
      end record;

   for Text_Input_Events use
      record
         Event_Type at  0 * SDL.Word range  0  .. 31;
         Time_Stamp at  1 * SDL.Word range  0  .. 31;

         ID         at  2 * SDL.Word range  0  .. 31;
         Text       at  3 * SDL.Word range  0  .. Max_UTF8_Element_Storage_Bits; -- 31 characters.
      end record;
end SDL.Events.Keyboards;
