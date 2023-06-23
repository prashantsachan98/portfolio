// universal_html_stub.dart

class IFrameElement {
  String? width;
  String? height;
  String? src;
  final style = _Style();
}

class _Style {
  String? border;
}

class IFrameElementView {
  IFrameElementView({required String viewType, void Function(int viewId)? onPlatformViewCreated});
}

class document {
  static var body;
}
