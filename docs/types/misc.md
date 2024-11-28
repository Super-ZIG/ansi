
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`types.misc`**

- #### **Definition**

    Struct of misc.

- #### **Prototype**

    ```zig
    pub const misc = struct
    {
        pub const ResetAll               = "0m";
        pub const ResetCursor            = "?25l\\u001b[?0c";
        pub const ResetColors            = "39;49m";
        pub const ResetScreen            = "2J\\u001b[1;1H";
        pub const ResetLine              = "2K\\u001b[1G"; // TODO: I don't like it !
    };
    ```

- ##### Related

  - ###### [`types.cursor`](./cursor.md)
  
  - ###### [`types.erase`](./erase.md)

  - ###### [`types.scroll`](./scroll.md)
  
---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).