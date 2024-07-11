// generated by diplomat-tool

part of 'lib.g.dart';

/// See the [Rust documentation for `FixedDecimal`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html) for more information.
final class ICU4XFixedDecimal implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  ICU4XFixedDecimal._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_ICU4XFixedDecimal_mv1_destroy));

  /// Construct an [`ICU4XFixedDecimal`] from an integer.
  factory ICU4XFixedDecimal(int v) {
    final result = _icu4x_ICU4XFixedDecimal_new_mv1(v);
    return ICU4XFixedDecimal._fromFfi(result, []);
  }

  /// Multiply the [`ICU4XFixedDecimal`] by a given power of ten.
  ///
  /// See the [Rust documentation for `multiply_pow10`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.multiply_pow10) for more information.
  void multiplyPow10(int power) {
    _icu4x_ICU4XFixedDecimal_multiply_pow10_mv1(_ffi, power);
  }

  /// Format the [`ICU4XFixedDecimal`] as a string.
  ///
  /// See the [Rust documentation for `write_to`](https://docs.rs/fixed_decimal/latest/fixed_decimal/struct.FixedDecimal.html#method.write_to) for more information.
  String? toStringFallible() {
    final write = _Write();
    final result = _icu4x_ICU4XFixedDecimal_to_string_mv1(_ffi, write._ffi);
    if (!result.isOk) {
      return null;
    }
    return write.finalize();
  }
}

@meta.ResourceIdentifier('icu4x_ICU4XFixedDecimal_mv1_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_ICU4XFixedDecimal_mv1_destroy')
// ignore: non_constant_identifier_names
external void _icu4x_ICU4XFixedDecimal_mv1_destroy(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('icu4x_ICU4XFixedDecimal_new_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Int32)>(isLeaf: true, symbol: 'icu4x_ICU4XFixedDecimal_new_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_ICU4XFixedDecimal_new_mv1(int v);

@meta.ResourceIdentifier('icu4x_ICU4XFixedDecimal_multiply_pow10_mv1')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int16)>(isLeaf: true, symbol: 'icu4x_ICU4XFixedDecimal_multiply_pow10_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_ICU4XFixedDecimal_multiply_pow10_mv1(ffi.Pointer<ffi.Opaque> self, int power);

@meta.ResourceIdentifier('icu4x_ICU4XFixedDecimal_to_string_mv1')
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_ICU4XFixedDecimal_to_string_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _icu4x_ICU4XFixedDecimal_to_string_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);
