


import 'package:flutter/material.dart';

import 'package:weather_app/weatherData.dart';

class WeatherAppWidget extends StatefulWidget {
  const WeatherAppWidget({super.key});

  @override
  State<WeatherAppWidget> createState() => _WeatherAppWidgetState();
}

class _WeatherAppWidgetState extends State<WeatherAppWidget> {
  var client = WeatherData();
  var data;
  info() async{
    // var position = await GetPosition();
    data = await client.getData("51.52", "-0.11");
    return data;
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;



    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 31), 
      body: FutureBuilder(
        future: info(),
        builder: ((context, snapshot) {
          return Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  height: size.height * 0.75, // размер контейнера
                  width: size.width,
                  margin: EdgeInsets.only(right: 10, left: 10), // размер между горизонта
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff955cd1),
                        Color(0xff3fa2fa),
                      ],
                      begin: Alignment.bottomCenter, 
                      end: Alignment.topCenter,
                      stops: [0.2, 0.85],
                      ),
                  ),
                  child: Column(
                    children: [
                      Text("Талас", style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(height: 10,),
                       Text("Среда, 05 июль", style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300
                      ),),
                      SizedBox(height: 10,),
                      Image.asset("assets/images/sunny.png",
                      width: size.width * 0.3,
                      ),
                      // Image.network("https:${data?.icon}", width: size.width * 0.3,
                      // fit: BoxFit.fill,
                      // ),
                      SizedBox(height: 10,),
                       Text("Солнечно", style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),),
                         Text("15°", style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset("assets/images/shtorm.png", 
                                width: size.width * 0.2,
                                ),
                                Text("17.1 km/h", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                ),),
                                 Text("ветер", style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 15,         
                                ),),
                              ],
                          ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset("assets/images/rain.png", 
                                width: size.width * 0.2,
                                ),
                                Text("81", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                ),),
                                 Text("Влажности", style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 15,         
                                ),),
                              ],
                          ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset("assets/images/weatherdr.png", 
                                width: size.width * 0.2,
                                ),
                                Text("SE", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  // fontWeight: FontWeight.bold
                                ),),
                                 Text("направление ветра", style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 15,         
                                ),),
                              ],
                          ),
                          ),
                        ],
                      )                
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Порыв", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("32.0 kh/p", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 15,),
                     Text("Давление", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("1025.0 hpa", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("UV", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("1.0", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 15,),
                     Text("Осадков", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("0.0 mm", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Ветер", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("19.1 kh/p", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 15,),
                     Text("Обновление", style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                    ),),
                    SizedBox(height: 5,),
                    Text("2023-03-21", style: TextStyle(
                      color: Colors.green,
                      fontSize: 17,
                    ),),
                  ],
                ),
              ),
            ],
          )
        ],
      );

      }),)
    );
  }
}