import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cambios/cambios_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import '../tariffs/tariffs_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndexTraderCopyWidget extends StatefulWidget {
  const IndexTraderCopyWidget({Key? key}) : super(key: key);

  @override
  _IndexTraderCopyWidgetState createState() => _IndexTraderCopyWidgetState();
}

class _IndexTraderCopyWidgetState extends State<IndexTraderCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primaryColor,
                      FlutterFlowTheme.of(context).secondaryColor
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(32, 40, 32, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'OFICIAL: ',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  '\$6.25',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                await signOut();
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'RU',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Akzidenz Grotesk Pro',
                                      color: Colors.white,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 60),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Text(
                                        '\$',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 2),
                                      child: Text(
                                        '2',
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Text(
                                        '.70',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 12, 0, 0),
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Icon(
                                          Icons.arrow_upward_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Banano (Spot) • ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Akzidenz Grotesk Pro',
                                            color: Colors.white,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      '22/03',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Akzidenz Grotesk Pro',
                                            color: Colors.white,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: CambiosWidget(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FFIcons.ksubtract1,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 48,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        'Reportar\ncambios',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TariffsWidget(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      FFIcons.ksubtract,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 48,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        'Administrar\nsuscripción',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.white,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.ksubtract2,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SPOT',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              Text(
                                'Promedio semanal: \$1.73',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Akzidenz Grotesk Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().spot == '1 sem')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '16/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '17/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '18/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '21/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '2.7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '22/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot == 'Todo')
                                      Text(
                                        'Todo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spot == 'Todo')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot == '1 año')
                                      Text(
                                        '1 año',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spot == '1 año')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot == '6 mes')
                                      Text(
                                        '6 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spot == '6 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot == '3 mes')
                                      Text(
                                        '3 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spot == '3 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      FFAppState().spot = '1 mes';
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().spot == '1 mes')
                                        Text(
                                          '1 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().spot == '1 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot == '1 sem')
                                      Text(
                                        '1 sem',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spot == '1 sem')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.knorte,
                              color: Color(0xFF4499E8),
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SPOT • Norte',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              Text(
                                'Promedio semanal: \$1.73',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Akzidenz Grotesk Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().spotNorte == '1 sem')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '16/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '17/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '18/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '21/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '2.7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '22/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spot != 'Todo')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotNorte = 'Todo';
                                          });
                                        },
                                        child: Text(
                                          'Todo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spot == 'Todo')
                                      Text(
                                        'Todo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotNorte == 'Todo')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotNorte != '1 año')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotNorte = '1 año';
                                          });
                                        },
                                        child: Text(
                                          '1 año',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotNorte == '1 año')
                                      Text(
                                        '1 año',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotNorte == '1 año')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotNorte != '6 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotNorte = '6 mes';
                                          });
                                        },
                                        child: Text(
                                          '6 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotNorte == '6 mes')
                                      Text(
                                        '6 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotNorte == '6 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotNorte != '3 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotNorte = '3 mes';
                                          });
                                        },
                                        child: Text(
                                          '3 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotNorte == '3 mes')
                                      Text(
                                        '3 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotNorte == '3 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      // FFAppState().spot = '1 mes';
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().spotNorte != '1 mes')
                                        InkWell(
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().spotNorte = '1 mes';
                                            });
                                          },
                                          child: Text(
                                            '1 mes',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Akzidenz Grotesk Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      if (FFAppState().spotNorte == '1 mes')
                                        Text(
                                          '1 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().spotNorte == '1 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotNorte != '1 sem')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotNorte = '1 sem';
                                          });
                                        },
                                        child: Text(
                                          '1 sem',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotNorte == '1 sem')
                                      Text(
                                        '1 sem',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotNorte == '1 sem')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.kcentro,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SPOT • Centro',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              Text(
                                'Promedio semanal: \$1.73',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Akzidenz Grotesk Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().spotCentro == '1 sem')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '16/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '17/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '18/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '21/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '2.7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '22/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotCentro != 'Todo')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotCentro = 'Todo';
                                          });
                                        },
                                        child: Text(
                                          'Todo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotCentro == 'Todo')
                                      Text(
                                        'Todo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotCentro == 'Todo')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotCentro != '1 año')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotCentro = '1 año';
                                          });
                                        },
                                        child: Text(
                                          '1 año',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotCentro == '1 año')
                                      Text(
                                        '1 año',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotCentro == '1 año')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotCentro != '6 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotCentro = '6 mes';
                                          });
                                        },
                                        child: Text(
                                          '6 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotCentro == '6 mes')
                                      Text(
                                        '6 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotCentro == '6 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotCentro != '3 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotCentro = '3 mes';
                                          });
                                        },
                                        child: Text(
                                          '3 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotCentro == '3 mes')
                                      Text(
                                        '3 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotCentro == '3 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      // FFAppState().spot = '1 mes';
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().spotCentro != '1 mes')
                                        InkWell(
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().spotCentro = '1 mes';
                                            });
                                          },
                                          child: Text(
                                            '1 mes',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Akzidenz Grotesk Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      if (FFAppState().spotCentro == '1 mes')
                                        Text(
                                          '1 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().spotCentro == '1 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotCentro != '1 sem')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotCentro = '1 sem';
                                          });
                                        },
                                        child: Text(
                                          '1 sem',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotCentro == '1 sem')
                                      Text(
                                        '1 sem',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotCentro == '1 sem')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.ksubtract11,
                              color: Color(0xFFD95644),
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SPOT • Sur',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              Text(
                                'Promedio semanal: \$1.73',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Akzidenz Grotesk Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().spotSur == '1 sem')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '16/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '17/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '1.99',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 19.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '18/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '21/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        '2.7',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Text(
                                        '22/03',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  'Akzidenz Grotesk Pro',
                                              color: Color(0xFF858585),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotSur != 'Todo')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotSur = 'Todo';
                                          });
                                        },
                                        child: Text(
                                          'Todo',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotSur == 'Todo')
                                      Text(
                                        'Todo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotSur == 'Todo')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotSur != '1 año')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotSur = '1 año';
                                          });
                                        },
                                        child: Text(
                                          '1 año',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotSur == '1 año')
                                      Text(
                                        '1 año',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotSur == '1 año')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotSur != '6 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotSur = '6 mes';
                                          });
                                        },
                                        child: Text(
                                          '6 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotSur == '6 mes')
                                      Text(
                                        '6 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotSur == '6 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotSur != '3 mes')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotSur = '3 mes';
                                          });
                                        },
                                        child: Text(
                                          '3 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotSur == '3 mes')
                                      Text(
                                        '3 mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotSur == '3 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: InkWell(
                                  onTap: () async {
                                    FFAppState().update(() {
                                      // FFAppState().spot = '1 mes';
                                    });
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (FFAppState().spotSur != '1 mes')
                                        InkWell(
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().spotSur = '1 mes';
                                            });
                                          },
                                          child: Text(
                                            '1 mes',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Akzidenz Grotesk Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      if (FFAppState().spotSur == '1 mes')
                                        Text(
                                          '1 mes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().spotSur == '1 mes')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (FFAppState().spotSur != '1 sem')
                                      InkWell(
                                        onTap: () async {
                                          FFAppState().update(() {
                                            FFAppState().spotSur = '1 sem';
                                          });
                                        },
                                        child: Text(
                                          '1 sem',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    if (FFAppState().spotSur == '1 sem')
                                      Text(
                                        '1 sem',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                  ],
                                ),
                              ),
                              if (FFAppState().spotSur == '1 sem')
                                Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.kcentro,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Compra - Norte',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<CompaniesRecord>>(
                      stream: queryCompaniesRecord(
                        queryBuilder: (companiesRecord) => companiesRecord
                            .where('Area', isEqualTo: 'Norte')
                            .orderBy('DateForSorting'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<CompaniesRecord> columnCompaniesRecordList =
                            snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnCompaniesRecordList.length, (columnIndex) {
                            final columnCompaniesRecord =
                                columnCompaniesRecordList[columnIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (columnIndex == 0)
                                          Text(
                                            'Fabricante',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      'Akzidenz Grotesk Pro',
                                                  color: Color(0xFF858585),
                                                  useGoogleFonts: false,
                                                  lineHeight: 1.9,
                                                ),
                                          ),
                                        Text(
                                          columnCompaniesRecord.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color: Colors.black,
                                                useGoogleFonts: false,
                                                lineHeight: 1.9,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: StreamBuilder<
                                        List<CompanyPricesDaysRecord>>(
                                      stream: queryCompanyPricesDaysRecord(
                                        queryBuilder:
                                            (companyPricesDaysRecord) =>
                                                companyPricesDaysRecord
                                                    .where('Company',
                                                        isEqualTo:
                                                            columnCompaniesRecord
                                                                .reference)
                                                    .where('Number_of_week',
                                                        isEqualTo:
                                                            FFAppState().Semana)
                                                    .orderBy('Data',
                                                        descending: true),
                                        limit: 14,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<CompanyPricesDaysRecord>
                                            containerCompanyPricesDaysRecordList =
                                            snapshot.data!;
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day1 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                1)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day1.length,
                                                          (day1Index) {
                                                        final day1Item =
                                                            day1[day1Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day1Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day1Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day2 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                2)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day2.length,
                                                          (day2Index) {
                                                        final day2Item =
                                                            day2[day2Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day2Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day2Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day3 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                3)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day3.length,
                                                          (day3Index) {
                                                        final day3Item =
                                                            day3[day3Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day3Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day3Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day4 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                4)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day4.length,
                                                          (day4Index) {
                                                        final day4Item =
                                                            day4[day4Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day4Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day4Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day5 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                5)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day5.length,
                                                          (day5Index) {
                                                        final day5Item =
                                                            day5[day5Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day5Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day5Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final day6 =
                                                        containerCompanyPricesDaysRecordList
                                                            .where((e) =>
                                                                e.dayOfWeek ==
                                                                6)
                                                            .toList()
                                                            .take(1)
                                                            .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          day6.length,
                                                          (day6Index) {
                                                        final day6Item =
                                                            day6[day6Index];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnIndex ==
                                                                0)
                                                              Text(
                                                                dateTimeFormat(
                                                                  'd/M',
                                                                  day6Item
                                                                      .data!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Color(
                                                                          0xFF858585),
                                                                      useGoogleFonts:
                                                                          false,
                                                                      lineHeight:
                                                                          1.9,
                                                                    ),
                                                              ),
                                                            Text(
                                                              day6Item.price!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final day7 =
                                                      containerCompanyPricesDaysRecordList
                                                          .where((e) =>
                                                              e.dayOfWeek == 7)
                                                          .toList()
                                                          .take(1)
                                                          .toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: List.generate(
                                                        day7.length,
                                                        (day7Index) {
                                                      final day7Item =
                                                          day7[day7Index];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (columnIndex == 0)
                                                            Text(
                                                              dateTimeFormat(
                                                                'd/M',
                                                                day7Item.data!,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    color: Color(
                                                                        0xFF858585),
                                                                    useGoogleFonts:
                                                                        false,
                                                                    lineHeight:
                                                                        1.9,
                                                                  ),
                                                            ),
                                                          Text(
                                                            day7Item.price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Akzidenz Grotesk Pro',
                                                                  useGoogleFonts:
                                                                      false,
                                                                  lineHeight:
                                                                      1.9,
                                                                ),
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        );
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().CompraNorte == '1')
                                    Text(
                                      '16/03 - 22/03',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                ],
                              ),
                            ),
                            if (FFAppState().CompraNorte == '1')
                              Container(
                                width: 90,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.kcentro,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Compra • Centro - Norte',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fabricante',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'EXCELBAN',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PALMAR',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PRIMADONNA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FAZENDA ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FYFFES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BAGNO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BONITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'RUTA DE SOL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'TROPICAL E...',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AURUMAGRI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LUDERSON...',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'HORMIGUITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FRESKITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'VELARROSA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'YELLOW',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'GINA FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'SOPRISA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'ABIOLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'DONATELLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'IMPERIAL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LE FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AGROAEREO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '16/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '17/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '18/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '21/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '22/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.58',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.73',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().CompraNorte == '1')
                                    Text(
                                      '16/03 - 22/03',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                ],
                              ),
                            ),
                            if (FFAppState().CompraNorte == '1')
                              Container(
                                width: 90,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.knorte,
                              color: Color(0xFF4099F7),
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Compra • Guayas',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fabricante',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'EXCELBAN',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PALMAR',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PRIMADONNA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FAZENDA ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FYFFES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BAGNO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BONITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'RUTA DE SOL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'TROPICAL EPUBLIC',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AURUMAGRI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LUDERSON...',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'HORMIGUITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FRESKITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'VELARROSA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'YELLOW',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'GINA FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'SOPRISA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'ABIOLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'DONATELLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'IMPERIAL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LE FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AGROAEREO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '16/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '17/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '18/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '21/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '22/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.58',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.73',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().CompraNorte == '1')
                                    Text(
                                      '16/03 - 22/03',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                ],
                              ),
                            ),
                            if (FFAppState().CompraNorte == '1')
                              Container(
                                width: 90,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              FFIcons.ksubtract11,
                              color: Color(0xFFD95644),
                              size: 48,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Compra • Sur',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fabricante',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'EXCELBAN',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PALMAR',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'PRIMADONNA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FAZENDA ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FYFFES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BAGNO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'BONITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'RUTA DE SOL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'TROPICAL EPUBLIC',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AURUMAGRI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LUDERSON...',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'HORMIGUITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'FRESKITA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'VELARROSA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'YELLOW',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'GINA FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'SOPRISA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'ABIOLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'DONATELLA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'IMPERIAL',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'LE FRUIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AGROAEREO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '16/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '17/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '18/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.99',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '21/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '22/03',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Color(0xFF858585),
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '3.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '2.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'AVG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.58',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.7',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.8',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '0.0',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                                Text(
                                  '1.73',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.9,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().CompraNorte == '1')
                                    Text(
                                      '16/03 - 22/03',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                ],
                              ),
                            ),
                            if (FFAppState().CompraNorte == '1')
                              Container(
                                width: 90,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 22, 0, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Encontraste un error? ',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Akzidenz Grotesk Pro',
                          color: Colors.black,
                          useGoogleFonts: false,
                        ),
                  ),
                  Text(
                    'Informar',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Akzidenz Grotesk Pro',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
