import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for support_text widget.
  TextEditingController? supportTextController;
  String? Function(BuildContext, String?)? supportTextControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    supportTextController?.dispose();
  }

  /// Additional helper methods are added here.

}
