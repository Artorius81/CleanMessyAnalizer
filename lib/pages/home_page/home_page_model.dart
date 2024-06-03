import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (imagePOST)] action in Button widget.
  ApiCallResponse? apiResulty2c;
  // Stores action output result for [Backend Call - API (getPredict)] action in Button widget.
  ApiCallResponse? apiResultr92;
  // Stores action output result for [Backend Call - API (getModelInfo)] action in Button widget.
  ApiCallResponse? apiResultvog;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
