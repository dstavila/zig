test "enum" {
    const E = enum(u8) { A, B, _ };
    _ = @tagName(@intToEnum(E, 5));
}

// error
// backend=stage2
// target=native
// is_test=1
//
// :3:9: error: no field with value '@intToEnum(tmp.test.enum.E, 5)' in enum 'test.enum.E'
// :2:15: note: declared here
