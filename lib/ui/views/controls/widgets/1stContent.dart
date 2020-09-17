import 'package:flutter/material.dart';

class ContentsActivate extends StatelessWidget {
  const ContentsActivate({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:9.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xffC4C4C4),
                ),
              ),
              Text(
                'Activate/deactivate meter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.039,
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right:15),
                height: size.height * 0.05,
                width: size.width * 0.17,
                child: Transform.scale(
                  scale: 1.5,
                  child: Switch(
                    value: false,
                    onChanged: null,
                    inactiveTrackColor: Color(0xffC4C4C4),
                    inactiveThumbColor: Color(0xff2C3E50),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.25,
              right: size.width * 0.08),
          child: Text(
            'Remotely activate/deactivate your meter, anytime, anywhere',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0, vertical: 4.0),
          child: Divider(
            color: Colors.black,
            thickness: 1.7,
          ),
        ),
      ],
    );
  }
}
