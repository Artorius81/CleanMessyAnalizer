import '/flutter_flow/flutter_flow_util.dart';
import 'greetings_widget.dart' show GreetingsWidget;
import 'package:flutter/material.dart';

class GreetingsModel extends FlutterFlowModel<GreetingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
