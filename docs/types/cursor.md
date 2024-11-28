
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`types.cursor`**

- #### **Definition**

    Struct of cursor.

- #### **Prototype**

    ```zig
    pub const cursor = struct
    {
        pub const SavePosition            = "s";
        pub const RestorePosition         = "u";
        pub const Hide                    = "?25l";
        pub const Show                    = "?25h";
        pub const NextLine                = "E";
        pub const PrevLine                = "F";
        pub const Forward                 = "G";
        pub const Backward                = "H";
        pub const MoveTo                  = "{line};{column}H"; // TODO: need a function to parse it!
    };
    ```

- ##### Related

  - ###### [`types.erase`](./erase.md)
  
  - ###### [`types.scroll`](./scroll.md)

  - ###### [`types.misc`](./misc.md)
  
---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).