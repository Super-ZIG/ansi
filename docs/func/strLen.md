
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`strLen`** 📏

- #### **Definition**

    Calculates the length of a string excluding ANSI escape sequences.

- #### **Prototype**

    ```zig
    pub fn      strLen
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

  - ###### [`len`](./len.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).