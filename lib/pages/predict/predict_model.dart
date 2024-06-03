import '/flutter_flow/flutter_flow_util.dart';
import 'predict_widget.dart' show PredictWidget;
import 'package:flutter/material.dart';

class PredictModel extends FlutterFlowModel<PredictWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
