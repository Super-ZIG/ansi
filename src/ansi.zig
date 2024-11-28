// ╔══════════════════════════════════════ LOAD ══════════════════════════════════════╗

    const       std                         = @import("std");

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔══════════════════════════════════════ DATA ══════════════════════════════════════╗

    pub const   types                       = @import("./types/_.zig");
    const       str                         = []const u8;

    var         g_sb  : [1024]u8            = undefined;    // style  buffer
    var         g_rb  : [1024]u8            = undefined;    // remove buffer

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔══════════════════════════════════════ .ERR ══════════════════════════════════════╗

    pub const   Error                       = error
    {
        BufferOverflow,
    };

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔═════════════════════════════════════ STYLE ══════════════════════════════════════╗

    /// Applies ANSI styles (foreground, background, and attributes) to a string.
    pub fn      style
    ( _str: str, _opt: types.styles )
    !str
    {
        var bf = std.io.fixedBufferStream(g_sb[0..]);
        return try Help.style( _str, _opt, &bf );
    }

    /// Applies ANSI styles to a string but writes the result to a specific buffer.
    pub fn      styleBuff
    ( _str: str, _opt: types.styles, _buff: anytype )
    !str
    {
        var bf = std.io.fixedBufferStream(_buff[0..]);
        return try Help.style( _str, _opt, &bf );
    }

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔═════════════════════════════════════ TOOLS ══════════════════════════════════════╗

    /// Calculates the length of a string excluding ANSI escape sequences.
    pub fn      strLen
    ( _str: str )
    usize
    {
        var strippedLength: usize = 0;
        var inEscapeCode: bool = false;

        for (_str) |c|
        {
            if (c == '\x1b')
            {
                inEscapeCode = true;
            }
            
            else if (inEscapeCode and (c == 'm'))
            {
                inEscapeCode = false;
            }
            
            else if (!inEscapeCode)
            {
                strippedLength += 1;
            }
        }
        
        return strippedLength;
    }

    /// Calculates the length of ANSI codes in a string.
    pub fn      len
    ( _str: str )
    usize
    {
        return _str.len - strLen(_str);
    }

    /// Removes ANSI escape sequences from a string.
    pub fn      remove
    ( _str: str )
    !str
    {
        return try Help.remove(_str, &g_rb);
    }

    /// Removes ANSI escape sequences from a string using custom buffer.
    pub fn      removeBuff
    ( _str: str, _buff: anytype )
    !str
    {
        return try Help.remove(_str, _buff);
    }

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔══════════════════════════════════════ HELP ══════════════════════════════════════╗

    const Help = struct
    {
        fn      style
        ( _str: str, _opt: types.styles, _buffStream: anytype )
        !str
        {
            const l_writer = _buffStream.writer();

            if (_opt.fgHEX) |hex|
            {
                const t_rgb = Help.hexToRGB(hex);
                try l_writer.print("\x1b[38;2;{d};{d};{d}m", .{ t_rgb[0], t_rgb[1], t_rgb[2] });
            }

            else if (_opt.fgRGB) |f_rgb|
            {
                try l_writer.print("\x1b[38;2;{d};{d};{d}m", .{ f_rgb[0], f_rgb[1], f_rgb[2] });
            }

            else if (_opt.fg) |f_fg|
            {
                try l_writer.writeAll(try Help.colorCode(f_fg, true));
            }

            // Handle background colors
            if (_opt.bgHEX) |f_hex|
            {
                const t_rgb = Help.hexToRGB(f_hex);
                try l_writer.print("\x1b[48;2;{d};{d};{d}m", .{ t_rgb[0], t_rgb[1], t_rgb[2] });
            }

            else if (_opt.bgRGB) |rgb|
            {
                try l_writer.print("\x1b[48;2;{d};{d};{d}m", .{ rgb[0], rgb[1], rgb[2] });
            }
            
            else if (_opt.bg) |bg|
            {
                try l_writer.writeAll(try Help.colorCode(bg, false));
            }

            // Add text attributes
            const l_attr_code: u8 = @intFromEnum(_opt.attr orelse .Default);

            if(l_attr_code != 99)
            try l_writer.print("\x1b[{d}m", .{ l_attr_code });

            // Write the text and reset
            try l_writer.writeAll(_str);
            try l_writer.writeAll("\x1b[0m");

            return _buffStream.getWritten();
        }

        fn      remove
        ( _str: str, _buff: anytype )
        !str
        {
            var l_index: usize = 0;

            var l_inEscapeCode: bool = false;

            for (_str) |f_c|
            {
                if (f_c == '\x1b')
                {
                    l_inEscapeCode = true;                            // Start of escape sequence
                }

                else if (l_inEscapeCode and f_c == 'm')
                {
                    l_inEscapeCode = false;                           // End of escape sequence
                }

                else if (!l_inEscapeCode)
                {
                    if (l_index >= _buff.len)
                    {
                        return Error.BufferOverflow;                // Prevent overflow if input is too large
                    }

                    _buff[l_index] = f_c;
                    l_index += 1;
                }
            }

            return _buff[0..l_index];                               // Return the slice of the filled part of the buffer
        }

        fn      colorCode
        ( _color: types.color, _isFg: bool ) 
        !str
        {
            var l_buff: [32]u8    = undefined;
            var l_buffStream      = std.io.fixedBufferStream(l_buff[0..]);
            var l_writer            = l_buffStream.writer();
            var l_val               = @intFromEnum(_color);

            if(!_isFg) l_val = l_val + 10;

            try l_writer.print("\x1b[{d}m", .{ l_val });

            return l_buffStream.getWritten();
        }

        fn      hexToRGB
        ( _hex: u32 ) 
        [3]u8
        {
            return
            .{
                @truncate((_hex >> 16) & 0xFF), // Red
                @truncate((_hex >> 8)  & 0xFF), // Green
                @truncate( _hex        & 0xFF), // Blue
            };
        }
    };

// ╚══════════════════════════════════════════════════════════════════════════════════╝