import 'package:flutter/material.dart';

class ControlContents extends StatelessWidget {
  const ControlContents({
    Key key,
    @required this.size,
    this.title,
    this.subtitle,
    this.button,
    this.divider,
  }) : super(key: key);

  final Size size;
  final String title, subtitle;
  final Widget button, divider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffC4C4C4),
                ),
                SizedBox(width: size.width * 0.02,),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.039,
                  ),
                ),
                // Container(
                //   height: size.height * 0.05,
                //   width: size.width * 0.17,
                //   child: Transform.scale(scale: 1.5, child: button),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.15, right: size.width * 0.08),
          child: Text(
            subtitle,
            style: TextStyle(color: Colors.white,),
            textAlign: TextAlign.right,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,


          ),
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
            child: divider),
      ],
    );
  }
}
