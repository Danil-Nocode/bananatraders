import '../backend/backend.dart';
import '../components/exit_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../index_trader/index_trader_widget.dart';
import '../support/support_widget.dart';
import '../tariffs/tariffs_widget.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndexProductorWidget extends StatefulWidget {
  const IndexProductorWidget({Key? key}) : super(key: key);

  @override
  _IndexProductorWidgetState createState() => _IndexProductorWidgetState();
}

class _IndexProductorWidgetState extends State<IndexProductorWidget> {
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
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            IndexTraderWidget(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'OFICIAL: ',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Akzidenz Grotesk Pro',
                                          color: Colors.white,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Text(
                                  '\$',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Akzidenz Grotesk Pro',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                StreamBuilder<List<OfficialSpotRecord>>(
                                  stream: queryOfficialSpotRecord(
                                    queryBuilder: (officialSpotRecord) =>
                                        officialSpotRecord.orderBy('Date',
                                            descending: true),
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<OfficialSpotRecord>
                                        textOfficialSpotRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textOfficialSpotRecord =
                                        textOfficialSpotRecordList.isNotEmpty
                                            ? textOfficialSpotRecordList.first
                                            : null;
                                    return Text(
                                      textOfficialSpotRecord!.price!.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Akzidenz Grotesk Pro',
                                            color: Colors.white,
                                            useGoogleFonts: false,
                                          ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: ExitWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Icon(
                                Icons.exit_to_app_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 60),
                        child: StreamBuilder<List<AreasDaysRecord>>(
                          stream: queryAreasDaysRecord(
                            queryBuilder: (areasDaysRecord) => areasDaysRecord
                                .orderBy('Date', descending: true),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<AreasDaysRecord> rowAreasDaysRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final rowAreasDaysRecord =
                                rowAreasDaysRecordList.isNotEmpty
                                    ? rowAreasDaysRecordList.first
                                    : null;
                            return Row(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 2),
                                          child: Text(
                                            rowAreasDaysRecord!.avg!.toString(),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 12, 0, 0),
                                          child: StreamBuilder<
                                              List<AreasDaysRecord>>(
                                            stream: queryAreasDaysRecord(
                                              queryBuilder: (areasDaysRecord) =>
                                                  areasDaysRecord.orderBy(
                                                      'Date',
                                                      descending: true),
                                              limit: 2,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AreasDaysRecord>
                                                  containerAreasDaysRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    if (functions
                                                            .functionOfComparison(
                                                                containerAreasDaysRecordList
                                                                    .toList())
                                                            .toString() ==
                                                        '0')
                                                      Icon(
                                                        Icons
                                                            .arrow_upward_outlined,
                                                        color:
                                                            Color(0xFF4499E8),
                                                        size: 18,
                                                      ),
                                                    if (functions
                                                            .functionOfComparison(
                                                                containerAreasDaysRecordList
                                                                    .toList())
                                                            .toString() ==
                                                        '2')
                                                      Icon(
                                                        Icons.arrow_downward,
                                                        color:
                                                            Color(0xFFFF0000),
                                                        size: 18,
                                                      ),
                                                    if (functions
                                                            .functionOfComparison(
                                                                containerAreasDaysRecordList
                                                                    .toList())
                                                            .toString() ==
                                                        '1')
                                                      Icon(
                                                        Icons.remove,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 18,
                                                      ),
                                                  ],
                                                ),
                                              );
                                            },
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
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color: Colors.white,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Text(
                                          dateTimeFormat(
                                            'd/M',
                                            rowAreasDaysRecord!.date!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    'Akzidenz Grotesk Pro',
                                                color: Colors.white,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
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
                                      child: TariffsWidget(),
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
            StreamBuilder<List<AreasWeeksRecord>>(
              stream: queryAreasWeeksRecord(
                queryBuilder: (areasWeeksRecord) => areasWeeksRecord
                    .orderBy('Number_of_week', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<AreasWeeksRecord> containerAreasWeeksRecordList =
                    snapshot.data!;
                return Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: StreamBuilder<List<AreasDaysRecord>>(
                    stream: queryAreasDaysRecord(
                      queryBuilder: (areasDaysRecord) =>
                          areasDaysRecord.orderBy('Date', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<AreasDaysRecord> containerAreasDaysRecordList =
                          snapshot.data!;
                      return Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AreasDaysRecord>>(
                          stream: queryAreasDaysRecord(
                            queryBuilder: (areasDaysRecord) => areasDaysRecord
                                .orderBy('Date', descending: true),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<AreasDaysRecord>
                                containerOneAreasDaysRecordList =
                                snapshot.data!;
                            final containerOneAreasDaysRecord =
                                containerOneAreasDaysRecordList.isNotEmpty
                                    ? containerOneAreasDaysRecordList.first
                                    : null;
                            return Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 18, 0, 18),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 16, 28),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 12, 0),
                                                  child: Icon(
                                                    FFIcons.ksubtract2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 48,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'SPOT',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3,
                                                    ),
                                                    Text(
                                                      'Promedio semanal: \$${containerOneAreasDaysRecord!.avg?.toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Akzidenz Grotesk Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 150,
                                                    child: custom_widgets
                                                        .ChartCustom(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 150,
                                                      period: FFAppState().spot,
                                                      valuesDays:
                                                          containerAreasDaysRecordList
                                                              .map((e) => e.avg)
                                                              .withoutNulls
                                                              .toList(),
                                                      valuesWeeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) => e.avg)
                                                              .withoutNulls
                                                              .toList(),
                                                      weeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) => e
                                                                  .numberOfWeek)
                                                              .withoutNulls
                                                              .toList(),
                                                      dateDays:
                                                          containerAreasDaysRecordList
                                                              .map(
                                                                  (e) => e.date)
                                                              .withoutNulls
                                                              .toList(),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState().spot !=
                                                    '1 sem')
                                                  Container(
                                                    height: 150,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/Rectangle_169.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            TariffsWidget(),
                                                                  ),
                                                                );
                                                              },
                                                              text:
                                                                  'Ver los precios historicos',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 35,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            35),
                                                              ),
                                                            ),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spot !=
                                                              'Todo')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spot =
                                                                      'Todo';
                                                                });
                                                              },
                                                              child: Text(
                                                                'Todo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spot ==
                                                              'Todo')
                                                            Text(
                                                              'Todo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        'Todo')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spot !=
                                                              '1 año')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spot =
                                                                      '1 año';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 año',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spot ==
                                                              '1 año')
                                                            Text(
                                                              '1 año',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        '1 año')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spot !=
                                                              '6 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spot =
                                                                      '6 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '6 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spot ==
                                                              '6 mes')
                                                            Text(
                                                              '6 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        '6 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spot !=
                                                              '3 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spot =
                                                                      '3 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '3 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spot ==
                                                              '3 mes')
                                                            Text(
                                                              '3 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        '3 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().spot =
                                                                '1 mes';
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                    .spot !=
                                                                '1 mes')
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .spot =
                                                                        '1 mes';
                                                                  });
                                                                },
                                                                child: Text(
                                                                  '1 mes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Akzidenz Grotesk Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .spot ==
                                                                '1 mes')
                                                              Text(
                                                                '1 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        '1 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spot !=
                                                              '1 sem')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spot =
                                                                      '1 sem';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 sem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spot ==
                                                              '1 sem')
                                                            Text(
                                                              '1 sem',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spot ==
                                                        '1 sem')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 18, 0, 18),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 16, 28),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 12, 0),
                                                  child: Icon(
                                                    FFIcons.knorte,
                                                    color: Color(0xFF4499E8),
                                                    size: 48,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'SPOT • Norte',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3,
                                                    ),
                                                    Text(
                                                      'Promedio semanal: \$${containerOneAreasDaysRecord!.spotNorte?.toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Akzidenz Grotesk Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 150,
                                                    child: custom_widgets
                                                        .ChartCustom(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 150,
                                                      period: FFAppState()
                                                          .spotNorte,
                                                      valuesDays:
                                                          containerAreasDaysRecordList
                                                              .map((e) =>
                                                                  e.spotNorte)
                                                              .withoutNulls
                                                              .toList(),
                                                      valuesWeeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) =>
                                                                  e.avgNorte)
                                                              .withoutNulls
                                                              .toList(),
                                                      weeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) => e
                                                                  .numberOfWeek)
                                                              .withoutNulls
                                                              .toList(),
                                                      dateDays:
                                                          containerAreasDaysRecordList
                                                              .map(
                                                                  (e) => e.date)
                                                              .withoutNulls
                                                              .toList(),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState().spotNorte !=
                                                    '1 sem')
                                                  Container(
                                                    height: 150,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/Rectangle_169.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            TariffsWidget(),
                                                                  ),
                                                                );
                                                              },
                                                              text:
                                                                  'Ver los precios historicos',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 35,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            35),
                                                              ),
                                                            ),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotNorte !=
                                                              'Todo')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotNorte =
                                                                      'Todo';
                                                                });
                                                              },
                                                              child: Text(
                                                                'Todo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotNorte ==
                                                              'Todo')
                                                            Text(
                                                              'Todo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        'Todo')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotNorte !=
                                                              '1 año')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotNorte =
                                                                      '1 año';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 año',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotNorte ==
                                                              '1 año')
                                                            Text(
                                                              '1 año',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        '1 año')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotNorte !=
                                                              '6 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotNorte =
                                                                      '6 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '6 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotNorte ==
                                                              '6 mes')
                                                            Text(
                                                              '6 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        '6 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotNorte !=
                                                              '3 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotNorte =
                                                                      '3 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '3 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotNorte ==
                                                              '3 mes')
                                                            Text(
                                                              '3 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        '3 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().spot =
                                                                '1 mes';
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                    .spotNorte !=
                                                                '1 mes')
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .spotNorte =
                                                                        '1 mes';
                                                                  });
                                                                },
                                                                child: Text(
                                                                  '1 mes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Akzidenz Grotesk Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .spotNorte ==
                                                                '1 mes')
                                                              Text(
                                                                '1 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        '1 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotNorte !=
                                                              '1 sem')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotNorte =
                                                                      '1 sem';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 sem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotNorte ==
                                                              '1 sem')
                                                            Text(
                                                              '1 sem',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotNorte ==
                                                        '1 sem')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 18, 0, 18),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 16, 28),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 12, 0),
                                                  child: Icon(
                                                    FFIcons.kcentro,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 48,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'SPOT • Centro',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3,
                                                    ),
                                                    Text(
                                                      'Promedio semanal: \$${containerOneAreasDaysRecord!.spotCentre?.toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Akzidenz Grotesk Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 150,
                                                    child: custom_widgets
                                                        .ChartCustom(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 150,
                                                      period: FFAppState()
                                                          .spotCentro,
                                                      valuesDays:
                                                          containerAreasDaysRecordList
                                                              .map((e) =>
                                                                  e.spotCentre)
                                                              .withoutNulls
                                                              .toList(),
                                                      valuesWeeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) =>
                                                                  e.avgCentre)
                                                              .withoutNulls
                                                              .toList(),
                                                      weeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) => e
                                                                  .numberOfWeek)
                                                              .withoutNulls
                                                              .toList(),
                                                      dateDays:
                                                          containerAreasDaysRecordList
                                                              .map(
                                                                  (e) => e.date)
                                                              .withoutNulls
                                                              .toList(),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState().spotCentro !=
                                                    '1 sem')
                                                  Container(
                                                    height: 150,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/Rectangle_169.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            TariffsWidget(),
                                                                  ),
                                                                );
                                                              },
                                                              text:
                                                                  'Ver los precios historicos',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 35,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            35),
                                                              ),
                                                            ),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotCentro !=
                                                              'Todo')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotCentro =
                                                                      'Todo';
                                                                });
                                                              },
                                                              child: Text(
                                                                'Todo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotCentro ==
                                                              'Todo')
                                                            Text(
                                                              'Todo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        'Todo')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotCentro !=
                                                              '1 año')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotCentro =
                                                                      '1 año';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 año',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotCentro ==
                                                              '1 año')
                                                            Text(
                                                              '1 año',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        '1 año')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotCentro !=
                                                              '6 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotCentro =
                                                                      '6 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '6 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotCentro ==
                                                              '6 mes')
                                                            Text(
                                                              '6 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        '6 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotCentro !=
                                                              '3 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotCentro =
                                                                      '3 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '3 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotCentro ==
                                                              '3 mes')
                                                            Text(
                                                              '3 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        '3 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().spot =
                                                                '1 mes';
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                    .spotCentro !=
                                                                '1 mes')
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .spotCentro =
                                                                        '1 mes';
                                                                  });
                                                                },
                                                                child: Text(
                                                                  '1 mes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Akzidenz Grotesk Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .spotCentro ==
                                                                '1 mes')
                                                              Text(
                                                                '1 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        '1 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotCentro !=
                                                              '1 sem')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotCentro =
                                                                      '1 sem';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 sem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotCentro ==
                                                              '1 sem')
                                                            Text(
                                                              '1 sem',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                            .spotCentro ==
                                                        '1 sem')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 18, 0, 18),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 16, 28),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 12, 0),
                                                  child: Icon(
                                                    FFIcons.ksubtract11,
                                                    color: Color(0xFFD95644),
                                                    size: 48,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'SPOT • Sur',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3,
                                                    ),
                                                    Text(
                                                      'Promedio semanal: \$${containerOneAreasDaysRecord!.spotSur?.toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Akzidenz Grotesk Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 150,
                                                    child: custom_widgets
                                                        .ChartCustom(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 150,
                                                      period:
                                                          FFAppState().spotSur,
                                                      valuesDays:
                                                          containerAreasDaysRecordList
                                                              .map((e) =>
                                                                  e.spotSur)
                                                              .withoutNulls
                                                              .toList(),
                                                      valuesWeeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) =>
                                                                  e.avgSur)
                                                              .withoutNulls
                                                              .toList(),
                                                      weeks:
                                                          containerAreasWeeksRecordList
                                                              .map((e) => e
                                                                  .numberOfWeek)
                                                              .withoutNulls
                                                              .toList(),
                                                      dateDays:
                                                          containerAreasDaysRecordList
                                                              .map(
                                                                  (e) => e.date)
                                                              .withoutNulls
                                                              .toList(),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState().spotSur !=
                                                    '1 sem')
                                                  Container(
                                                    height: 150,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/Rectangle_169.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            TariffsWidget(),
                                                                  ),
                                                                );
                                                              },
                                                              text:
                                                                  'Ver los precios historicos',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 35,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            35),
                                                              ),
                                                            ),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotSur !=
                                                              'Todo')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotSur =
                                                                      'Todo';
                                                                });
                                                              },
                                                              child: Text(
                                                                'Todo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotSur ==
                                                              'Todo')
                                                            Text(
                                                              'Todo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        'Todo')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotSur !=
                                                              '1 año')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotSur =
                                                                      '1 año';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 año',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotSur ==
                                                              '1 año')
                                                            Text(
                                                              '1 año',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        '1 año')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotSur !=
                                                              '6 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotSur =
                                                                      '6 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '6 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotSur ==
                                                              '6 mes')
                                                            Text(
                                                              '6 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        '6 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotSur !=
                                                              '3 mes')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotSur =
                                                                      '3 mes';
                                                                });
                                                              },
                                                              child: Text(
                                                                '3 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotSur ==
                                                              '3 mes')
                                                            Text(
                                                              '3 mes',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        '3 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().spot =
                                                                '1 mes';
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                    .spotSur !=
                                                                '1 mes')
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .spotSur =
                                                                        '1 mes';
                                                                  });
                                                                },
                                                                child: Text(
                                                                  '1 mes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Akzidenz Grotesk Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .spotSur ==
                                                                '1 mes')
                                                              Text(
                                                                '1 mes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        '1 mes')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .spotSur !=
                                                              '1 sem')
                                                            InkWell(
                                                              onTap: () async {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .spotSur =
                                                                      '1 sem';
                                                                });
                                                              },
                                                              child: Text(
                                                                '1 sem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Akzidenz Grotesk Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .spotSur ==
                                                              '1 sem')
                                                            Text(
                                                              '1 sem',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (FFAppState().spotSur ==
                                                        '1 sem')
                                                      Container(
                                                        width: 40,
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<CompaniesRecord> columnCompaniesRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnCompaniesRecordList.length,
                                  (columnIndex) {
                                final columnCompaniesRecord =
                                    columnCompaniesRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Akzidenz Grotesk Pro',
                                                          color:
                                                              Color(0xFF858585),
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.9,
                                                        ),
                                              ),
                                            Text(
                                              columnCompaniesRecord.name!,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: Image.asset(
                                                        'assets/images/Rectangle_169_(2).png',
                                                      ).image,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 16, 16, 16),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          TariffsWidget(),
                                                                ),
                                                              );
                                                            },
                                                            text:
                                                                'Ver precios de productores del norte',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130,
                                                              height: 35,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Akzidenz Grotesk Pro',
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          35),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          if (FFAppState().semanaNorte > 1) {
                                            setState(() {
                                              FFAppState().semanaNorte =
                                                  FFAppState().semanaNorte + -1;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_left,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                      if (FFAppState().CompraNorte == '1')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '${FFAppState().semanaNorte.toString()} semana',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      InkWell(
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().semanaNorte =
                                                FFAppState().semanaNorte + 1;
                                          });
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.black,
                                          size: 24,
                                        ),
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                child: Icon(
                                  FFIcons.kcentro,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 48,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Compra - Centro',
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
                                .where('Area', isEqualTo: 'Centre')
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<CompaniesRecord> columnCompaniesRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnCompaniesRecordList.length,
                                  (columnIndex) {
                                final columnCompaniesRecord =
                                    columnCompaniesRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Akzidenz Grotesk Pro',
                                                          color:
                                                              Color(0xFF858585),
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.9,
                                                        ),
                                              ),
                                            Text(
                                              columnCompaniesRecord.name!,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: Image.asset(
                                                    'assets/images/Rectangle_169_(2).png',
                                                  ).image,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 16, 16, 16),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  TariffsWidget(),
                                                            ),
                                                          );
                                                        },
                                                        text:
                                                            'Ver precios de productores del centro',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130,
                                                          height: 35,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(35),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          if (FFAppState().semanaCentre > 1) {
                                            setState(() {
                                              FFAppState().semanaCentre =
                                                  FFAppState().semanaCentre +
                                                      -1;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_left,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                      if (FFAppState().CompraNorte == '1')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '${FFAppState().semanaCentre.toString()} semana',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      InkWell(
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().semanaCentre =
                                                FFAppState().semanaCentre + 1;
                                          });
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.black,
                                          size: 24,
                                        ),
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 16, 28),
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
                                    'Compra - Sur',
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
                                .where('Area', isEqualTo: 'Sur')
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<CompaniesRecord> columnCompaniesRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnCompaniesRecordList.length,
                                  (columnIndex) {
                                final columnCompaniesRecord =
                                    columnCompaniesRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Akzidenz Grotesk Pro',
                                                          color:
                                                              Color(0xFF858585),
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.9,
                                                        ),
                                              ),
                                            Text(
                                              columnCompaniesRecord.name!,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: Image.asset(
                                                    'assets/images/Rectangle_169_(2).png',
                                                  ).image,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 16, 16, 16),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  TariffsWidget(),
                                                            ),
                                                          );
                                                        },
                                                        text:
                                                            'Ver precios de productores del sur',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130,
                                                          height: 35,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Akzidenz Grotesk Pro',
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(35),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          if (FFAppState().semanaSur > 1) {
                                            setState(() {
                                              FFAppState().semanaSur =
                                                  FFAppState().semanaSur + -1;
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_left,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                      if (FFAppState().CompraNorte == '1')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: Text(
                                            '${FFAppState().semanaSur.toString()} semana',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      InkWell(
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().semanaSur =
                                                FFAppState().semanaSur + 1;
                                          });
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.black,
                                          size: 24,
                                        ),
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
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 22, 0, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Alguna duda?',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Akzidenz Grotesk Pro',
                          color: Colors.black,
                          useGoogleFonts: false,
                        ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SupportWidget(),
                        ),
                      );
                    },
                    child: Text(
                      'Contáctanos',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Akzidenz Grotesk Pro',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            useGoogleFonts: false,
                          ),
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
