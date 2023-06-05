import 'package:flutter/material.dart';

class WidgetTitlePendapatan extends StatefulWidget {
  const WidgetTitlePendapatan({Key? key}) : super(key: key);

  @override
  _WidgetTitlePendapatanState createState() => _WidgetTitlePendapatanState();
}

class _WidgetTitlePendapatanState extends State<WidgetTitlePendapatan> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Text("Pendapatan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
        SizedBox(
          height: 15,
        ),
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color(0xff62cdff),
                  Color(0xff62cdff),
                  Color(0xff29b9fd),
                  Color(0xff14b1fc),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,

                  ),
                child : Text("Rp. 12.000.000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),),
                SizedBox(
                  height: 20,
                ),
                Text("Senin",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                Text("Tanggal 6",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
              ],),
          ),
        ],
      ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Color(0xff62cdff),
                    Color(0xff62cdff),
                    Color(0xff29b9fd),
                    Color(0xff14b1fc),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
              padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
                  child : Text("Rp. 12.000.000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Bulan",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  Text("Juni",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                ],),
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color(0xff62cdff),
                Color(0xff62cdff),
                Color(0xff29b9fd),
                Color(0xff14b1fc),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child : Text("Rp. 120.000.000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),),
              SizedBox(
                height: 20,
              ),
              Text("Tahun",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text("2023",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(
                height: 20,
              ),
            ],),
        ),
      ],
    ),
    ],
    );
  }
}
