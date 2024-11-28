
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`types.color`**

- #### **Definition**

    Enum of colors.

- #### **Prototype**

    ```zig
    pub const color = enum(u8)
    {
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
    ```

- ##### Related

  - ###### [`types.styles`](./styles.md)
  
  - ###### [`types.attr`](./attr.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).