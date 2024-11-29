// ╔══════════════════════════════════════ FILE ══════════════════════════════════════╗

    const std       = @import("std");
    const ansiMin   = @import("./dist/ansi.min.zig");
    const ansiFull  = @import("./src/ansi.zig");
    const ansi      = ansiFull;

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔══════════════════════════════════════ CORE ══════════════════════════════════════╗

    pub fn main() !void
    {
        try io.out("");
        try io.out("");

        TRY("Attributes");
        {
            try io.outWith(" {s},", .{ try ansi.style("Bold",               .{ .attr=.Bold              } ) });
            try io.outWith(" {s},", .{ try ansi.style("Dim",                .{ .attr=.Dim               } ) });
            try io.outWith(" {s},", .{ try ansi.style("Italic",             .{ .attr=.Italic            } ) });
            try io.outWith(" {s},", .{ try ansi.style("Underline",          .{ .attr=.Underline         } ) });
            try io.outWith(" {s},", .{ try ansi.style("DoubleUnderline",    .{ .attr=.DoubleUnderline   } ) });
            try io.outWith(" {s},", .{ try ansi.style("Strikethrough",      .{ .attr=.Strikethrough     } ) });
            try io.outWith(" {s} ", .{ try ansi.style("Reverse",            .{ .attr=.Reverse           } ) });

            try io.out("");
        }
        try io.out("");

        TRY("Foreground");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .fg=.Black})     });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .fg=.Red})       });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .fg=.Green})     });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .fg=.Blue})      });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .fg=.Yellow})    });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .fg=.Cyan})      });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .fg=.Magenta})   });
            try io.outWith(" {s} ", .{ try ansi.style("White",              .{ .fg=.White})     });
            try io.out("");
        }

        TRY("Foreground RGB");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .fgRGB=.{ 0  ,0  ,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .fgRGB=.{ 255,0  ,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .fgRGB=.{ 0  ,255,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .fgRGB=.{ 0  ,0  ,255 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .fgRGB=.{ 255,255,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .fgRGB=.{ 0  ,255,255 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .fgRGB=.{ 255,0  ,255 } } ) });
            try io.outWith(" {s} ", .{ try ansi.style("White",              .{ .fgRGB=.{ 255,255,255 } } ) });

            try io.out("");
        }
        try io.out("");

        TRY("Foreground HEX");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .fgHEX=0x000000 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .fgHEX=0xFF0000 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .fgHEX=0x00FF00 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .fgHEX=0x0000FF } ) });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .fgHEX=0xFFFF00 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .fgHEX=0x00FFFF } ) });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .fgHEX=0xFF00FF } ) });
            try io.outWith(" {s} ", .{ try ansi.style("White",              .{ .fgHEX=0xFFFFFF } ) });

            try io.out("");
        }

        TRY("Background");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .bg=.Black       } ) });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .bg=.Red         } ) });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .bg=.Green       } ) });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .bg=.Blue        } ) });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .bg=.Yellow      } ) });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .bg=.Cyan        } ) });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .bg=.Magenta     } ) });
            try io.outWith(" {s},", .{ try ansi.style("White",              .{ .bg=.White       } ) });
            try io.out("");
        }

        TRY("Background RGB");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .bgRGB=.{ 0  ,0  ,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .bgRGB=.{ 255,0  ,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .bgRGB=.{ 0  ,255,  0 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .bgRGB=.{ 0  ,0  ,255 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .bgRGB=.{ 255,255,0   } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .bgRGB=.{ 0  ,255,255 } } ) });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .bgRGB=.{ 255,0  ,255 } } ) });
            try io.outWith(" {s} ", .{ try ansi.style("White",              .{ .bgRGB=.{ 255,255,255 } } ) });

            try io.out("");
        }

        TRY("Background HEX");
        {
            try io.outWith(" {s},", .{ try ansi.style("Black",              .{ .bgHEX=0x000000 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Red",                .{ .bgHEX=0xFF0000 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Green",              .{ .bgHEX=0x00FF00 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Blue",               .{ .bgHEX=0x0000FF } ) });
            try io.outWith(" {s},", .{ try ansi.style("Yellow",             .{ .bgHEX=0xFFFF00 } ) });
            try io.outWith(" {s},", .{ try ansi.style("Cyan",               .{ .bgHEX=0x00FFFF } ) });
            try io.outWith(" {s},", .{ try ansi.style("Magenta",            .{ .bgHEX=0xFF00FF } ) });
            try io.outWith(" {s},", .{ try ansi.style("White",              .{ .bgHEX=0xFFFFFF } ) });
            
            try io.out("");
        }

        TRY("Length");
        {
            const l_dummy = "\x1b[30mHello, Zig!";
            try io.outWith("FULL   length   : {d}\n",                       .{ l_dummy.len          });
            try io.outWith("ANSI   length   : {d}\n",                       .{ ansi.len(l_dummy)    });
            try io.outWith("string length   : {d}\n",                       .{ ansi.strLen(l_dummy) });
        }

        TRY("Remove");
        {
            const text = "\x1b[30mHello, Zig!";
            try io.outWith("remove      : {s}\n",                           .{ try ansi.remove(text)                 });

            var buffer: [255]u8 = undefined;
            try io.outWith("removeBuff  : {s}\n",                           .{ try ansi.removeBuff(text, &buffer) });
        }

        TRY("styleBuff");
        {
            var buffer: [255]u8 = undefined;
            try io.outWith("styleBuff   : {s}\n",                           .{ try ansi.styleBuff("Red/White/Bold", .{ .fg=.Red, .bg=.White, .attr=.Bold }, &buffer ) });
        }

        try io.out("");
        try io.out("");
    }

    

// ╚══════════════════════════════════════════════════════════════════════════════════╝



// ╔══════════════════════════════════════ MORE ══════════════════════════════════════╗

    pub fn TRY (_msg: []const u8) void
    {
        // io.cls() catch unreachable;

        io.outWith("\n[{s}] \n", .{ _msg }) catch unreachable;
    }

    /// @ref https://github.com/Super-ZIG/io/blob/main/dist/io.min.zig
    const io = struct {
        /// Outputs a simple message followed by a newline.
        inline fn out( comptime _msg: []const u8 ) !void {
            try outWith(_msg ++ "\n", .{}); }

        /// Outputs a formatted message to the console.
        inline fn outWith( comptime _fmt: []const u8, _args: anytype ) !void {
            try nosuspend std.io.getStdOut().writer().print(_fmt, _args); }
    };

// ╚══════════════════════════════════════════════════════════════════════════════════╝
