import 'package:flutter/material.dart';
import 'fancy_button.dart';
import 'package:firebase_database/firebase_database.dart';
import 'PantallaEncuesta2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: Sexualidad(),
));
class Sexualidad extends StatefulWidget {
  final heroTag;
  Sexualidad({this.heroTag});
  @override
  _SexualidadState createState() => _SexualidadState();
}
class _SexualidadState extends State<Sexualidad> {
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      floatingActionButton: FancyButton(
        onPressed: () async
        {
          var datos = await FirebaseDatabase.instance.reference().child("plantilla").child("Habitosalimenticios").once();
          List preguntas = datos.value as List;
          Navigator. of(context).push(
            MaterialPageRoute(builder: (_) => PantallaEncuesta(preguntas)
            ),
          );
          print(datos);
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 20.0,
         title: Text('\nBACK                                       \n', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 19.0, color: Colors.white)),
       centerTitle: true,
        ),
   body: ListView(
      children: <Widget>[          
        Container(
          child: Column(     
              children: <Widget>[ 
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem('icons/AntesDeEleg/Subtemas/Sexualidad2.jpg'),
                        ), 
                      ],
                    ) ,
              Text('         ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
                          ),
              Text(' INFORMACIÓN   ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente',fontSize: 25),
                          ),
              ],
    ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img1.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img2.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img3.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img4.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img5.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img6.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img7.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img8.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img9.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img10.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img11.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img12.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img13.png"),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("assets/sexualidad/img14.png"),
        ),
      ],),
    );
  }
  
Widget _buildSubSistemaItem(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 0.0),
    child: InkWell(
      onTap: () { 
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[          
        Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath2,
                  child: Image(                    
                    image:AssetImage(imgPath2),
                    fit: BoxFit.cover,
                    height: 200.0,
                    width: 360.0
                  )
                ),
              ]
            )
          ),
        ]
      ),
    ),
  );
}
}