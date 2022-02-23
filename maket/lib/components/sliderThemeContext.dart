import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maket/constants.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderThemeContext extends StatelessWidget {
  SliderThemeContext({
    @required this.initialValue,
    this.press
  });

  double initialValue;
  Function(double) press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: SfSliderTheme(
      data: SfSliderThemeData(
        activeTrackColor: kblue,
        thumbColor: Colors.white,
        inactiveTrackColor: Colors.grey[400],
      ),
        child: SfSlider(
          min: 0.0,
          max: 100.0,
          value: initialValue,
          thumbShape: _SfThumbShape(),
          onChanged: press,
        ),
      ),
    );
  }
}

class _SfThumbShape extends SfThumbShape{
  @override
  void paint(PaintingContext context, Offset center,
      { RenderBox parentBox,
        RenderBox child,
        SfSliderThemeData themeData,
        SfRangeValues currentValues,
        dynamic currentValue,
        Paint paint,
        Animation<double> enableAnimation,
        TextDirection textDirection,
        SfThumb thumb,
        Size size}) {
    final Path path = Path();

    path.moveTo(center.dx, center.dy);
    path.lineTo(center.dx + 5, center.dy - 11);
    path.lineTo(center.dx + 5, center.dy + 11);
    path.lineTo(center.dx - 5, center.dy + 11);
    path.lineTo(center.dx - 5, center.dy - 11);
    path.lineTo(center.dx + 5, center.dy - 11);

    path.close();
    context.canvas.drawPath(
        path,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeWidth = 20
          ..strokeCap = StrokeCap.square
    );
  }
}