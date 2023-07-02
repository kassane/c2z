// auto generated by c2z
const std = @import("std");
//const cpp = @import("cpp");

pub fn Vector(comptime T: type) type {
    return extern struct {
        const Self = @This();

        Data: [*c]T,
        Size: c_int,
        Capacity: c_int,

        pub inline fn empty(self: *const Self) bool {
            return self.Size == 0;
        }
        pub inline fn size(self: *const Self) c_int {
            return self.Size;
        }
        pub inline fn size_in_bytes(self: *const Self) c_int {
            return self.Size * @as(c_int, @sizeOf(T));
        }
        pub inline fn getPtr(self: *Self, i: c_int) *T {
            return self.Data[i];
        }
        pub inline fn get(self: *const Self, i: c_int) *const T {
            return self.Data[i];
        }
    };
}
