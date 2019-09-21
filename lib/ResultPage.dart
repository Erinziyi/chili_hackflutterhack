import 'package:flutter/material.dart';

import 'ChartPainter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';





class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        child: new Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFE082),
                    Color(0xFFFF8F00),
                    Color(0xFFFFEB3B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                )
              ),
            ),


            bodyScrollviewContent(context),



          ],
        ),
      ),



    );
  }

/*This is header section to handle profile image, email, name and dropdown button*/
  Widget headerSection() {
    return new Container(
      margin: const EdgeInsets.only(top:60.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[

          Container(
            margin: const EdgeInsets.only(bottom:20.0),

            child: new Column(

              children: <Widget>[
                new Text("Chili",
                  style:new TextStyle(
                    color:Colors.red,
                    fontSize:36.0,
                  ),
                ),

              ],
            ),
          ),



        ],
      ),
    );
  }


/*This is menu section to handle 6 buttons*/
  Widget menuSection(BuildContext context, int width_percent){
    return new Card(
      color: Colors.white,
      elevation: 4.0,
      child: Container(
//        margin: const EdgeInsets.only(top:10.0),
        height: 150.0,
        width: MediaQuery.of(context).size.width * (width_percent / 60),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color:Colors.deepOrangeAccent[700],
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),

        ),

        child:new Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                width: 100,
                child: Image.asset(
                  'assets/chilibig.png',
                  fit: BoxFit.contain,
                ),

              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "35%",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Grade A",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "I m The Taller",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),

            ],

          ),

        ),



      ),
    );
  }

  Widget menuSectionTwo(BuildContext context, int width_percent){
    return new Card(
      margin: const EdgeInsets.only(top:10.0),
      color: Colors.white,
      elevation: 4.0,
      child: Container(
//        margin: const EdgeInsets.only(top:10.0),
        height: 150.0,
        width: MediaQuery.of(context).size.width * (width_percent / 60),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color:Colors.deepOrangeAccent[700],
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),

        ),

        child:new Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                width: 100,
                child: Image.asset(
                  'assets/chili.png',
                  fit: BoxFit.contain,
                ),

              ),
              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "35%",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(

                  ),
                  Text(
                    "Grade B",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "I m Just Ok",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),

            ],

          ),

        ),


      ),
    );

  }


  Widget menuSectionThree(BuildContext context, int width_percent){
    return new Card(
      margin: const EdgeInsets.only(top:10.0),
      color: Colors.white,
      elevation: 4.0,
      child: Container(
//        margin: const EdgeInsets.only(top:10.0),
        height: 150.0,
        width: MediaQuery.of(context).size.width * (width_percent / 60),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color:Colors.deepOrangeAccent[700],
              width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),

        ),

        child:new Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                width: 100,
                child: Image.asset(
                  'assets/chilismall.png',
                  fit: BoxFit.contain,
                ),

              ),
              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "35%",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(

                  ),
                  Text(
                    "Grade C",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Everyone Higher Than Me",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),

            ],

          ),

        ),

      ),
    );

  }


  //content
  Widget buildInfoSection(double width) {
    return Flexible(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        alignment: Alignment.centerLeft,
        child: Container(
          width: width * .8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                child: Image.asset(
                  'assets/images/leaves.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "35%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: width * .5,
                    child: CustomPaint(
                      foregroundPainter: ChartPainter(),
                    ),
                  ),
                  Text(
                    "250 ml",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Nedd more water",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


//body Dashboard
  Widget bodyScrollviewContent(BuildContext context) {
    return new SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: new Column(
          children: <Widget>[
            headerSection(),
            menuSection(context,60),
            menuSectionTwo(context,60),
            menuSectionThree(context,60),






          ],
        )
    );
  }


}



// Resourse Button
Column buildButtonColumn(BuildContext context, assetImage,String label, String gotoActivity ){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(

        child:FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed(gotoActivity);
          },
          child: assetImage,

        ),
      ),
      Container(
        margin: const EdgeInsets.only(top:8),
        child: new Text(
          label,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              fontSize:12,
              fontFamily:'Roboto'
          ),
        ),
      ),
    ],
  );
}






