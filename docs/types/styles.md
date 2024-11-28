
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`types.styles`**

- #### **Definition**

    Struct of styles.

- #### **Prototype**

    ```zig
    pub const styles = struct
    {
        fg      : ?color        = undefined,
        bg      : ?color        = undefined,
        fgRGB   : ?[3]u8        = undefined,
        bgRGB   : ?[3]u8        = undefined,
        fgHEX   : ?u32          = undefined,
        bgHEX   : ?u32          = undefined,
        attr    : ?attr         = undefined,
    };
    ```

- ##### Related

  - ###### [`types.color`](./color.md)
  
  - ###### [`types.attr`](./attr.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).