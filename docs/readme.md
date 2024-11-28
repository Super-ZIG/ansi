# **[SuperZIG](https://github.com/Super-ZIG)** \ **[ANSI](../README.md)** \ Documentation 📚

| index                           |
| ------------------------------- |
| [Functions](#functions)         |
| [Functions : Styling](#styling) |
| [Functions : Tools](#tools)     |
| [Types](#types)                 |

---

- ## Functions

  - ### Styling

    - [style ( `_str`, `_opt` )](./func/style.md)
        
        > Applies ANSI styles (foreground, background, and attributes) to a string.

        ```zig
        pub fn      style
        ( _str: str, _opt: types.styles )
        !str
        ```

    - [styleBuff ( `_str`, `_opt`, `_buff` )](./func/styleBuff.md)
        
        > Applies ANSI styles to a string but writes the result to a specific buffer.

        ```zig
        pub fn      styleBuff
        ( _str: str, _opt: types.styles, _buff: anytype )
        !str
        ```

  - ### Tools

    - [strLen ( `_str` )](./func/strLen.md)
        
        > Calculates the length of a string excluding ANSI escape sequences.

        ```zig
        pub fn      strLen
        ( _str: str )
        usize
        ```

    - [len ( `_str` )](./func/len.md)
        
        > Calculates the length of ANSI codes in a string.

        ```zig
        pub fn      len
        ( _str: str )
        usize
        ```

    - [remove ( `_str` )](./func/remove.md)
        
        > Removes ANSI escape sequences from a string.

        ```zig
        pub fn      remove
        ( _str: str )
        !str
        ```

    - [removeBuff ( `_str`, `_buff` )](./func/removeBuff.md)
        
        > Removes ANSI escape sequences from a string using custom buffer.

        ```zig
        pub fn      removeBuff
        ( _str: str, _buff: anytype )
        !str
        ```

- ## Types

  - [types.color](./types/color.md)
    
    > _Enum of colors._

  - [types.attr](./types/attr.md)
    
    > _Enum of attributes._

  - [types.styles](./types/styles.md)
    
    > _Struct of styles._

  - [types.cursor](./types/cursor.md)
    
    > _Struct of cursor._

  - [types.earse](./types/earse.md)
    
    > _Struct of earse._

  - [types.scroll](./types/scroll.md)
    
    > _Struct of scroll._

  - [types.misc](./types/misc.md)
    
    > _Struct of misc._

---

Made with ❤️ by [Maysara](http://github.com/maysara-elshewehy).
