
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`styleBuff`** ✨

- #### **Definition**

    Applies ANSI styles to a string but writes the result to a specific buffer.

- #### **Prototype**

    ```zig
    pub fn      styleBuff
    ( _str: str, _opt: types.styles, _buff: anytype )
    !str
    ```

- #### **Parameters**

  - `_str`
      
    > Style text.

  - `_opt`
    
    > Style options.

  - `_buff`
    
    > Custom buffer.

- #### **Example**

    ```zig
    var buffer: [255]u8 = undefined;
    try io.outWith("{s}\n", .{ try ansi.styleBuff("RedFG", .{ .fg = .Red }, &buffer ) });
    ```

    > ![res1](../dist/res2.png)

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

  - ###### [`types.styles`](../types/styles.md)
  
  - ###### [`style`](./style.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).