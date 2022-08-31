# CS50 Library for Zig

[![](https://img.shields.io/github/v/tag/thechampagne/cs50-zig?label=version)](https://github.com/thechampagne/cs50-zig/releases/latest) [![](https://img.shields.io/github/license/thechampagne/cs50-zig)](https://github.com/thechampagne/cs50-zig/blob/main/LICENSE)


### Usage

```zig
pub fn main() !void {
    const input = try getI8(allocator,"Prompt: ");

    const input = try getI16(allocator,"Prompt: ");

    const input = try getI32(allocator,"Prompt: ");

    const input = try getI64(allocator,"Prompt: ");

    const input = try getI128(allocator,"Prompt: ");

    const input = try getIsize(allocator,"Prompt: ");

    const input = try getU8(allocator,"Prompt: ");

    const input = try getU16(allocator,"Prompt: ");

    const input = try getU32(allocator,"Prompt: ");

    const input = try getU64(allocator,"Prompt: ");

    const input = try getU128(allocator,"Prompt: ");

    const input = try getUsize(allocator,"Prompt: ");

    const input = try getCshort(allocator,"Prompt: ");

    const input = try getCint(allocator,"Prompt: ");

    const input = try getClong(allocator,"Prompt: ");

    const input = try getClonglong(allocator,"Prompt: ");

    const input = try getClongdouble(allocator,"Prompt: ");

    const input = try getCushort(allocator,"Prompt: ");

    const input = try getCuint(allocator,"Prompt: ");

    const input = try getCulong(allocator,"Prompt: ");

    const input = try getCulonglong(allocator,"Prompt: ");

    const input = try getF16(allocator,"Prompt: ");

    const input = try getF32(allocator,"Prompt: ");

    const input = try getF64(allocator,"Prompt: ");

    const input = try getF128(allocator,"Prompt: ");

    const input = try getBool(allocator,"Prompt: ");

    const input = try getString(allocator,"Prompt: ");

    const input = try getByte(allocator,"Prompt: ");
}
```

### License

This repo is released under the [MIT](https://github.com/thechampagne/cs50-zig/blob/main/LICENSE).