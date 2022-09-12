import 'package:flutter/cupertino.dart';

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    required this.child,
    this.keepAlive = false,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool keepAlive;

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
