
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`remove`** 🧹

- #### **Definition**

    Removes ANSI escape sequences from a string.

- #### **Prototype**

    ```zig
    pub fn      remove
    ( _str: str )
    !str
    ```

- #### **Parameters**

  - `_str`
      
      > String to cleanup.
  
- #### **Example**

    ```zig
    const text = "\x1b[30mHello, Zig!";

    try io.outWith("Clean Text : {s}\n", .{ try ansi.remove(text) });
    ```

    **_RESULT_**

    ```bash
    Clean Text : "Hello, Zig!"
    ```

- #### **Notes**
  
    - **Uses internal global buffer with size `1024`.**

    - **Can throw errors, see [`ansi.Error`](#errors).**

- #### **Errors**

    ```zig
    pub const Error = error
    {
        BufferOverflow
    };
    ```

- ##### Related

  - ###### [`removeBuff`](./removeBuff.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).