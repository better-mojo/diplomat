// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X data provider, capable of loading ICU4X data keys from some source.
///
/// See the [Rust documentation for `icu_provider`](https://docs.rs/icu_provider/latest/icu_provider/index.html) for more information.
final class ICU4XDataProvider implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  ICU4XDataProvider._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_ICU4XDataProvider_mv1_destroy));

  /// See the [Rust documentation for `get_static_provider`](https://docs.rs/icu_testdata/latest/icu_testdata/fn.get_static_provider.html) for more information.
  factory ICU4XDataProvider.static_() {
    final result = _icu4x_ICU4XDataProvider_new_static_mv1();
    return ICU4XDataProvider._fromFfi(result, []);
  }

  /// This exists as a regression test for https://github.com/rust-diplomat/diplomat/issues/155
  static bool returnsResult() {
    final result = _icu4x_ICU4XDataProvider_returns_result_mv1();
    return result.isOk;
  }
}

@meta.ResourceIdentifier('icu4x_ICU4XDataProvider_mv1_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_ICU4XDataProvider_mv1_destroy')
// ignore: non_constant_identifier_names
external void _icu4x_ICU4XDataProvider_mv1_destroy(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('icu4x_ICU4XDataProvider_new_static_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'icu4x_ICU4XDataProvider_new_static_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_ICU4XDataProvider_new_static_mv1();

@meta.ResourceIdentifier('icu4x_ICU4XDataProvider_returns_result_mv1')
@ffi.Native<_ResultVoidVoid Function()>(isLeaf: true, symbol: 'icu4x_ICU4XDataProvider_returns_result_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _icu4x_ICU4XDataProvider_returns_result_mv1();
