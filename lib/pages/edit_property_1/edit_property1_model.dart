import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/change_main_photo/change_main_photo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_property1_widget.dart' show EditProperty1Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty1Model extends FlutterFlowModel<EditProperty1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameController;
  String? Function(BuildContext, String?)? propertyNameControllerValidator;
  String? _propertyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'We need to know the name of the place...';
    }

    return null;
  }

  // State field(s) for propertyAddress widget.
  FocusNode? propertyAddressFocusNode;
  TextEditingController? propertyAddressController;
  String? Function(BuildContext, String?)? propertyAddressControllerValidator;
  // State field(s) for propertyNeighborhood widget.
  FocusNode? propertyNeighborhoodFocusNode;
  TextEditingController? propertyNeighborhoodController;
  String? Function(BuildContext, String?)?
      propertyNeighborhoodControllerValidator;
  // State field(s) for propertyDescription widget.
  FocusNode? propertyDescriptionFocusNode;
  TextEditingController? propertyDescriptionController;
  String? Function(BuildContext, String?)?
      propertyDescriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    propertyNameControllerValidator = _propertyNameControllerValidator;
  }

  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameController?.dispose();

    propertyAddressFocusNode?.dispose();
    propertyAddressController?.dispose();

    propertyNeighborhoodFocusNode?.dispose();
    propertyNeighborhoodController?.dispose();

    propertyDescriptionFocusNode?.dispose();
    propertyDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
