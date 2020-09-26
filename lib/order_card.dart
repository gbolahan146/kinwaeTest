  import 'package:flutter/material.dart';

  class OrderCard extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 75,
                width: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffd3d3d3)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(children: [
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_up, color: Color(0xffd3d3d3),)),
                  Text('0', style: TextStyle(
                    fontSize: 18
                  ),),
                  InkWell(
                      onTap: (){},
                    child: Icon(Icons.keyboard_arrow_down, color: Color(0xffd3d3d3),)),
                ],),
              ),
              SizedBox(width: 20,),
              Container(
                width: 70, height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/laptop.jpg', )
                  ),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [BoxShadow(
                    blurRadius: 5, color: Colors.black, offset: Offset(0, 5)
                  )],
                ),
              ),
              SizedBox(width: 20,),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grilled Chicken", style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "\u20a6 3.0", style: TextStyle(
                      color: Colors.orangeAccent, fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 120, height: 25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("Chicken", style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x", style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("Meat", style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x", style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("Leaf", style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x", style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ), Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("Maggi", style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x", style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("Thyme", style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: () {},
                                  child: Text("x", style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
             Spacer(),
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.cancel, color: Colors.grey,))
            ],
          ),
        ),
        
      );
    }
  }