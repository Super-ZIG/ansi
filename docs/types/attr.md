
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`types.attr`**

- #### **Definition**

    Enum of attributes.

- #### **Prototype**

    ```zig
    pub const attr = enum(u8)
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
    ```

- ##### Related

  - ###### [`types.color`](./color.md)

  - ###### [`types.styles`](./styles.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).