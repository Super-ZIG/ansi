
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`removeBuff`** 🧹

- #### **Definition**

    Removes ANSI escape sequences from a string using custom buffer.

- #### **Prototype**

    ```zig
    pub fn      removeBuff
    ( _str: str, _buff: anytype )
    !str
    ```

- #### **Parameters**

  - `_str`
      
      > String to cleanup.
  
  - `_buff`
      
      > Custom buffer.

- #### **Example**

    ```zig
    const text = "\x1b[30mHello, Zig!";

    var buffer: [255]u8 = undefined;

    try io.outWith("Clean Text : {s}\n", .{ try ansi.removeBuff(text, &buffer) });
    ```

    **_RESULT_**

    ```bash
    Clean Text : "Hello, Zig!"
    ```

- #### **Notes**
  
    - **Can throw errors, see [`ansi.Error`](#errors).**

- #### **Errors**

    ```zig
    pub const Error = error
    {
        BufferOverflow
    };
    ```

- ##### Related

  - ###### [`remove`](./remove.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).