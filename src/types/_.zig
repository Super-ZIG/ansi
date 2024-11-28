// ╔══════════════════════════════════════ TYPE ══════════════════════════════════════╗

    const str = []const u8;

    /// Struct of styles.
    pub const   styles      = struct
    {
        fg      : ?color        = undefined,
        bg      : ?color        = undefined,
        fgRGB   : ?[3]u8        = undefined,
        bgRGB   : ?[3]u8        = undefined,
        fgHEX   : ?u32          = undefined,
        bgHEX   : ?u32          = undefined,
        attr    : ?attr         = undefined,
    };

    /// Enum of colors.
    pub const   color       = enum(u8)
    {
        //                      = fg, bg = fg + 10
        Black                   = 30,
        Red                     = 31,
        Green                   = 32,
        Yellow                  = 33,
        Blue                    = 34,
        Magenta                 = 35,
        Cyan                    = 36,
        White                   = 37,

        GreyOrBrightBlack       = 90,
        BrightRed               = 91,
        BrightGreen             = 92,
        BrightYellow            = 93,
        BrightBlue              = 94,
        BrightMagenta           = 95,
        BrightCyan              = 96,
        BrightWhite             = 97,

        Reset                   = 49,
    };

    /// Enum of attributes.
    pub const   attr        = enum(u8)
    {
        Reset                   = 0,
        Bold                    = 1,
        Dim                     = 2,
        Italic                  = 3,
        Underline               = 4,
        Blink                   = 5,
        Reverse                 = 7,
        Hidden                  = 8,
        Strikethrough           = 9,
        DoubleUnderline         = 21,
        Framed                  = 51,
        Encircled               = 52,
        Overlined               = 53,
        Default                 = 99,
    };

    /// Struct of cursor.
    pub const   cursor      = struct
    {
        pub const SavePosition            = "s";
        pub const RestorePosition         = "u";
        pub const Hide                    = "?25l";
        pub const Show                    = "?25h";
        pub const NextLine                = "E";
        pub const PrevLine                = "F";
        pub const Forward                 = "G";
        pub const Backward                = "H";
        pub const MoveTo                  = "{line};{column}H";
    };

    /// Struct of earse.
    pub const   erase       = struct
    {
        pub const Line                    = "2K";
        pub const Screen                  = "2J";
        pub const Down                    = "J";
    };

    /// Struct of scroll.
    pub const   scroll      = struct
    {
        pub const Up                      = "S";
        pub const Down                    = "T";
    };

    /// Struct of misc.
    pub const   misc        = struct
    {
        pub const ResetAll               = "0m";
        pub const ResetCursor            = "?25l\\u001b[?0c";
        pub const ResetColors            = "39;49m";
        pub const ResetScreen            = "2J\\u001b[1;1H";
        pub const ResetLine              = "2K\\u001b[1G";
    };

// ╚══════════════════════════════════════════════════════════════════════════════════╝