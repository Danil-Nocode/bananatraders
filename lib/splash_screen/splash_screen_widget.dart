import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../index/index_widget.dart';
import '../index_productor/index_productor_widget.dart';
import '../index_trader/index_trader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.tariff, '') == 'GRATUITO') {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndexWidget(),
          ),
        );
      } else {
        if (valueOrDefault(currentUserDocument?.tariff, '') == 'PRODUCTOR') {
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => IndexProductorWidget(),
            ),
            (r) => false,
          );
        } else {
          if (valueOrDefault(currentUserDocument?.tariff, '') == 'TRADER') {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndexTraderWidget(),
              ),
            );
          } else {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndexWidget(),
              ),
            );
          }
        }
      }
    });
  }

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Frame_1_(4).png',
                ).image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
