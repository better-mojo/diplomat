// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

class AttrOpaque2 implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  AttrOpaque2._(this._underlying) {
    _finalizer.attach(this, _underlying.cast());
  }

  static final _finalizer = ffi.NativeFinalizer(_capi('AttrOpaque2_destroy'));
}