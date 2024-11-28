
# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../../README.md)** \ **[Docs](../readme.md)** \ **`style`** ✨

- #### **Definition**

    Applies ANSI styles (foreground, background, and attributes) to a string.

- #### **Prototype**

    ```zig
    pub fn      style
    ( _str: []const u8, _opt: types.styles )
    !str
    ```

- #### **Parameters**

  - `_str`
      
      > Style text.

  - `_opt`
    
    > Style options.

- #### **Example**

    ```zig
    try io.outWith( "{s} ", .{ try ansi.style("RedFG", .{ .fg = .Red  } ) } );
    ```
    > ![res1](../dist/res2.png)

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

  - ###### [`types.styles`](../types/styles.md)
  
  - ###### [`styleBuff`](./styleBuff.md)

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).