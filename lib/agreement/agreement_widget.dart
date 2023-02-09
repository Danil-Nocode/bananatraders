import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgreementWidget extends StatefulWidget {
  const AgreementWidget({Key? key}) : super(key: key);

  @override
  _AgreementWidgetState createState() => _AgreementWidgetState();
}

class _AgreementWidgetState extends State<AgreementWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Acuerdo de usuario',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Akzidenz Grotesk Pro',
                color: Colors.white,
                fontSize: 22,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          '1. The terms used in the Privacy Policy of the mobile application are used in the following meanings:\n* 1.1. User - an individual using the Application.\n* 1.2. Application - a set of programs, databases for computers under the name \"Mobile application \"We go to the store\", the copyright holder of which is the Company.\n1.3. Company - IP Kolosova Natalia Anatolyevna (TIN: 262517025457 , address: 115054, Moscow, Shchipok street, building 22, building 4, floor 1 room No. 2) (hereinafter referred to as the Company), which is the developer, copyright holder and supplier of the Application.\n* 1.4. Device - a mobile technical device (smartphone, tablet or other device) that has access to the Internet, on which the Application is installed.\n* 1.5. User\'s Personal information - personal information that the User provides about himself/herself when registering (creating an account) or during the use of the Application, including the User\'s personal data. Data that is automatically transmitted to the Company in the process of using them using the Application installed on the device, including information about the User\'s Device.\n2. General provisions\n* 2.1. This Privacy Policy for the mobile application applies to the information that the Company can receive from the User\'s Device while using the Application.\n* 2.2. Using the Application means the User\'s unconditional consent to this Policy and the conditions specified in it for processing information received from the user\'s device. In case of disagreement with this Policy, the User must refrain from using the Application.\n* 2.3. This Privacy Policy of the Application applies to all information that the Company may receive about the User during the use of this Application.\n* 2.4. The Company does not control and is not responsible for the content, privacy policy or practices of any third-party sites or services to which the User can click on the links available in the Application. On such sites, other personal information may be collected or requested from the User, as well as other actions may be performed.\n* 2.5. This Policy applies only to the Application. The Company does not control and is not responsible for the information (the consequences of its transfer) transmitted by the User to a third party, if such transfer was performed on a third-party resource to which the User could click on links from the Application.\n2.6. The Company does not verify the accuracy of the personal information provided by Users and does not monitor their legal capacity.\n* 2.7. The Company assumes that the information transmitted to them from Users is reliable and keeps this information up to date.\n* 2.8. By installing the Application on his mobile device, the User gives the Company\'s consent to the collection, processing, recording, systematization, storage, modification, depersonalization, deletion, modification, use of the User\'s personal data for the purpose of providing services under contracts concluded between the User and the Company.\n3. Data that can be obtained from the User\'s Device\n* 3.1. The mobile application has access to and uses the following information on your device:\n* 3.1.1. User data, including first name, last name, email address or phone number.\n* 3.1.2. Information about the User\'s Device or data about the use of the Application.\n* 3.1.3. Information about phone numbers from the address book of the User\'s Device. For the convenience of the User, the Application can request access to the contact list of the User\'s Device. Before transferring the personal data of any other persons, the User must obtain their consent. The contact list will only be displayed to provide the User with an easy way to select the contacts with whom the User would like to share the shopping list. The Company does not copy, store, transmit or use this information to third parties.\n4. Purposes of collecting and processing Users\' Personal Information\n* 4.1. The Application collects and stores only the User\'s Personal Information that is necessary to provide the services included in the Application.\n* 4.2. The Company may use the Personal information of the Application User for the following purposes:\n* 4.2.1. Creating an account for the User to use the Application.\n* 4.2.2. Provision of personalized services to the User.\n* 4.2.3. Communication with the User, including sending notifications, requests and information regarding the use of the services, the provision of services, as well as processing requests and requests from the User.\n* 4.2.4. Improving the quality of the Application, the convenience of its use, the development of new services and services.\n5. Conditions for processing User\'s personal information\n* 5.1. In accordance with this Policy, the Company processes only the information and only for the purposes defined in clause 4.2 of the Policy.\n* 5.2. The Company takes all organizational and technical measures depending on the Company to protect the User\'s information from unauthorized access by third parties, use, copying and distribution.\n* 5.3. For the purposes set out in this Policy, the Company may involve partners with whom the Company has concluded relevant confidentiality agreements in the processing of User Information. The Company transfers to partners depersonalized data about the use of the Application for the purpose of improving the operation of the Application is carried out on the basis of contracts with partners.\n* 5.4. The User\'s personal information will never, under any circumstances, be transferred to third parties, except in cases provided for by the legislation of the Russian Federation.\n* 5.5. When processing users\' personal data, the Company is guided by Federal Law No. 152-FZ of July 27, 2006 \"On Personal Data\".\n6. Measures applied to protect Users\' Personal Information\n6.1. The Company takes necessary and sufficient organizational and technical measures aimed at ensuring the security of Users\' personal information from accidental loss, unauthorized access, use, modification and disclosure of information.\n* 6.2. The personal information provided by the Application Users is stored by the Company on secure servers behind firewalls.\n* 6.3. Only authorized employees of the Company, authorized employees of third-party companies (i.e. service providers) or other contractors who have signed an agreement on confidentiality and protection of personal data have access to Personal Information.\n* 6.4. All employees of the Company who have access to personal data sign non-disclosure agreements on confidential information and must adhere to the privacy and personal data protection policy.\n* 6.5. In order to ensure the confidentiality of information and the protection of personal data, the Company takes all measures necessary to prevent unauthorized access to Users\' Personal Information.\n* 6.6. Users use the Application as is and take measures to protect their personal data in it from security threats, including, but not limited to:\n* — protect your Device and the Applications installed in it from theft or loss;\n* — protect their Device and the Applications installed in it from unauthorized access.\n* 6.7. The Company is not responsible for the actions of Users aimed at bypassing any privacy settings and/or violating the security measures that the Company proposes to comply with.\n7. Change of Personal Information by the User\n* 7.1. The User has the right to change (update, supplement) the Personal Information provided by him or part of it at any time.\n* 7.2. In case of termination of the concluded agreement, the User has the right to delete his own personal account independently or by contacting the technical support service of users at the email address nocodeproduction1@gmail.com\n8. Changes to the Privacy Policy and Applicable law\n* 8.1. The Company has the right to make changes to the Policy by posting a new version of the Policy on the Company\'s website and/or in the Application.\n* 8.2. The Policy is approved by the General Director of the Company and posted on the Company\'s website. Changes and additions to the Policy are put into effect after their approval by the General Director of the Company.\n* 8.3. The User is responsible for self-familiarization with the current version of the Policy\n* 8.4. When making changes in the current version, the date of the last update is indicated. The new version of the Policy comes into force from the moment it is posted, unless otherwise provided by the new version of the Policy.\n* 8.5. This Policy and the relations between the User and the Company arising in connection with the application of the Privacy Policy are subject to the law of the Russian Federation.\n9. Feedback\nAny suggestions or questions about this Policy should be reported to the User Support Service nocodeproduction1@gmail.com',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
