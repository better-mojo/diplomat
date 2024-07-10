// generated by diplomat-tool
import type { Bar } from "./Bar"
import type { BorrowedFields } from "./BorrowedFields"
import type { BorrowedFieldsReturning } from "./BorrowedFieldsReturning"
import type { BorrowedFieldsWithBounds } from "./BorrowedFieldsWithBounds"
import type { u8, i8, u16, i16, u32, i32, u64, i64, usize, isize, f32, f64, pointer, char } from "./diplomat-runtime.d.ts";

export class Foo {
    

    get ffiValue(): pointer;


    static new_(x: string): Foo;

    get bar(): Bar;

    static newStatic(x: string): Foo;

    asReturning(): BorrowedFieldsReturning;

    static extractFromFields(fields: BorrowedFields): Foo;

    static extractFromBounds(bounds: BorrowedFieldsWithBounds, anotherString: string): Foo;

    

}