
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`len`** 📏

- #### **Definition**

    Calculates the length of ANSI codes in a string.

- #### **Prototype**

    ```zig
    pub fn      len
    ( _str: []const u8 )
    usize
    ```

- #### **Parameters**

  - `_str`
      
      > String to calc.

- #### **Example**

    ```zig
    const text = "\x1b[30mHello, Zig!";
    try io.outWith("Full length : {d}\n", .{ text.len          });
    try io.outWith("Ansi length : {d}\n", .{ ansi.len(text)    });
    try io.outWith("Norm length : {d}\n", .{ ansi.strLen(text) });
    ```

    **_RESULT_**

    ```bash
    Full length : 16
    Ansi length : 5
    Norm length : 11
    ```

- ##### Related

  - ###### [`strLen`](./strLen.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).