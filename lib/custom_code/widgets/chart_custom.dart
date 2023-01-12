// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
class ChartCustom extends StatefulWidget {
  const ChartCustom({
    Key? key,
    this.width,
    this.height,
    this.valuesDays,
    this.valuesWeeks,
    this.period,
    this.weeks,
    this.dateDays,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<double>? valuesDays;
  final List<double>? valuesWeeks;
  final List<DateTime>? dateDays;
  final List<int>? weeks;
  final String? period;

  @override
  _ChartCustomState createState() => _ChartCustomState();
}

class _ChartCustomState extends State<ChartCustom> {
  List<Color> gradientColors = [
    const Color(0xff6EA80F),
    const Color(0xffB6D365),
  ];

  @override
  Widget build(BuildContext context) {
    getData(widget.period!, widget.valuesDays!, widget.valuesWeeks!);
    return LineChart(
      mainData(),
      swapAnimationDuration: Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
    ;
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('NOV', style: style);
        break;
      case 5:
        text = const Text('DIC', style: style);
        break;
      case 8:
        text = const Text('ENERO', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget bottomTitleWidgetsTest(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('1 sem', style: style);
        break;
      case 2:
        text = const Text('2 sem', style: style);
        break;
      case 3:
        text = const Text('3 sem', style: style);
        break;
      case 4:
        text = const Text('4 sem', style: style);
        break;
      case 5:
        text = const Text('5 sem', style: style);
        break;
      case 6:
        text = const Text('6 sem', style: style);
        break;
      case 7:
        text = const Text('7 sem', style: style);
        break;
      case 8:
        text = const Text('8 sem', style: style);
        break;
      case 9:
        text = const Text('9 sem', style: style);
        break;
      case 10:
        text = const Text('10 sem', style: style);
        break;
      case 11:
        text = const Text('11 sem', style: style);
        break;
      case 12:
        text = const Text('12 sem', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1\$';
        break;
      case 3:
        text = '3\$';
        break;
      case 5:
        text = '5\$';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  List<FlSpot>? getData(
      String periodStr, List<double> valuesDays, List<double> valuesWeeks) {
    List<double> values = [];
    int period = 7;
    if (periodStr == '1 sem') {
      period = 7;
    } else if (periodStr == '1 mes') {
      period = 30;
    } else if (periodStr == '3 mes') {
      period = 90;
    } else if (periodStr == '6 mes') {
      period = 180;
    } else if (periodStr == '1 año') {
      period = 360;
    } else {
      period = 620;
    }
    if (period > 90) {
      period = period ~/ 7;
      values = valuesWeeks;
    } else {
      values = valuesDays;
    }
    List<double> newValues = [];
    int maxLenght = values.length;
    if (period > maxLenght) {
      period = maxLenght;
      if (period > 90) {
        period = period ~/ 7;
      }
    }

    // Iterable<double> inReverse = values.reversed;
    // var valuesInReverse = inReverse.toList();
    newValues = values.sublist(0, period);
    newValues = newValues.reversed.toList();

    double i = 0;
    List<FlSpot> data = [];
    for (var value in newValues) {
      data.add(FlSpot(i, value));
      i++;
    }

    return data;
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: const Color(0xff6EA80F),
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              final flSpot = barSpot;

              TextAlign textAlign;
              switch (flSpot.x.toInt()) {
                case 1:
                  textAlign = TextAlign.left;
                  break;
                case 5:
                  textAlign = TextAlign.right;
                  break;
                default:
                  textAlign = TextAlign.center;
              }

              String date = '8/1';

              int period = 7;
              String periodStr = widget.period!;
              if (periodStr == '1 sem') {
                period = 7;
              } else if (periodStr == '1 mes') {
                period = 30;
              } else if (periodStr == '3 mes') {
                period = 90;
              } else if (periodStr == '6 mes') {
                period = 26;
              } else if (periodStr == '1 año') {
                period = 50;
              } else {
                period = 50;
              }

              // print(widget.weeks);

              if (widget.period == '1 sem' ||
                  widget.period == '1 mes' ||
                  widget.period == '3 mes') {
                // date = '${widget.dateDays![flSpot.x.toInt()].day}/${widget.dateDays![flSpot.x.toInt()].month}';
                List<DateTime> newValues = widget.dateDays!.sublist(0, period);
                Iterable<DateTime> inReverse = newValues.reversed;
                List<DateTime> valuesList = inReverse.toList();
                date =
                    '${DateFormat('dd').format(valuesList[flSpot.x.toInt()])}/${DateFormat('MM').format(valuesList[flSpot.x.toInt()])}';
              } else {
                // date = '${widget.weeks![flSpot.x.toInt()]} sem';

                Iterable<int> inReverse = widget.weeks!.reversed;

                List<int> newValues = widget.weeks!.toList().sublist(0, period);

                int index = flSpot.x.toInt();
                if (periodStr == '6 mes') {
                  index++;
                }
                inReverse = newValues.reversed;
                List<int> valuesList = inReverse.toList();
                date = '${valuesList[index]} sem';
              }
              return LineTooltipItem(
                '${date}\n${flSpot.y}\$',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            }).toList();
          },
        ),
      ),
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgetsTest,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: getData(widget.period!, widget.valuesDays!, widget.valuesWeeks!)!
              .length
              .toDouble() -
          1,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots:
              getData(widget.period!, widget.valuesDays!, widget.valuesWeeks!),
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
