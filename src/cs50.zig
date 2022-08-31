// Copyright (c) 2022 XXIV
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
const std = @import("std");

const Error = error {
    NotBool
};

fn readString(allocator: std.mem.Allocator, delimiter: u8) ![]u8 {
    const stdin = std.io.getStdIn().reader();
    var buffer = try allocator.alloc(u8, 0);
    errdefer allocator.free(buffer);
    var i: usize = 0;
    var byte = try stdin.readByte();
    while (byte != delimiter ) : ({ byte = try stdin.readByte(); i += 1; }) {
        buffer = try allocator.realloc(buffer, (i + 1));
        buffer[i] = byte;
    }
    return buffer;
}

pub fn getI8(allocator: std.mem.Allocator, str: []const u8) !i8 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(i8, string, 10);
    return value;
}

pub fn getI16(allocator: std.mem.Allocator, str: []const u8) !i16 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(i16, string, 10);
    return value;
}

pub fn getI32(allocator: std.mem.Allocator, str: []const u8) !i32 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(i32, string, 10);
    return value;
}

pub fn getI64(allocator: std.mem.Allocator, str: []const u8) !i64 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(i64, string, 10);
    return value;
}

pub fn getI128(allocator: std.mem.Allocator, str: []const u8) !i128 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(i128, string, 10);
    return value;
}

pub fn getIsize(allocator: std.mem.Allocator, str: []const u8) !isize {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(isize, string, 10);
    return value;
}

pub fn getU8(allocator: std.mem.Allocator, str: []const u8) !u8 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(u8, string, 10);
    return value;
}

pub fn getU16(allocator: std.mem.Allocator, str: []const u8) !u16 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(u16, string, 10);
    return value;
}

pub fn getU32(allocator: std.mem.Allocator, str: []const u8) !u32 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(u32, string, 10);
    return value;
}

pub fn getU64(allocator: std.mem.Allocator, str: []const u8) !u64 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(u64, string, 10);
    return value;
}

pub fn getU128(allocator: std.mem.Allocator, str: []const u8) !u128 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(u128, string, 10);
    return value;
}

pub fn getUsize(allocator: std.mem.Allocator, str: []const u8) !usize {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(usize, string, 10);
    return value;
}

pub fn getCshort(allocator: std.mem.Allocator, str: []const u8) !c_short {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_short, string, 10);
    return value;
}

pub fn getCint(allocator: std.mem.Allocator, str: []const u8) !c_int {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_int, string, 10);
    return value;
}

pub fn getClong(allocator: std.mem.Allocator, str: []const u8) !c_long {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_long, string, 10);
    return value;
}

pub fn getClonglong(allocator: std.mem.Allocator, str: []const u8) !c_longlong {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_longlong, string, 10);
    return value;
}

pub fn getClongdouble(allocator: std.mem.Allocator, str: []const u8) !c_longdouble {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_longdouble, string, 10);
    return value;
}

pub fn getCushort(allocator: std.mem.Allocator, str: []const u8) !c_ushort {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_ushort, string, 10);
    return value;
}

pub fn getCuint(allocator: std.mem.Allocator, str: []const u8) !c_uint {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_uint, string, 10);
    return value;
}

pub fn getCulong(allocator: std.mem.Allocator, str: []const u8) !c_ulong {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_ulong, string, 10);
    return value;
}

pub fn getCulonglong(allocator: std.mem.Allocator, str: []const u8) !c_ulonglong {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseInt(c_ulonglong, string, 10);
    return value;
}

pub fn getF16(allocator: std.mem.Allocator, str: []const u8) !f16 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseFloat(f16, string);
    return value;
}

pub fn getF32(allocator: std.mem.Allocator, str: []const u8) !f32 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseFloat(f32, string);
    return value;
}

pub fn getF64(allocator: std.mem.Allocator, str: []const u8) !f64 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseFloat(f64, string);
    return value;
}

pub fn getF128(allocator: std.mem.Allocator, str: []const u8) !f128 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const value = try std.fmt.parseFloat(f128, string);
    return value;
}

pub fn getBool(allocator: std.mem.Allocator, str: []const u8) !bool {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    if (std.mem.eql(u8, string, "true")) {
        return true;
    } else if (std.mem.eql(u8, string, "false")) {
        return false;
    } else {
        return Error.NotBool;
    }
}

pub fn getString(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    return string;
}

pub fn getByte(allocator: std.mem.Allocator, str: []const u8) !u8 {
    try std.io.getStdOut().writer().print("{s}", .{str});
    const string = try readString(allocator, '\n');
    defer allocator.free(string);
    const byte = string[0];
    return byte;
}